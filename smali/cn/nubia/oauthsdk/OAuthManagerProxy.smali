.class public Lcn/nubia/oauthsdk/OAuthManagerProxy;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IOAuthManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;,
        Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;,
        Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FROM_ROM_NUBIA:I = 0x0

.field public static final ACCOUNT_FROM_ROM_ZTE:I = 0x1

.field private static mAccountFromRom:I


# instance fields
.field private mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

.field private mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

.field private mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

.field private mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

.field private mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 64
    new-instance p1, Lcn/nubia/oauthsdk/UserManagerProxy;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/UserManagerProxy;-><init>()V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo;Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 69
    new-instance p1, Lcn/nubia/oauthsdk/UserManagerProxy;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/UserManagerProxy;-><init>()V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

    if-eqz p2, :cond_2

    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInNubiaRom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 73
    sput p1, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInZteRom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 75
    sput p1, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    .line 77
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 78
    new-instance p1, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    iget-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBacSuccessFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/oauthsdk/OAuthManagerProxy;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->destroy()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handleOutBundleFuse(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handleOutBundle(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    return-void
.end method

.method private checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 710
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 715
    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    return-void

    .line 713
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "redirect_uri is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 711
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client_id is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 709
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "oauthinfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->release()V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1030
    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    :cond_1
    return-void
.end method

.method private getSsoauthCodeNubia(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 656
    const-string v0, "getSsoauthCodeNubia "

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 657
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 658
    new-instance v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {v1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 662
    const-string v0, "getSsoauthCodeNubiaFuce getSsoauthCodeNubia start:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 663
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$11;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    .line 691
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method private getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 1

    .line 191
    const-string v0, "getSsoauthCodeNubiaFuce "

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$3;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-direct {p0, v0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getSsoauthCodeNubia(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method private getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 151
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$2;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-virtual {p2, v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->getSystemAccountInfoNotBind(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 182
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    new-instance v0, Lcn/nubia/oauthsdk/OAuthError;

    const-string v1, "json exception"

    .line 184
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1, v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method private goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V
    .locals 2

    .line 1016
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1017
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1018
    const-string v1, "oauthinfo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1019
    const-string p2, "oauth_response"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1020
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1021
    const-class p2, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1022
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleOutBundle(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 7

    .line 922
    const-string v0, "code"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string v2, "oauth_access_token"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 929
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 930
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 931
    const-string v3, "access_token"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scope"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/oauthsdk/api/NetApis;->getCode(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object v2

    .line 936
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v3

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response_code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/16 p1, 0xbbe

    if-ne v3, p1, :cond_1

    .line 939
    invoke-direct {p0, p3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->jumpToLoginActivity(Landroid/content/Context;)V

    return-void

    :cond_1
    if-nez v3, :cond_3

    .line 942
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 948
    :cond_2
    :try_start_0
    invoke-virtual {v2, v0}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 949
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 950
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-virtual {v2, v4}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 952
    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance p1, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p1, p3}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 954
    invoke-direct {p0, p2, p1, v1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 956
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 957
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "json exception"

    invoke-direct {p1, p3, p3}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void

    .line 943
    :cond_3
    :goto_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 925
    :cond_4
    :goto_2
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "3010"

    const-string v0, "login_cancel"

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method private handleOutBundleFuse(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 7

    .line 613
    const-string v0, "code"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string v2, "oauth_access_token"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 620
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 621
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 622
    const-string v3, "access_token"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scope"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/oauthsdk/api/NetApis;->getCode(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v3

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response_code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/16 p1, 0xbbe

    if-ne v3, p1, :cond_1

    .line 630
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    :cond_1
    if-nez v3, :cond_3

    .line 634
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 640
    :cond_2
    :try_start_0
    invoke-virtual {v2, v0}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 641
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 642
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual {v2, v4}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 644
    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance p1, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p1, p3}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 646
    invoke-direct {p0, p2, p1, v1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 648
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "json exception"

    invoke-direct {p1, p3, p3}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void

    .line 635
    :cond_3
    :goto_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 616
    :cond_4
    :goto_2
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "3010"

    const-string v0, "login_cancel"

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, p2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method private handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1

    .line 988
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    .line 994
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlerCallBacSuccessFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 1

    .line 977
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    .line 984
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1

    .line 998
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;

    invoke-direct {v0, p0, p2, p3, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 1012
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private jumpToLoginActivity(Landroid/content/Context;)V
    .locals 2

    .line 969
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p0, p1, v1, v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method private requestOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 721
    const-string v0, "ssOAuthCodeFuse start requestOAuth:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 722
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 723
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 731
    new-instance p1, Lcn/nubia/oauthsdk/OAuthManagerProxy$12;

    invoke-direct {p1, p0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$12;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;)V

    .line 759
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method private requestWebssOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 763
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 764
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 765
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result p1

    .line 766
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isAccountLogin(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 775
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-static {p1}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 776
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p0, p2, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void

    .line 779
    :cond_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;

    invoke-direct {p1, p0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;)V

    .line 805
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void

    .line 768
    :cond_2
    :goto_0
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "2000"

    const-string v0, "app no support"

    invoke-direct {p1, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method private startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V
    .locals 4

    .line 1042
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1043
    const-string v0, "cn.nubia.account.OAUTH_ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packagename"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    const-string v0, "SDK_VERSION"

    const-string v2, "1.0.3"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 1047
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1051
    :cond_0
    const-string p3, "cn.nubia.accounts"

    const-string v0, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    const-string p3, "oauth_response"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V
    .locals 2

    .line 1058
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 1059
    invoke-static {p3}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportWebSynLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    const-string p0, "app no support"

    invoke-interface {p2, p0}, Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 1063
    :cond_0
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;

    invoke-direct {v0, p0, p1, p3, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Ljava/lang/String;Landroid/app/Activity;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;)V

    .line 1088
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method public getAccountApkComeFrom()I
    .locals 0

    .line 609
    sget p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    return p0
.end method

.method public getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 2

    .line 216
    const-string v0, "getOAuthInfoBind"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 218
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    const-string v0, "getOAuthInfoBind ACCOUNT_FROM_ROM_ZTE:1"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 225
    sget v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;

    invoke-direct {v0, p0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-direct {p0, v0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public getOAuthInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 2

    .line 300
    const-string v0, "getOAuthInfoNotBind"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 302
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoNotBind mAccountFromRom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 306
    sget v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 307
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 318
    :cond_0
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 319
    new-instance v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {v1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 321
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    .line 322
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    .line 323
    const-string p2, "getOAuthUserInfo getSsoauthCodeNubia start:"

    invoke-static {p2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 324
    new-instance p2, Lcn/nubia/oauthsdk/OAuthManagerProxy$5;

    invoke-direct {p2, p0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$5;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 356
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method public getOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    if-nez p2, :cond_0

    .line 447
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 451
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 453
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthUserInfoFuse mAccountFromRom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 454
    sget v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 455
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_2

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 458
    :cond_2
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 459
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 460
    new-instance p1, Lcn/nubia/oauthsdk/OAuthManagerProxy$8;

    invoke-direct {p1, p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy$8;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;)V

    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 0

    .line 1036
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

    if-eqz p0, :cond_0

    .line 1037
    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/IUserInfoManager;->getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V

    :cond_0
    return-void
.end method

.method public jumptoCertificationActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/oauthsdk/utils/CetificationLackingException;
        }
    .end annotation

    .line 697
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 698
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.details.certification.CertificationActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v0, "cn.nubia.account.CERTIFICATION_ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2711

    .line 701
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 703
    :catch_0
    new-instance p0, Lcn/nubia/oauthsdk/utils/CetificationLackingException;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/utils/CetificationLackingException;-><init>()V

    throw p0
.end method

.method public ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {p0, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 110
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 111
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->requestOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method public ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
    .locals 2

    if-nez p2, :cond_0

    .line 118
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 124
    :cond_1
    sget v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 125
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez p1, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 128
    :cond_2
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p2}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->loginOrRegister(Landroid/app/Activity;)V

    goto :goto_0

    .line 130
    :cond_3
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$1;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-virtual {p0, v0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 364
    :cond_0
    const-string v0, " start ssOAuthUserInfo:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 366
    new-instance v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {v1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 368
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result v0

    .line 369
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 408
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void

    .line 371
    :cond_2
    :goto_0
    const-string p0, "ssOAuthUserInfo isNubiaSupportOAuthVersion:"

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public ssOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/app/Activity;)V
    .locals 2

    if-nez p2, :cond_0

    .line 491
    const-string p0, "AccountSdk"

    const-string p1, "ssOAuthUserInfoFuse context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 495
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthUserInfoFuse mAccountFromRom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 498
    sget v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 499
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_2

    .line 500
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 502
    :cond_2
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 503
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 504
    new-instance p1, Lcn/nubia/oauthsdk/OAuthManagerProxy$9;

    invoke-direct {p1, p0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$9;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 529
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public ssOAuthZteUid(Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 536
    const-string p0, " callBack or context is null"

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 540
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 542
    :cond_1
    const-string v0, " start ssOAuthZteUid:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 543
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V

    .line 604
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method public ssOAuthZteUidWhenTokenValid(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 417
    :cond_0
    const-string v0, " start requestOAuth:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 419
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 421
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result p1

    .line 422
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 427
    :cond_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;

    invoke-direct {p1, p0, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;)V

    .line 441
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void

    .line 424
    :cond_2
    :goto_0
    const-string p0, "ssOAuthUserInfo isNubiaSupportOAuthVersion:"

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "0"

    if-nez v0, :cond_0

    .line 811
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "oauthinfo is null"

    invoke-direct {p0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 814
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "client_id is null"

    invoke-direct {p0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "redirect_uri is empty"

    invoke-direct {p0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 823
    :cond_2
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    .line 825
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 826
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 827
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->requestWebssOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method public webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {p0, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 86
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 87
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 88
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 89
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 91
    invoke-direct {p0, p2, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    return-void
.end method

.method public webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {p0, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 98
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 99
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 100
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 101
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 103
    invoke-direct {p0, p2, v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    return-void
.end method
