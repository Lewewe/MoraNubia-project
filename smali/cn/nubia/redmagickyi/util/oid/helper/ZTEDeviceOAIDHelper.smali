.class public Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "ZTEDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface;
    }
.end annotation


# instance fields
.field idPkgName:Ljava/lang/String;

.field public final linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "com.mdid.msa"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->idPkgName:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 90
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkService()I
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->idPkgName:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private startMsaklServer(Ljava/lang/String;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->checkService()I

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->idPkgName:Ljava/lang/String;

    const-string v2, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "com.bun.msa.action.start.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "com.bun.msa.param.pkgname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :try_start_0
    const-string p1, "com.bun.msa.param.runinset"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->idPkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->startMsaklServer(Ljava/lang/String;)V

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v2, "com.mdid.msa"

    const-string v3, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "com.bun.msa.action.bindto.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "com.bun.msa.param.pkgname"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 73
    new-instance v1, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface$Baseup$down;-><init>(Landroid/os/IBinder;)V

    .line 74
    invoke-interface {v1}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-interface {v1}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$ZTEIDInterface;->isSupported()Z

    move-result v1

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1, v0, v1}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 82
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    throw p1

    :cond_1
    :goto_3
    return-void
.end method
