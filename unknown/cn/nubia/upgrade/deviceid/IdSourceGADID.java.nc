package cn.nubia.deviceid;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;

import java.util.HashMap;

// Google advertising id source implementation
public class IdSourceGADID implements DeviceId.IdSource {
    private static final String TAG = "IdSourceGADID";

    @Override
    public boolean isReady(Context c, Uri uri) {
        if (c != null && uri != null) {
            String match = uri.getLastPathSegment();
            if ("oaid".equals(match)) {
                try {
                    // check existence of GMS vending package
                    c.getPackageManager().getPackageInfo("com.android.vending", 0);
                    return true;
                } catch (Exception e) {
                    // ignore
                }
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
                    Log.e(TAG, "Failed to get GADID " + e);
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
        if (matchOAID) {
            try {
                // must be called from worker thread
                AdvertisingIdClient.Info adInfo = AdvertisingIdClient.getAdvertisingIdInfo(c);
                String id = null;
                if (adInfo != null) {
                    id = adInfo.getId();
                    if (adInfo.isLimitAdTrackingEnabled()) {
                        // report invalid id if disabled by user
                        id = IdCodecer.INVALID_ID;
                    }
                }
                String altoaid = null;
                if (altOAID) {
                    altoaid = id;
                }
                HashMap<String, Object> columns = new HashMap<>();
                columns.put(DeviceId.KEY_GRNDID, id);
                if (altOAID && !TextUtils.isEmpty(altoaid)) {
                    columns.put(DeviceId.KEY_ALTID, altoaid);
                }
                return IdCodecer.mapToCursor(columns);
            } catch (Exception e) {
                Log.e(TAG, "Failed to get GADID " + e);
            }
        }
        return null;
    }
}
