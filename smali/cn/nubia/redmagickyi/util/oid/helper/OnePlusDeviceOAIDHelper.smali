.class public Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "OnePlusDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public oaid:Ljava/lang/String;

.field onePlusIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

.field serviceConnection:Landroid/content/ServiceConnection;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "OUID"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->oaid:Ljava/lang/String;

    .line 106
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSupportOneplus()Z
    .locals 5

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 123
    const-string v1, "com.heytap.openid"

    .line 125
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const-wide/16 v3, 0x1

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private realoGetIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->sign:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 83
    array-length v3, v2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 84
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 86
    :try_start_1
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_1
    :goto_2
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->sign:Ljava/lang/String;

    .line 102
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->onePlusIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    check-cast v1, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup$down;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->sign:Ljava/lang/String;

    invoke-virtual {v1, v0, p0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup$down;->getSerID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)Ljava/lang/String;
    .locals 4

    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    .line 51
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->onePlusIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "OUID"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->realoGetIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->isSupportOneplus()Z

    move-result p0

    if-eqz p1, :cond_1

    .line 62
    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot run on MainThread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
