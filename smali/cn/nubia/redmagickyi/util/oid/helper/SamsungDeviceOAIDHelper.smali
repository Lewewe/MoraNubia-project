.class public Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "SamsungDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface;
    }
.end annotation


# instance fields
.field public final linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSumsungID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 4

    .line 32
    const-string v0, "com.samsung.android.deviceidservice"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 39
    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 44
    new-instance v1, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$Proxy;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 46
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$Proxy;->getID()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->isSupport()Z

    move-result p0

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public isSupport()Z
    .locals 2

    const/4 v0, 0x0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.deviceidservice"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
