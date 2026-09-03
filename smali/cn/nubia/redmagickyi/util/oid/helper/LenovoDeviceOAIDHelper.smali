.class public Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;
.super Ljava/lang/Object;
.source "LenovoDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;
    }
.end annotation


# instance fields
.field lenovoIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;

.field private mContext:Landroid/content/Context;

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$1;-><init>(Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIdRun(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 4

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->lenovoIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;->a()Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->lenovoIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;->c()Z

    move-result p0

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
