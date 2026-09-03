.class public Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "HWDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$HWIDInterface;
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getHWID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 4

    .line 33
    const-string v0, "com.huawei.hwid"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 45
    new-instance v1, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$HWIDInterface$HWID;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$HWIDInterface$HWID;-><init>(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 46
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$HWIDInterface$HWID;->getIDs()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$HWIDInterface$HWID;->getBoos()Z

    .line 48
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper$HWIDInterface$HWID;->getPPS_oaid()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->isSupport()Z

    move-result v2

    if-eqz p1, :cond_0

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\npps_oadi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_0
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    throw p1

    :cond_1
    :goto_3
    return-void
.end method

.method public isSupport()Z
    .locals 4

    .line 82
    const-string v0, "com.huawei.hwid"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    return v1
.end method
