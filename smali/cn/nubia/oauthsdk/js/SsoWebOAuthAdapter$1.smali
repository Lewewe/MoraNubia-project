.class Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;
.super Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;
.source "SsoWebOAuthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->getCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

.field final synthetic val$callbackJs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    iput-object p2, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->val$callbackJs:Ljava/lang/String;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthError;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "error is null"

    .line 45
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object p1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->val$callbackJs:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->callBackJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->sSoOneKeyWebLoginDone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-string p0, "SsoWebOAuthAdapter"

    const-string p1, "onError exception"

    invoke-static {p0, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthToken;->getCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 61
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "code"

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 63
    :try_start_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string p1, "msg"

    const-string v1, "code is null"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :goto_1
    iget-object p1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    iget-object v1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->val$callbackJs:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->callBackJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$1;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    invoke-virtual {p0, v2}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->sSoOneKeyWebLoginDone(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 72
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const-string p0, "SsoWebOAuthAdapter"

    const-string p1, "onSuccess exception"

    invoke-static {p0, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
