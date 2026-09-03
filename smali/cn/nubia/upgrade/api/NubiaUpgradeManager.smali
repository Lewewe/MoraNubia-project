.class public Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"


# static fields
.field private static final SILENT_DOWNLOAD:I = 0x1

.field private static final SILENT_UPGRADE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NubiaUpgradeManager"

.field private static sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# instance fields
.field private defaultDownloadPath:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownLoadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/upgrade/http/IDownLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadProxy:Lcn/nubia/upgrade/service/a$a;

.field private mDownloadRequest:Lcn/nubia/upgrade/http/a;

.field private mRequestManager:Lcn/nubia/upgrade/http/d;

.field private mSecretKey:Ljava/lang/String;

.field private mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private mVersionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 57
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/a$a;

    .line 58
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    .line 60
    new-instance p2, Lcn/nubia/upgrade/http/d;

    invoke-direct {p2}, Lcn/nubia/upgrade/http/d;-><init>()V

    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/d;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/upgrade/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 63
    new-instance p1, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    const-string p3, "Upgrade"

    .line 65
    invoke-virtual {p1, p3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 66
    invoke-virtual {p1, p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 67
    invoke-virtual {p1, p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 68
    invoke-virtual {p1, p2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    const-wide/16 p2, 0x3e8

    .line 69
    invoke-virtual {p1, p2, p3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 70
    invoke-virtual {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/a;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 2

    .line 1
    const-class v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 5
    :cond_0
    sget-object p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isUpgrading()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/a;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/upgrade/http/a;->h()Lcn/nubia/upgrade/http/a$b;

    move-result-object p0

    .line 5
    sget-object v1, Lcn/nubia/upgrade/http/a$b;->a:Lcn/nubia/upgrade/http/a$b;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/service/a$a;I)V
    .locals 4

    if-eqz p2, :cond_4

    .line 40
    invoke-virtual {p2}, Lcn/nubia/upgrade/http/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p2}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcn/nubia/upgrade/http/a;->e(Ljava/lang/String;)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/a;

    if-nez v0, :cond_3

    .line 56
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/a;

    .line 57
    sget-object v0, Lcn/nubia/upgrade/http/a$b;->a:Lcn/nubia/upgrade/http/a$b;

    iput-object v0, p2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 61
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 68
    invoke-virtual {p2, v0, v1}, Lcn/nubia/upgrade/http/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ConfigurationData"

    .line 74
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "downloadRequest"

    .line 75
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 77
    const-string p2, "downLoadBinderProxy"

    .line 79
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    const-string p3, "authid"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    const-string p3, "authkey"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "cmd"

    .line 116
    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-static {p1, v0, p0}, Lcn/nubia/upgrade/service/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    return-void

    :cond_4
    :goto_0
    :try_start_0
    const-string p1, "NubiaUpgradeManager"

    const-string p2, "cancel download, because download url is empty."

    .line 121
    invoke-static {p1, p2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/a$a;

    const/16 p1, 0x3eb

    invoke-interface {p0, p1}, Lcn/nubia/upgrade/service/a;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public debug(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/nubia/upgrade/constants/a;->a(Z)V

    .line 2
    invoke-static {p1}, Lcn/nubia/upgrade/c/e;->a(Z)V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/upgrade/c/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSDKVersionInfo()Ljava/lang/String;
    .locals 0

    const-string p0, "versionName:V1.5.8, versionCode:1133"

    return-object p0
.end method

.method public getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getSDKVersionInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaUpgradeManager"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/upgrade/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/d;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/nubia/upgrade/http/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    return-void
.end method

.method public install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "NubiaUpgradeManager"

    const-string p1, "fail to install!!! because versionData is null. "

    .line 6
    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    new-instance v0, Lcn/nubia/upgrade/http/a;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/a;-><init>()V

    .line 10
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/http/a;->a(J)V

    .line 12
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->b(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    :cond_2
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 18
    :cond_3
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->e(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->f(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->g(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->d(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 24
    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v1

    .line 25
    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/http/a;->b(J)V

    .line 27
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    .line 31
    invoke-virtual {v0, p2}, Lcn/nubia/upgrade/http/a;->a(Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p2, 0x0

    .line 32
    invoke-virtual {v0, p2}, Lcn/nubia/upgrade/http/a;->a(Z)V

    .line 37
    :goto_1
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/a$a;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/service/a$a;I)V

    return-void
.end method

.method public isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 6
    :cond_1
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-static {p0}, Lcn/nubia/upgrade/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public pauseDownload()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isUpgrading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "command_pause"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NubiaUpgradeManager"

    const-string v2, "pause downloading."

    .line 4
    invoke-static {v1, v2}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    goto :goto_0

    :cond_0
    const-string p0, "NubiaUpgradeManager"

    const-string p1, "configuration is null, cancel setup."

    .line 3
    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p0, "NubiaUpgradeManager"

    const-string p1, "cancel download, because versionData is null."

    .line 1
    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcn/nubia/upgrade/http/a;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/a;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/http/a;->a(J)V

    .line 9
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 13
    :cond_2
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->e(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->f(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->g(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->c(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->d(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/http/a;->a(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->a(Z)V

    .line 26
    :goto_1
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcn/nubia/upgrade/http/a;->b(J)V

    .line 28
    invoke-virtual {p0, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    :try_start_0
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v0}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-interface {p0, p1, v2}, Lcn/nubia/upgrade/service/a;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 39
    :cond_5
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/a$a;

    invoke-direct {p0, p1, v0, p2, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/service/a$a;I)V

    :goto_2
    return-void
.end method
