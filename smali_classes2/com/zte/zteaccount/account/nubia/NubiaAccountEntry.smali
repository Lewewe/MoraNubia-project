.class public Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;
.super Lcom/zte/zteaccount/account/BaseAccountEntry;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;,
        Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;
    }
.end annotation


# instance fields
.field protected mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field private mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

.field protected oAuthManager:Lcom/zte/zteaccount/account/nubia/OAuthManager;

.field openId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/zte/zteaccount/account/BaseAccountEntry;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->openId:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {p1, v1}, Lcom/zte/zteaccount/account/nubia/AccountClientHelper;->createAccountClient(Landroid/content/Context;Lcom/zte/aigc/common/ServerType;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    .line 54
    new-instance p1, Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    .line 55
    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setClientId(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    .line 56
    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppKey(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setClientKey(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    .line 57
    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaRedirectUri(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setRedirectUri(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setScope(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setSkipConfirm(Z)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    const-string v0, "release_state"

    .line 60
    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setState(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    const-string v0, "code"

    .line 61
    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->setResponseType(Ljava/lang/String;)Lcn/nubia/oauthsdk/OAuthInfo$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo$Builder;->build()Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/zte/zteaccount/account/nubia/OAuthManager;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManager;-><init>(Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->oAuthManager:Lcom/zte/zteaccount/account/nubia/OAuthManager;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)Lcom/zte/zteaccount/account/AccountInfo;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->loginWithOAuth()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->isAccountLogin(Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->isAccountLogin(Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V

    return-void
.end method

.method private getAccessToken(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;
    .locals 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    iget-object v1, v1, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aigcapi/user/nubia/getAccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {v2}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppKeySecret(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v2

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/aigc/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v3, "code"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string p1, "sign"

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 250
    invoke-static {v0, p1, v2}, Lcom/zte/zteaccount/HttpHelper;->doRequest(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 252
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$4;

    invoke-direct {v1, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$4;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)V

    invoke-virtual {v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$4;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/Result;

    .line 253
    invoke-virtual {p0}, Lcom/zte/aigc/vo/Result;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;

    return-object p0
.end method

.method private getAccessTokenV2(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;
    .locals 5

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    iget-object v1, v1, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aigcapi/v2/user/nubia/getAccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    :try_start_0
    const-string v2, "code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string p1, "appId"

    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {v2}, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 263
    const-string v2, "timestamp"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->getNubiaAppKey(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zte/aigc/utils/HmacSha;->splicing(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {v2}, Lcom/zte/zteaccount/account/nubia/AppConfigV2;->getNubiaAppKey(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zte/aigc/utils/HmacSha;->sha256_HMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    const-string v2, "sign"

    const-string v3, "utf-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 269
    invoke-static {v0, p1, v1}, Lcom/zte/zteaccount/HttpHelper;->doRequest(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$5;

    invoke-direct {v2, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$5;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)V

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$5;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aigc/vo/Result;

    if-eqz p0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/zte/aigc/vo/Result;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;

    return-object p0

    :cond_0
    return-object p1
.end method

.method private getNubiaUserInfo(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://sdk-account.server.nubia.cn/user/profile/more?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/AppConfig;->getNubiaAppid(Lcom/zte/aigc/common/ServerType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 282
    invoke-static {p1, v0, v0}, Lcom/zte/zteaccount/HttpHelper;->doRequest(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$6;

    invoke-direct {v2, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$6;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)V

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$6;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/zteaccount/account/nubia/NubiaUCResult;

    if-nez p0, :cond_0

    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/nubia/NubiaUCResult;->getResponse()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;

    return-object p0
.end method

.method private getOAuthToken(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNubiaSupportOA "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->oAuthManager:Lcom/zte/zteaccount/account/nubia/OAuthManager;

    new-instance v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;

    invoke-direct {v1, p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->ssOAuthCode(Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;Landroid/content/Context;)V

    return-void
.end method

.method private loginWithFull(Lcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;

    invoke-direct {v0, p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Lcom/zte/zteaccount/AccountLoginInterface;)V

    .line 329
    :try_start_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 331
    new-instance p1, Lcom/zte/aigc/common/RequestException;

    invoke-direct {p1, p0}, Lcom/zte/aigc/common/RequestException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private loginWithOAuth()Lcom/zte/zteaccount/account/AccountInfo;
    .locals 5

    .line 217
    new-instance v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getOAuthToken(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V

    .line 219
    invoke-virtual {v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->get()Lcn/nubia/oauthsdk/OAuthToken;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthToken;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthToken;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getAccessTokenV2(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {v0}, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getNubiaUserInfo(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 232
    :cond_2
    new-instance v1, Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lcom/zte/zteaccount/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 233
    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zteaccount/account/AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/AccountInfo;->setMobile(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/AccountInfo;->setEmail(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u_message"

    invoke-virtual {v0, v2, v1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private requestCloudToken(Ljava/lang/String;)Lcom/zte/aigc/vo/CloudToken;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->serverType:Lcom/zte/aigc/common/ServerType;

    iget-object v1, v1, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aigcapi/user/check_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    const-string v2, "oauth_code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/aigc/vo/common/DeviceInfo;->build(Landroid/content/Context;)Lcom/zte/aigc/vo/common/DeviceInfo;

    move-result-object p1

    .line 205
    const-string v2, "RedMagic"

    invoke-virtual {p1, v2}, Lcom/zte/aigc/vo/common/DeviceInfo;->setBrand(Ljava/lang/String;)V

    .line 206
    const-string v2, "device"

    invoke-virtual {p1}, Lcom/zte/aigc/vo/common/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 207
    invoke-static {v0, p1, v1}, Lcom/zte/zteaccount/HttpHelper;->doRequest(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$3;

    invoke-direct {v2, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$3;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)V

    invoke-virtual {v2}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aigc/vo/Result;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/zte/aigc/vo/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/zte/aigc/vo/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aigc/vo/CloudToken;

    .line 211
    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->saveCloudToken(Lcom/zte/aigc/vo/CloudToken;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/zte/zteaccount/account/BaseAccountEntry;->destroy()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    return-void
.end method

.method public getAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->onGetAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can not be called from main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountLoginBundle()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpenId(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)Ljava/lang/String;
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/PackageUtils;->isNubiaSupportOAuthVersion(Landroid/content/Context;)Z

    move-result v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOpenId"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aigc/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->oAuthManager:Lcom/zte/zteaccount/account/nubia/OAuthManager;

    new-instance v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;

    invoke-direct {v1, p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V

    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManager;->getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    .line 400
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 0

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->loginWithFull(Lcom/zte/zteaccount/AccountLoginInterface;)V
    :try_end_0
    .catch Lcom/zte/aigc/common/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lcom/zte/aigc/common/RequestException;->printStackTrace()V

    const/4 p0, 0x0

    .line 72
    invoke-interface {p1, p0}, Lcom/zte/zteaccount/AccountLoginInterface;->isAccountLogin(Z)V

    :goto_0
    return-void
.end method

.method public onGetAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    invoke-virtual {p0, v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V

    return-void
.end method

.method public onGetCloudToken()Lcom/zte/aigc/vo/CloudToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getOAuthToken(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V

    .line 191
    invoke-virtual {v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->get()Lcn/nubia/oauthsdk/OAuthToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    const-string p0, "oAuthToken == null"

    invoke-static {p0}, Lcom/zte/aigc/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v1

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/oauthsdk/OAuthToken;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->requestCloudToken(Ljava/lang/String;)Lcom/zte/aigc/vo/CloudToken;

    move-result-object p0

    return-object p0
.end method

.method public switchToLoginPage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 118
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 119
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public switchToLoginPage(Landroid/app/Activity;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 98
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string v0, "cn.nubia.accounts"

    const-string v1, "cn.nubia.accounts.AccountIntroActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 103
    sget-boolean p0, Lcn/nubia/nbaccount/SDKLogUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x7

    .line 104
    invoke-static {p0}, Lcn/nubia/accountsdk/service/ServiceErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
