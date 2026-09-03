.class public Lcn/nubia/accountsdk/http/model/ArrayResponse;
.super Lcn/nubia/accountsdk/http/model/BaseResponse;
.source "ArrayResponse.java"


# instance fields
.field private mArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 28
    const-string v0, "response"

    const-string v1, "message"

    const-string v2, "code"

    invoke-direct {p0}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>()V

    .line 30
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/accountsdk/http/model/ArrayResponse;->setErrorCode(I)V

    .line 33
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/accountsdk/http/model/ArrayResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/ArrayResponse;->mArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ArrayResponse;
    .locals 2

    .line 49
    sget-boolean v0, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http[json]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 57
    new-instance p0, Lcn/nubia/accountsdk/http/model/ArrayResponse;

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/ArrayResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    new-instance p0, Lcn/nubia/accountsdk/http/model/ArrayResponse;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/ArrayResponse;-><init>(I)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Lcn/nubia/accountsdk/http/model/ArrayResponse;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/ArrayResponse;-><init>(I)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getArray()Lorg/json/JSONArray;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/ArrayResponse;->mArray:Lorg/json/JSONArray;

    return-object p0
.end method
