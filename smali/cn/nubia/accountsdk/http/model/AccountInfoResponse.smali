.class public Lcn/nubia/accountsdk/http/model/AccountInfoResponse;
.super Lcn/nubia/accountsdk/http/model/BaseResponse;
.source "AccountInfoResponse.java"


# instance fields
.field private mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(I)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 13

    .line 31
    const-string v0, "expires_in"

    const-string v1, "token_key"

    const-string v2, "avatar"

    const-string v3, "area"

    const-string v4, "userno"

    const-string v5, "email"

    const-string v6, "mobile"

    const-string v7, "username"

    const-string v8, "display_name"

    const-string v9, "uid"

    const-string v10, "token_id"

    invoke-direct {p0}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>()V

    .line 32
    new-instance v11, Lcn/nubia/accountsdk/http/model/AccountInfo;

    invoke-direct {v11}, Lcn/nubia/accountsdk/http/model/AccountInfo;-><init>()V

    iput-object v11, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 33
    const-string v11, "user_info"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 36
    :try_start_0
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 37
    iget-object v11, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    invoke-virtual {v11, p1}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setmResUserObject(Lorg/json/JSONObject;)V

    .line 38
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 39
    iget-object v11, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 40
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {v11, v10}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setTokenId(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 43
    iget-object v10, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setUid(Ljava/lang/Long;)V

    .line 45
    :cond_1
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 46
    iget-object v9, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 47
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-virtual {v9, v8}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 50
    iget-object v8, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 51
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {v8, v7}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setUsername(Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    iget-object v7, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 55
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v7, v6}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setMobile(Ljava/lang/String;)V

    .line 57
    :cond_4
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 58
    iget-object v6, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 59
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v6, v5}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setEmail(Ljava/lang/String;)V

    .line 61
    :cond_5
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 62
    iget-object v5, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 63
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v5, v4}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setUserno(Ljava/lang/String;)V

    .line 65
    :cond_6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    iget-object v4, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 67
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v4, v3}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setArea(Ljava/lang/String;)V

    .line 69
    :cond_7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 70
    iget-object v3, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 71
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v3, v2}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setAvatar(Ljava/lang/String;)V

    .line 73
    :cond_8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 74
    iget-object v2, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setTokenKey(Ljava/lang/String;)V

    .line 77
    :cond_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 78
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/http/model/AccountInfo;->setExpiresIn(Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_0
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/AccountInfoResponse;
    .locals 1

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string p0, "code"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    new-instance p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    new-instance p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;-><init>(I)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;-><init>(I)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAccountInfo()Lcn/nubia/accountsdk/http/model/AccountInfo;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    return-object p0
.end method

.method public setAccountInfo(Lcn/nubia/accountsdk/http/model/AccountInfo;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/AccountInfoResponse;->mAccountInfo:Lcn/nubia/accountsdk/http/model/AccountInfo;

    return-void
.end method
