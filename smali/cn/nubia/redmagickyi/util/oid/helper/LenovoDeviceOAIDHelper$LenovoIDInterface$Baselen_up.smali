.class public abstract Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up;
.super Landroid/os/Binder;
.source "LenovoDeviceOAIDHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Baselen_up"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up$len_down;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static getHelper(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    instance-of v1, v0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;

    if-nez v1, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    check-cast v0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;

    return-object v0

    .line 239
    :cond_2
    :goto_0
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up$len_down;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up$len_down;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    const-string v1, "com.zui.deviceidservice.IDeviceidInterface"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 226
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 220
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 214
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 208
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up;->c()Z

    move-result p0

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 202
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up;->b()Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 196
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up;->a()Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
