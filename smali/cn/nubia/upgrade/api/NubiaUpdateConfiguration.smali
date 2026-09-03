.class public Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceIdByIMEIUnderQ:Z = true


# instance fields
.field private allowMobileNetwork:Z

.field private appName:Ljava/lang/String;

.field private downloadRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private iconId:I

.field private installRunMode:Lcn/nubia/upgrade/api/RunMode;

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadStorageLimit:J

.field private mNotificationContent:Ljava/lang/String;

.field private mNotificationTitle:Ljava/lang/String;

.field private mNotificationUpdateOffset:J

.field private mSilentDownload:Z

.field private mSilentInstall:Z

.field private showNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 385
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 386
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    const/4 v1, -0x1

    .line 388
    iput v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 389
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    const-string v1, ""

    .line 391
    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 394
    iput-wide v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    const-wide/16 v1, 0x3e8

    .line 395
    iput-wide v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p0

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    sput-boolean v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->deviceIdByIMEIUnderQ:Z

    return-void
.end method

.method private constructor <init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 4
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 5
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 8
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    const-wide/16 v0, 0x3e8

    .line 14
    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 369
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    .line 370
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    .line 371
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    .line 372
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$400(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    .line 373
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$500(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    .line 374
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$600(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    .line 375
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$700(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$800(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    .line 377
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$900(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    .line 378
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1000(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    .line 379
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1100(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    .line 380
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1200(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->downloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 381
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1300(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/RunMode;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->installRunMode:Lcn/nubia/upgrade/api/RunMode;

    .line 382
    invoke-static {p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->access$1400(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Z

    move-result p0

    sput-boolean p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->deviceIdByIMEIUnderQ:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadRunMode()Lcn/nubia/upgrade/api/RunMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->downloadRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object p0
.end method

.method public getDownloadStorageLimit()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    return-wide v0
.end method

.method public getIconId()I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    return p0
.end method

.method public getInstallRunMode()Lcn/nubia/upgrade/api/RunMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->installRunMode:Lcn/nubia/upgrade/api/RunMode;

    return-object p0
.end method

.method public getNotificationContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationUpdateOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    return-wide v0
.end method

.method public isAllowMobileNetwork()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    return p0
.end method

.method public isDeviceIdByIMEIUnderQ()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->deviceIdByIMEIUnderQ:Z

    return p0
.end method

.method public isShowNotification()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    return p0
.end method

.method public isSilentDownload()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    return p0
.end method

.method public isSilentInstall()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    return p0
.end method

.method public setSilentDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    return-void
.end method

.method public setSilentInstall(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-boolean p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mSilentInstall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-boolean p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->showNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->iconId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->allowMobileNetwork:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mDownloadStorageLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->mNotificationUpdateOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    sget-boolean p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->deviceIdByIMEIUnderQ:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
