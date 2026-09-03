.class public Lcn/nubia/oauthsdk/UserManagerProxy;
.super Ljava/lang/Object;
.source "UserManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/IUserInfoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUserParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accesstoken is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client_id is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private openInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    const-string v1, "client_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p1, "access_token"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object p1

    new-instance p2, Lcn/nubia/oauthsdk/UserManagerProxy$1;

    invoke-direct {p2, p0, p3}, Lcn/nubia/oauthsdk/UserManagerProxy$1;-><init>(Lcn/nubia/oauthsdk/UserManagerProxy;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V

    invoke-virtual {p1, p2, v0}, Lcn/nubia/oauthsdk/api/NetApis;->getUserProfile(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    return-void
.end method

.method private userInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    const-string v1, "client_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string p1, "access_token"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object p1

    new-instance p2, Lcn/nubia/oauthsdk/UserManagerProxy$2;

    invoke-direct {p2, p0, p3}, Lcn/nubia/oauthsdk/UserManagerProxy$2;-><init>(Lcn/nubia/oauthsdk/UserManagerProxy;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V

    invoke-virtual {p1, p2, v0}, Lcn/nubia/oauthsdk/api/NetApis;->getUserInfo(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getUserOpenInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/UserManagerProxy;->checkUserParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/oauthsdk/UserManagerProxy;->openInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V

    return-void
.end method
