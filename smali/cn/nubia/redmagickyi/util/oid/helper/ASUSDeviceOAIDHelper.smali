.class public Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "ASUSDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface;
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 4

    .line 34
    const-string v0, "com.asus.msa.SupplementaryDID"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    const-string v2, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :try_start_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    .line 50
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;-><init>(Landroid/os/IBinder;)V

    .line 51
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;->getID()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper$ASUSIDInterface$ASUSID;->isSupport()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1, p0, v0}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method
