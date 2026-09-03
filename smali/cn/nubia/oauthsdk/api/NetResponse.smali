.class public Lcn/nubia/oauthsdk/api/NetResponse;
.super Ljava/lang/Object;
.source "NetResponse.java"


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;

.field private mResponse:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mCode:I

    .line 20
    iput-object p2, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 23
    const-string v0, "response"

    const-string v1, "message"

    const-string v2, "code"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    invoke-virtual {p0, v2}, Lcn/nubia/oauthsdk/api/NetResponse;->setCode(I)V

    .line 29
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->setMessage(Ljava/lang/String;)V

    .line 33
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/api/NetResponse;->setResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/nubia/oauthsdk/api/NetResponse;
    .locals 2

    .line 43
    const-string v0, "NetResponse"

    invoke-static {v0, p0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 49
    new-instance p0, Lcn/nubia/oauthsdk/api/NetResponse;

    invoke-direct {p0, v0}, Lcn/nubia/oauthsdk/api/NetResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    new-instance p0, Lcn/nubia/oauthsdk/api/NetResponse;

    const/4 v0, -0x2

    const-string v1, "ERROR_DATA_FORMAT_INCORRECT"

    invoke-direct {p0, v0, v1}, Lcn/nubia/oauthsdk/api/NetResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lcn/nubia/oauthsdk/api/NetResponse;

    const/4 v0, -0x1

    const-string v1, "ERROR_NETWORK_UNAVAILABLE"

    invoke-direct {p0, v0, v1}, Lcn/nubia/oauthsdk/api/NetResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mResponse:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getCode()I
    .locals 0

    .line 76
    iget p0, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mCode:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 0

    .line 92
    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mResponse:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mCode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Lorg/json/JSONObject;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetResponse;->mResponse:Lorg/json/JSONObject;

    return-void
.end method
