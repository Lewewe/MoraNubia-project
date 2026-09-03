.class public Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IOAuthManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;,
        Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;,
        Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$WebSynLoginRunable;
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 66
    new-instance p1, Lcn/nubia/oauthsdk/UserManagerProxy;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/UserManagerProxy;-><init>()V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo;Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 71
    new-instance p1, Lcn/nubia/oauthsdk/UserManagerProxy;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/UserManagerProxy;-><init>()V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInNubiaRom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 75
    sput p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isInZteRom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 77
    sput p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 81
    new-instance p1, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    iget-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBacSuccessFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->destroy()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handleOutBundleFuse(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handleOutBundle(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    return-void
.end method

.method private checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 675
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 680
    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    return-void

    .line 678
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "redirect_uri is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 676
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client_id is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 674
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "oauthinfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->release()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 890
    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    :cond_1
    return-void
.end method

.method private getSsoauthCodeNubia(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 623
    const-string v0, "getSsoauthCodeNubia "

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 624
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 625
    new-instance v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {v1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 626
    const-string v0, "getSsoauthCodeNubiaFuce getSsoauthCodeNubia start:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 627
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$11;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    .line 657
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method private getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 1

    .line 186
    const-string v0, "getSsoauthCodeNubiaFuce "

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$3;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-direct {p0, v0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getSsoauthCodeNubia(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method private getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 152
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-virtual {p2, v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->getSystemAccountInfoNotBind(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 178
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    new-instance v0, Lcn/nubia/oauthsdk/OAuthError;

    const-string v1, "json exception"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method private goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V
    .locals 2

    .line 869
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 870
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 871
    const-string v1, "oauthinfo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 872
    const-string p2, "oauth_response"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 873
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 874
    const-class p2, Lcn/nubia/oauthsdk/ui/WebOAuthActivity;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 875
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    .line 876
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 880
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleOutBundle(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 7

    .line 786
    const-string v0, "code"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "oauth_access_token"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 787
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 788
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 789
    const-string v3, "access_token"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scope"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/oauthsdk/api/NetApis;->getCode(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object v2

    .line 794
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v3

    .line 795
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

    if-eqz p3, :cond_0

    const/16 p1, 0xbbe

    if-ne v3, p1, :cond_0

    .line 797
    invoke-direct {p0, p3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->jumpToLoginActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 798
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 800
    :try_start_0
    invoke-virtual {v2, v0}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 801
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 802
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-virtual {v2, v4}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 804
    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    new-instance p1, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p1, p3}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 806
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {p0, p2, p1, v1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 809
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 810
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "json exception"

    invoke-direct {p1, p3, p3}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 815
    :cond_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 821
    :cond_2
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "3010"

    const-string v0, "login_cancel"

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method private handleOutBundleFuse(Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 7

    .line 580
    const-string v0, "code"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "oauth_access_token"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 581
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 582
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 583
    const-string v3, "access_token"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scope"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/oauthsdk/api/NetApis;->getCode(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object v2

    .line 588
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v3

    .line 589
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

    if-eqz p3, :cond_0

    const/16 p1, 0xbbe

    if-ne v3, p1, :cond_0

    .line 592
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 594
    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 596
    :try_start_0
    invoke-virtual {v2, v0}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 597
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 598
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-virtual {v2, v4}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 600
    invoke-interface {p3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance p1, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p1, p3}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 602
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {p0, p2, p1, v1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "json exception"

    invoke-direct {p1, p3, p3}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 611
    :cond_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 617
    :cond_2
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p3, "3010"

    const-string v0, "login_cancel"

    invoke-direct {p1, p3, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    move-object p3, v1

    check-cast p3, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method private handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1

    .line 841
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    .line 846
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlerCallBacSuccessFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 1

    .line 832
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$14;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    .line 837
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1

    .line 850
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$16;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$16;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 864
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private jumpToLoginActivity(Landroid/content/Context;)V
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p0, p1, v1, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method private requestOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 685
    const-string v0, "ssOAuthCodeFuse start requestOAuth:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 686
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 687
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 688
    new-instance p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;

    invoke-direct {p1, p0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;)V

    .line 718
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method private requestWebssOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 722
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 723
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 724
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result p1

    .line 725
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 727
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isAccountLogin(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 728
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-static {p1}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 729
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p0, p2, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    goto :goto_0

    .line 731
    :cond_0
    new-instance p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;

    invoke-direct {p1, p0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;)V

    .line 757
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    goto :goto_0

    .line 760
    :cond_1
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "2000"

    const-string v0, "app no support"

    invoke-direct {p1, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p0, p2, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method private startApkLogin(Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V
    .locals 4

    .line 904
    const-string p0, "1.0.3"

    const-string v0, "SDK_VERSION"

    const-string v1, "packagename"

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 905
    const-string v3, "cn.nubia.account.OAUTH_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 914
    :cond_0
    const-string p0, "cn.nubia.accounts"

    const-string p3, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {v2, p0, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string p0, "oauth_response"

    invoke-virtual {v2, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 916
    instance-of p0, p1, Landroid/app/Activity;

    if-nez p0, :cond_1

    const/high16 p0, 0x10000000

    .line 917
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 921
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V
    .locals 2

    .line 926
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 927
    invoke-static {p3}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportWebSynLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const-string p0, "app no support"

    invoke-interface {p2, p0}, Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_0
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Ljava/lang/String;Landroid/app/Activity;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;)V

    .line 956
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    :goto_0
    return-void
.end method

.method public getAccountApkComeFrom()I
    .locals 0

    .line 575
    sget p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    return p0
.end method

.method public getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 2

    .line 206
    const-string v0, "getOAuthInfoBind"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 208
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_0
    const-string v0, "getOAuthInfoBind ACCOUNT_FROM_ROM_ZTE:1"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 211
    sget v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 212
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-direct {p0, v0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public getOAuthInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 2

    .line 261
    const-string v0, "getOAuthInfoNotBind"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 263
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoNotBind mAccountFromRom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 266
    sget v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 280
    :cond_0
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 281
    new-instance v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {v1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 282
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    .line 283
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    .line 284
    const-string p2, "getOAuthUserInfo getSsoauthCodeNubia start:"

    invoke-static {p2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 285
    new-instance p2, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;

    invoke-direct {p2, p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 319
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    return-void
.end method

.method public getOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    if-nez p2, :cond_0

    .line 407
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthUserInfoFuse mAccountFromRom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 414
    sget v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 415
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_2

    .line 416
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 419
    :cond_2
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 420
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 421
    new-instance p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$8;

    invoke-direct {p1, p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$8;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)V

    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 443
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mStub:Lcn/nubia/oauthsdk/IUserInfoManager;

    if-eqz p0, :cond_0

    .line 897
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

    .line 661
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 662
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.details.certification.CertificationActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v0, "cn.nubia.account.CERTIFICATION_ACTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2711

    .line 666
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 668
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {p0, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V

    .line 110
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 111
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->requestOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method

.method public ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
    .locals 2

    if-nez p2, :cond_0

    .line 117
    const-string p0, "AccountSdk"

    const-string p1, "context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 123
    :cond_1
    sget v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 124
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez p1, :cond_2

    .line 125
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 128
    :cond_2
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {p0, p2}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->loginOrRegister(Landroid/app/Activity;)V

    goto :goto_0

    .line 130
    :cond_3
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V

    invoke-virtual {p0, v0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 327
    :cond_0
    const-string v0, " start ssOAuthUserInfo:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 329
    new-instance v1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {v1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 330
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result v0

    .line 331
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 333
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$6;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 366
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    goto :goto_0

    .line 368
    :cond_1
    const-string p0, "ssOAuthUserInfo isNubiaSupportOAuthVersion:"

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ssOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/app/Activity;)V
    .locals 2

    if-nez p2, :cond_0

    .line 451
    const-string p0, "AccountSdk"

    const-string p1, "ssOAuthUserInfoFuse context not null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthUserInfoFuse mAccountFromRom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 458
    sget v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mAccountFromRom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 459
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    if-nez v0, :cond_2

    .line 460
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mZteClient:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 463
    :cond_2
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 464
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 465
    new-instance p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;

    invoke-direct {p1, p0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/app/Activity;)V

    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public ssOAuthZteUid(Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 496
    const-string p0, " callBack or context is null"

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 502
    :cond_1
    const-string v0, " start ssOAuthZteUid:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 503
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$10;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V

    .line 570
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    :goto_0
    return-void
.end method

.method public ssOAuthZteUidWhenTokenValid(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 377
    :cond_0
    const-string v0, " start requestOAuth:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 379
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 380
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result p1

    .line 381
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isCheckAccountPermisson(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 383
    new-instance p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$7;

    invoke-direct {p1, p0, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$7;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;)V

    .line 399
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->sendRequest(Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;)V

    goto :goto_0

    .line 401
    :cond_1
    const-string p0, "ssOAuthUserInfo isNubiaSupportOAuthVersion:"

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "0"

    if-nez v0, :cond_0

    .line 768
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "oauthinfo is null"

    invoke-direct {p0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "client_id is null"

    invoke-direct {p0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "redirect_uri is empty"

    invoke-direct {p0, v1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    goto :goto_0

    .line 777
    :cond_2
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mCallBack:Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;

    .line 778
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 779
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->requestWebssOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {p0, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V

    .line 88
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 89
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 90
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 91
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 92
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 94
    invoke-direct {p0, p2, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    return-void
.end method

.method public webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {p0, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->checkParams(Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;)V

    .line 99
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/OAuthInfo;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 100
    new-instance v0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mServiceHandler:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    .line 101
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    .line 102
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthResponse:Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 103
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->mOAuthInfo:Lcn/nubia/oauthsdk/OAuthInfo;

    .line 105
    invoke-direct {p0, p2, v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->goToWebOAuthActivity(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    return-void
.end method
