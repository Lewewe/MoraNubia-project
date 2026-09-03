.class public Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;
.super Ljava/lang/Object;
.source "OAuthFuseManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IOAuthManagerNew;


# instance fields
.field private mStub:Lcn/nubia/oauthsdk/IOAuthManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-direct {v0, p2, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;-><init>(Lcn/nubia/oauthsdk/OAuthInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-direct {v0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;-><init>(Lcn/nubia/oauthsdk/OAuthInfo;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    return-void
.end method

.method private checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/app/Activity;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    .line 72
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 73
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "network_error"

    const-string v0, "no available network"

    invoke-direct {p0, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 83
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 84
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "network_error"

    const-string v0, "no available network"

    invoke-direct {p0, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 94
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 95
    new-instance p0, Lcn/nubia/oauthsdk/OAuthError;

    const-string p2, "network_error"

    const-string v0, "no available network"

    invoke-direct {p0, p2, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V
    .locals 1

    if-eqz p3, :cond_2

    .line 118
    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 124
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 125
    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/IOAuthManager;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOAuthInfo(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_1

    .line 39
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/IOAuthManager;->getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V

    :cond_0
    return-void
.end method

.method public jumptoCertificationActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/oauthsdk/utils/CetificationLackingException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthManager;->jumptoCertificationActivity(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 109
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_1

    .line 30
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_1

    .line 135
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_1

    .line 48
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthFuseManagerProxy;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_1

    .line 57
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
