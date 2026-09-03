package cn.nubia.deviceid;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import com.bun.miitmdid.core.ErrorCode;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.supplier.IIdentifierListener;
import com.bun.supplier.IdSupplier;

import java.util.HashMap;

// MSA id source implementation
public class IdSourceMSA implements DeviceId.IdSource {
    private static final String TAG = "IdSourceMSA";

    // cached verified supplier
    private IdSupplier mSupplier;
    // one single listener for one source instance
    private final IIdentifierListener mIdSupplierListener = new IdSupplierListener();

    @Override
    public boolean isReady(Context c, Uri uri) {
        if (c != null && uri != null) {
            String match = uri.getLastPathSegment();
            if ("oaid".equals(match) || "vaid".equals(match) || "aaid".equals(match)) {
                // only verified supplier may be cached
                IdSupplier supplier = ensureIdSupplier(c);
                return supplier != null;
            }
        }
        return false;
    }

    @Override
    public Cursor obtainIds(Context c, Uri uri) {
        if (c != null && uri != null) {
            Cursor cursor = null;
            final int RETRY_COUNT = 3;
            final long RETRY_INTERVAL_MS = 10;
            for (int n = 0; n < RETRY_COUNT; n++) {
                try {
                    cursor = getIds(c, uri);
                } catch (Exception e) {
                    Log.e(TAG, "Failed to get MSA ids " + e);
                }
                if (cursor != null) {
                    // stop retry if result available
                    return cursor;
                }
                // do retry on all error cases of no result
                if (n < RETRY_COUNT - 1) {
                    try {
                        Thread.sleep(RETRY_INTERVAL_MS);
                    } catch (Exception e) {
                        // ignore
                    }
                }
            }
        }
        return null;
    }

    private Cursor getIds(Context c, Uri uri) {
        String match = uri.getLastPathSegment();
        boolean altOAID = uri.getBooleanQueryParameter("altoaid", false);
        boolean matchOAID = "oaid".equals(match);
        boolean matchVAID = "vaid".equals(match);
        boolean matchAAID = "aaid".equals(match);
        if (matchOAID || matchVAID || matchAAID) {
            IdSupplier supplier = ensureIdSupplier(c);
            if (supplier != null) {
                String id = null;
                String altoaid = null;
                if (matchOAID) {
                    id = supplier.getOAID();
                } else if (matchVAID) {
                    id = supplier.getVAID();
                } else {
                    id = supplier.getAAID();
                }
                if (altOAID) {
                    if (matchOAID) {
                        altoaid = id;
                    } else {
                        altoaid = supplier.getOAID();
                    }
                }
                HashMap<String, Object> columns = new HashMap<>();
                columns.put(DeviceId.KEY_GRNDID, id);
                if (altOAID && !TextUtils.isEmpty(altoaid)) {
                    columns.put(DeviceId.KEY_ALTID, altoaid);
                }
                return IdCodecer.mapToCursor(columns);
            }
        }
        return null;
    }

    private IdSupplier ensureIdSupplier(Context c) {
        synchronized (this) {
            // if not yet or failed to setup supplier, keep retry on every invoking
            if (mSupplier == null) {
                // can MdidSdk be init'ed multi-times along with this instance creation ?
                // but if init only once for this process, how about if the connection breaks ?
                if (initMdidSdk(c)) {
                    // wait with timeout for IdSupplier setup by callback
                    // if supplier can't get setup before timeout, retry init at next round
                    // if interrupted by some reason, give up waiting this time (but supplier
                    // may still get setup some time later)
                    // don't distinguish between invalid supplier and no-setup-yet/failures (so
                    // there may be unnecessary wait if listener is called directly but supplier
                    // is invalid)
                    if (mSupplier == null) {
                        try {
                            this.wait(1000);
                        } catch (Exception e) {
                            // interrupted, ignore
                        }
                    }
                }
            }
            return mSupplier;
        }
        // before timeout, permit no retry (just wait)
    }

    // init & register listener; return true if init succeeds
    // suppose listener gets called from the calling thread or separate thread, but not through
    // message/event in the same thread. if so, need to create a dedicated thread to setup
    // supplier instance
    private boolean initMdidSdk(Context c) {
        if (c != null) {
            try {
                // 通过反射调用，解决android 9以后的类加载升级，导至找不到so中的方法
                int nres = MdidSdkHelper.InitSdk(c, true, mIdSupplierListener);
                switch (nres) {
                    case ErrorCode.INIT_ERROR_RESULT_DELAY:
                        // 获取接口是异步的，结果会在回调中返回，回调执行的回调可能在工作线程
                        return true;

                    case ErrorCode.INIT_ERROR_DEVICE_NOSUPPORT:
                        // 不支持的设备
                        Log.e(TAG, "failed to init MdidSdk - don't support this device");
                        break;

                    case ErrorCode.INIT_ERROR_LOAD_CONFIGFILE:
                        // 加载配置文件出错
                        Log.e(TAG, "failed to init MdidSdk - failed to load supplierconfig");
                        break;

                    case ErrorCode.INIT_ERROR_MANUFACTURER_NOSUPPORT:
                        // 不支持的设备厂商
                        Log.e(TAG, "failed to init MdidSdk - don't support this device vendor");
                        break;

                    case ErrorCode.INIT_HELPER_CALL_ERROR:
                        // 反射调用出错
                        Log.e(TAG, "failed to init MdidSdk - failure in reflecting");
                        break;

                    default:
                        Log.e(TAG, "failed to init MdidSdk - unknown error " + nres);
                        break;
                }
            } catch (Exception e) {
                Log.e(TAG, "failed to init MdidSdk - exception " + e);
            }
        }
        return false;
    }

    private class IdSupplierListener implements IIdentifierListener {
        @Override
        public void OnSupport(boolean isSupport, IdSupplier supplier) {
            IdSupplier validSupplier = null;
            // check validity of the provided supplier
            try {
                if (isSupport && supplier != null && supplier.isSupported()) {
                    validSupplier = supplier;
                }
            } catch (Exception e) {
                Log.e(TAG, "failed to check supplier validity " + e);
            }
            // always update supplier, even if invalid
            synchronized (IdSourceMSA.this) {
                mSupplier = validSupplier;
                IdSourceMSA.this.notifyAll();
            }
        }
    }
}
