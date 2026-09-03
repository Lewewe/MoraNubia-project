.class public Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;
.super Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;
.source "GetZteAccountInfoAsyncRequest.java"


# instance fields
.field private final mListener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;


# direct methods
.method public constructor <init>(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;->mListener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 21
    invoke-super {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->cancel()V

    return-void
.end method

.method public processRequest(Lorg/zx/AuthComp/IMyService;)V
    .locals 13

    .line 32
    const-string v0, "token"

    const-string v1, "username"

    const-string v2, "exten"

    const-string v3, "nickname"

    const-string v4, "mobile"

    const-string v5, "email"

    const-string v6, "uid"

    const-string v7, ""

    .line 0
    const-string/jumbo v8, "zte result email:"

    const-string/jumbo v9, "zte token:"

    const-string/jumbo v10, "zte result:"

    .line 32
    :try_start_0
    const-string/jumbo v11, "zte getUser start:"

    invoke-static {v11}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lorg/zx/AuthComp/IMyService;->getUser()Ljava/lang/String;

    move-result-object v11

    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    if-nez v11, :cond_1

    .line 36
    iget-object p0, p0, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;->mListener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 37
    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_0
    return-void

    .line 49
    :cond_1
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 51
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :cond_2
    move-object v6, v7

    .line 53
    :goto_0
    :try_start_2
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 54
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 55
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 57
    :goto_1
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 58
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :cond_4
    move-object v4, v7

    .line 60
    :goto_2
    :try_start_4
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 61
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :cond_5
    move-object v3, v7

    .line 63
    :goto_3
    :try_start_5
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 64
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :cond_6
    move-object v2, v7

    .line 66
    :goto_4
    :try_start_6
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 67
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :cond_7
    move-object v1, v7

    .line 69
    :goto_5
    :try_start_7
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 70
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v7, v0

    goto :goto_6

    :catch_0
    move-object v1, v7

    goto :goto_6

    :catch_1
    move-object v1, v7

    move-object v2, v1

    goto :goto_6

    :catch_2
    move-object v1, v7

    move-object v2, v1

    move-object v3, v2

    goto :goto_6

    :catch_3
    move-object v1, v7

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    goto :goto_6

    :catch_4
    move-object v1, v7

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    goto :goto_6

    :catch_5
    move-object v1, v7

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 76
    :catch_6
    :cond_8
    :goto_6
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Lorg/zx/AuthComp/IMyService;->getUserImage2()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 78
    new-instance v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    invoke-direct {v0}, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;-><init>()V

    .line 79
    new-instance v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-direct {v8}, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;-><init>()V

    .line 80
    iput-object v3, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->nickname:Ljava/lang/String;

    .line 81
    iput-object v6, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->uid:Ljava/lang/String;

    .line 82
    iput-object v5, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->email:Ljava/lang/String;

    .line 83
    iput-object v4, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->mobile:Ljava/lang/String;

    .line 84
    iput-object v2, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->exten:Ljava/lang/String;

    .line 85
    iput-object v7, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    .line 86
    iput-object v1, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->username:Ljava/lang/String;

    .line 87
    iput-object p1, v8, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->icon:Landroid/graphics/Bitmap;

    .line 88
    iput-object v8, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    .line 89
    iget-object p0, p0, Lcn/nubia/accountsdk/service/GetZteAccountInfoAsyncRequest;->mListener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    if-eqz p0, :cond_9

    .line 90
    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_7
    return-void
.end method
