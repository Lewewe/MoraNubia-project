.class public abstract Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub;
.super Landroid/os/Binder;
.source "IGetSettingAccountInfoListener.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.accountsdk.aidl.IGetSettingAccountInfoListener"

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onException:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "cn.nubia.accountsdk.aidl.IGetSettingAccountInfoListener"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    const-string v0, "cn.nubia.accountsdk.aidl.IGetSettingAccountInfoListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;
    .locals 1

    .line 162
    sget-object v0, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub$Proxy;->sDefaultImpl:Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;)Z
    .locals 1

    .line 155
    sget-object v0, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub$Proxy;->sDefaultImpl:Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 156
    sput-object p0, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub$Proxy;->sDefaultImpl:Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    const-string v1, "cn.nubia.accountsdk.aidl.IGetSettingAccountInfoListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 75
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub;->onException(ILjava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    sget-object p1, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/accountsdk/aidl/SettingAccountInfo;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/IGetSettingAccountInfoListener$Stub;->onComplete(Lcn/nubia/accountsdk/aidl/SettingAccountInfo;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
