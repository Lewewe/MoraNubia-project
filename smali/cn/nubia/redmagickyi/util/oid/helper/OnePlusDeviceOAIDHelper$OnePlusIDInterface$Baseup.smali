.class public abstract Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup;
.super Landroid/os/Binder;
.source "OnePlusDeviceOAIDHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Baseup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup$down;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static genInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    instance-of v1, v0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    if-nez v1, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    check-cast v0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    return-object v0

    .line 186
    :cond_2
    :goto_0
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup$down;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup$down;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
