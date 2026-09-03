.class public Lcn/nubia/accountsdk/http/model/ZteLoginResponse;
.super Lcn/nubia/accountsdk/http/model/BaseResponse;
.source "ZteLoginResponse.java"


# instance fields
.field private data:Lorg/json/JSONObject;

.field private errorData:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 25
    const-string v0, "message"

    const-string v1, "code"

    const-string v2, "data"

    invoke-direct {p0}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>()V

    .line 27
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->setErrorCode(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->setErrorMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 44
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->data:Lorg/json/JSONObject;

    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->errorData:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 52
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ZteLoginResponse;
    .locals 2

    .line 72
    sget-boolean v0, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http[json]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 90
    new-instance p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    new-instance p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;-><init>(I)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;-><init>(I)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 58
    iget-object v0, p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->data:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getErrorData()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->errorData:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorData(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->errorData:Ljava/lang/String;

    return-void
.end method
