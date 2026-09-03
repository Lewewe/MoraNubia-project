.class public abstract Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;
.super Landroid/os/Binder;
.source "IOAuthCallBack.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IOAuthCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/IOAuthCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.oauthsdk.IOAuthCallBack"

.field static final TRANSACTION_onCode:I = 0x4

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onSuccess:I = 0x2

.field static final TRANSACTION_onToken:I = 0x5

.field static final TRANSACTION_onUserInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/IOAuthCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    const-string v0, "cn.nubia.oauthsdk.IOAuthCallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcn/nubia/oauthsdk/IOAuthCallBack;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/oauthsdk/IOAuthCallBack;
    .locals 1

    .line 299
    sget-object v0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->sDefaultImpl:Lcn/nubia/oauthsdk/IOAuthCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/oauthsdk/IOAuthCallBack;)Z
    .locals 1

    .line 292
    sget-object v0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->sDefaultImpl:Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 293
    sput-object p0, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub$Proxy;->sDefaultImpl:Lcn/nubia/oauthsdk/IOAuthCallBack;

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

    .line 61
    const-string v2, "cn.nubia.oauthsdk.IOAuthCallBack"

    if-eq p1, v1, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 65
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 126
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 134
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->onToken(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 120
    :cond_4
    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->onCode(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 101
    sget-object p1, Lcn/nubia/oauthsdk/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/oauthsdk/UserInfo;

    .line 106
    :cond_6
    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 84
    :cond_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 87
    sget-object p1, Lcn/nubia/oauthsdk/OAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/oauthsdk/OAuthToken;

    .line 92
    :cond_8
    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 70
    :cond_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 73
    sget-object p1, Lcn/nubia/oauthsdk/OAuthError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/oauthsdk/OAuthError;

    .line 78
    :cond_a
    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
