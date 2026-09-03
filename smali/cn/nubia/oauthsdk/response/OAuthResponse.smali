.class public Lcn/nubia/oauthsdk/response/OAuthResponse;
.super Ljava/lang/Object;
.source "OAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcn/nubia/oauthsdk/response/OAuthCallBack;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/oauthsdk/response/OAuthResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcn/nubia/oauthsdk/response/OAuthResponse$1;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/response/OAuthResponse$1;-><init>()V

    sput-object v0, Lcn/nubia/oauthsdk/response/OAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/oauthsdk/IOAuthCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/IOAuthCallBack;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/oauthsdk/response/OAuthResponse$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOAuthCallBack()Lcn/nubia/oauthsdk/IOAuthCallBack;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    return-object p0
.end method

.method public onCode(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    :try_start_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onCode(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 57
    :try_start_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 0

    .line 68
    :try_start_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onToken(Landroid/os/Bundle;)V
    .locals 0

    .line 99
    :try_start_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onToken(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    .locals 0

    .line 79
    :try_start_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOAuthCallBack(Lcn/nubia/oauthsdk/IOAuthCallBack;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/oauthsdk/response/OAuthResponse;->mCallBack:Lcn/nubia/oauthsdk/IOAuthCallBack;

    invoke-interface {p0}, Lcn/nubia/oauthsdk/IOAuthCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
