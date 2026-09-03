.class public abstract Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$BaseStub;
.super Landroid/os/Binder;
.source "SamsungDeviceOAIDHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$BaseStub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 134
    :cond_0
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 138
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$Proxy;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/SamsungDeviceOAIDHelper$SamsungIDInterface$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method
