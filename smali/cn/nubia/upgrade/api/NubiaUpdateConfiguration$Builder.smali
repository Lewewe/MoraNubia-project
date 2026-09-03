.class public Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowMobileNetwork:Z

.field private mAppName:Ljava/lang/String;

.field private mDeviceIdByIMEIUnderQ:Z

.field private mDownLoadStorageLimit:J

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private mIconId:I

.field private mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;

.field private mNotificationUpdateOffset:J

.field private mShowNotification:Z

.field private mSilentDownload:Z

.field private mSilentInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentInstall:Z

    .line 4
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentDownload:Z

    .line 5
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 8
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    const-wide/16 v0, 0x3e8

    .line 15
    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDeviceIdByIMEIUnderQ:Z

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentInstall:Z

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDeviceIdByIMEIUnderQ:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentDownload:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    return-wide v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 2
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;)V

    return-object v0
.end method

.method public setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceIdByIMEIUnderQ(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDeviceIdByIMEIUnderQ:Z

    return-object p0
.end method

.method public setDownloadPath(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadRunMode(Lcn/nubia/upgrade/api/RunMode;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    return-object p0
.end method

.method public setInstallRunMode(Lcn/nubia/upgrade/api/RunMode;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mInstallRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object p0
.end method

.method public setNotificationContent(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    return-object p0
.end method

.method public setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    return-object p0
.end method

.method public setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentDownload:Z

    return-object p0
.end method

.method public setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSilentInstall:Z

    return-object p0
.end method

.method public setStorageLimit(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    return-object p0
.end method
