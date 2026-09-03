.class public Lcom/zte/zteaccount/account/nubia/OAuthManager;
.super Ljava/lang/Object;
.source "OAuthManager.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IOAuthManager;


# instance fields
.field private mStub:Lcn/nubia/oauthsdk/IOAuthManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-direct {v0, p2, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;-><init>(Lcn/nubia/oauthsdk/OAuthInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthInfo;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-direct {v0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;-><init>(Lcn/nubia/oauthsdk/OAuthInfo;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    return-void
.end method

.method private checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/app/Activity;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 58
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

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 71
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 72
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

.method private checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 82
    invoke-static {p2}, Lcn/nubia/oauthsdk/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 83
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

    .line 81
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

    .line 184
    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 188
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/IOAuthManager;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountApkComeFrom()I
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcn/nubia/oauthsdk/IOAuthManager;->getAccountApkComeFrom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getOAuthInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->getOAuthInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 128
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 149
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->getOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 50
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

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/IOAuthManager;->jumptoCertificationActivity(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 179
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity should not be null and should be running"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParamsFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 135
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public ssOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/app/Activity;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public ssOAuthZteUid(Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthZteUid(Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public ssOAuthZteUidWhenTokenValid(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 142
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssOAuthZteUidWhenTokenValid(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 201
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->webOAuthImplicitToken(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->checkParams(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManager;->mStub:Lcn/nubia/oauthsdk/IOAuthManager;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, p1, p2}, Lcn/nubia/oauthsdk/IOAuthManager;->webOAuthorizationCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
