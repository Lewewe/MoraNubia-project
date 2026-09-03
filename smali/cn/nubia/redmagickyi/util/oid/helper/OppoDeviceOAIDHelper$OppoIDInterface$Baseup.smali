.class public abstract Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface$Baseup;
.super Landroid/os/Binder;
.source "OppoDeviceOAIDHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Baseup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface$Baseup$down;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static genInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 184
    instance-of v1, v0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;

    if-nez v1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    check-cast v0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface;

    return-object v0

    .line 185
    :cond_2
    :goto_0
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface$Baseup$down;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper$OppoIDInterface$Baseup$down;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
