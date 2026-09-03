.class public Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;
.super Ljava/lang/Object;
.source "AppUpgradeManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;,
        Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;,
        Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;
    }
.end annotation


# static fields
.field private static final MSG_DOWNLOADING:I = 0x1

.field private static final MSG_DOWNLOAD_FAILED:I = 0x3

.field private static final MSG_DOWNLOAD_SUCCESS:I = 0x2

.field private static final TASK_ID:Ljava/lang/String; = "app"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mGetVersionListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsDownloadFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOnDownloadListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

.field private mOnGetNewVersionListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

.field private mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

.field private mUpgradeConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field private mVersionData:Lcn/nubia/upgrade/model/VersionData;

.field private networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsDownloadFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 242
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;-><init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 276
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;-><init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;-><init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mGetVersionListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppUpgradeID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppUpgradeKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 55
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->initUpgradeConfiguration()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->initDownloadTask()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mOnGetNewVersionListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mOnDownloadListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsDownloadFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private initDownloadTask()V
    .locals 6

    .line 93
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object v0

    .line 94
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;-><init>()V

    .line 95
    const-string v2, "app"

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    .line 96
    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setUrl(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    sget-object v3, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    .line 97
    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setDownloadDirPath(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    .line 98
    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setMd5sum(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setAppendId(Z)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 100
    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setIsProgressAppend(Z)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->setListener(Lcn/nubia/redmagickyi/network/okhttp/download/DownloadTaskListener;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$Builder;->build()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v1

    .line 103
    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    if-nez v4, :cond_0

    .line 104
    iput-object v1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->cancel(Ljava/lang/String;Z)V

    .line 108
    iput-object v1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    :cond_2
    :goto_0
    return-void
.end method

.method private initUpgradeConfiguration()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 85
    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setStorageLimit(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    .line 86
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setDownloadPath(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    return-void
.end method

.method private registReceiver()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 260
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private unregistReceiver()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsReceiverRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->networkReceiver:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    const-string p0, "app"

    const-string v0, "AppUpgradeManager, unregistReceiver failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->release()V

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object p0

    const-string v0, "app"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->cancel(Ljava/lang/String;Z)V

    return-void
.end method

.method public getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method public getNewVersion(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mOnGetNewVersionListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mGetVersionListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    return-void
.end method

.method public getVersionData()Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p0
.end method

.method public isDownloadFinished()Z
    .locals 0

    .line 186
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mIsDownloadFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onCancel(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
    .locals 1

    .line 199
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 200
    iput v0, p1, Landroid/os/Message;->what:I

    .line 201
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized onDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V
    .locals 0

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 180
    iput p2, p1, Landroid/os/Message;->what:I

    .line 181
    iput p6, p1, Landroid/os/Message;->arg1:I

    .line 182
    iget-object p2, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onError(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mOnDownloadListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mOnDownloadListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;JJI)V
    .locals 0

    return-void
.end method

.method public onPrepare(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
    .locals 2

    .line 165
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 166
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-eqz p0, :cond_0

    .line 172
    array-length v0, p0

    if-ge p2, v0, :cond_0

    .line 173
    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 232
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->unregistReceiver()V

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public startDownload(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mOnDownloadListener:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    .line 65
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->registReceiver()V

    .line 66
    const-class p1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    monitor-enter p1

    .line 67
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mTask:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->addDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    .line 69
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startInstall()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    return-void
.end method
