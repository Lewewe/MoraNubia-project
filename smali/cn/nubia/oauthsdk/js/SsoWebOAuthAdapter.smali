.class public Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;
.super Lcn/nubia/oauthsdk/js/JavascriptBaseAdapter;
.source "SsoWebOAuthAdapter.java"


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/oauthsdk/js/IJsProxy;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/js/JavascriptBaseAdapter;-><init>(Landroid/content/Context;Lcn/nubia/oauthsdk/js/IJsProxy;)V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public callBackJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loadMethod="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SsoWebOAuthAdapter"

    invoke-static {v0, p2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->webViewLoadJsMethod(Ljava/lang/String;)V

    return-void
.end method

.method public getCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->sSoOneKeyWebLoginBefore()V

    .line 37
    invoke-virtual {p0, p2}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->getOAuthInfo(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p2

    .line 38
    new-instance v0, Lcn/nubia/oauthsdk/OAuthManager;

    invoke-direct {v0, p2}, Lcn/nubia/oauthsdk/OAuthManager;-><init>(Lcn/nubia/oauthsdk/OAuthInfo;)V

    .line 39
    new-instance p2, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;

    invoke-direct {p2, p0, p1}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;-><init>(Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mCxt:Landroid/content/Context;

    invoke-interface {v0, p2, p0}, Lcn/nubia/oauthsdk/IOAuthManager;->ssWebOneKeyOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const-string p0, "SsoWebOAuthAdapter"

    const-string p1, "onSuccess exception"

    invoke-static {p0, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getOAuthInfo(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;
    .locals 6

    .line 114
    const-string p0, "skipConfirm"

    const-string v0, "clientKey"

    const-string v1, "scope"

    const-string v2, "redirectUri"

    const-string v3, "clientId"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SsoWebOAuthAdapter"

    invoke-static {v5, v4}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v4, Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    invoke-direct {v4}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;-><init>()V

    invoke-virtual {v4}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->build()Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v4

    .line 117
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 118
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance p1, Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;-><init>()V

    .line 120
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {v4, p1}, Lcn/nubia/oauthsdk/OAuthInfo;->setClientId(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 124
    :cond_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {v4, p1}, Lcn/nubia/oauthsdk/OAuthInfo;->setRedirectUri(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 128
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v4, p1}, Lcn/nubia/oauthsdk/OAuthInfo;->setScope(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 132
    :cond_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {v4, p1}, Lcn/nubia/oauthsdk/OAuthInfo;->setClientKey(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo;

    .line 136
    :cond_3
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 138
    invoke-virtual {v4, p0}, Lcn/nubia/oauthsdk/OAuthInfo;->setSkipConfirm(Z)Lcn/nubia/oauthsdk/OAuthInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v4
.end method

.method public sSoOneKeyWebLoginBefore()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    invoke-interface {p0}, Lcn/nubia/oauthsdk/js/IJsProxy;->sSoOneKeyWebLoginBefore()V

    :cond_0
    return-void
.end method

.method public sSoOneKeyWebLoginDone(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/js/IJsProxy;->sSoOneKeyWebLoginDone(Z)V

    :cond_0
    return-void
.end method

.method public webViewLoadJsMethod(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;-><init>(Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
