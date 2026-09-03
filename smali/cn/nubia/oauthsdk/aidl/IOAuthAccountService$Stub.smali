.class public abstract Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;
.super Landroid/os/Binder;
.source "IOAuthAccountService.java"

# interfaces
.implements Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.oauthsdk.aidl.IOAuthAccountService"

.field static final TRANSACTION_appWebSynlogin:I = 0x3

.field static final TRANSACTION_getCode:I = 0x1

.field static final TRANSACTION_getToken:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "cn.nubia.oauthsdk.aidl.IOAuthAccountService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    const-string v0, "cn.nubia.oauthsdk.aidl.IOAuthAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;
    .locals 1

    .line 249
    sget-object v0, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;)Z
    .locals 1

    .line 242
    sget-object v0, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 243
    sput-object p0, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub$Proxy;->sDefaultImpl:Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    const-string v2, "cn.nubia.oauthsdk.aidl.IOAuthAccountService"

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 59
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 110
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 119
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 120
    invoke-virtual {p0, v0, p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->appWebSynlogin(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    .line 87
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 90
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 96
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {p0, v0, p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->getToken(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v1

    .line 64
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 67
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 73
    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {p0, v0, p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v1
.end method
