.class Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "AbstractNLPOnlineQueryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcom/zte/nlp/model/NLPResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field private confirmContent:Ljava/lang/String;

.field private history:Ljava/lang/String;

.field private requestText:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;


# direct methods
.method private constructor <init>(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->this$0:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;-><init>(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;)V

    return-void
.end method

.method static synthetic access$102(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->requestText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->history:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->confirmContent:Ljava/lang/String;

    return-object p1
.end method

.method private createPostJson()Ljava/lang/String;
    .locals 6

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->requestText:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->requestText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->confirmContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "key_scene"

    const-string v4, "key_source_text"

    if-eqz v2, :cond_0

    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->requestText:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v2, "<RedMagic_Game_New>"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->requestText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "<confirm_content>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->confirmContent:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "<llm_common_confirm>"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->history:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string v2, "history"

    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->history:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_1
    const-string p0, "key_user_content"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string p0, "key_data_type"

    const-string v0, "stt"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAuthValuePostEncrypt()Ljava/lang/String;
    .locals 6

    const-string v0, "\nv1.2.3.6\n1"

    const-string v1, "REDMAGIC_GAME\n6BU4SE44SD34TQVBGHA78934E02D0D6CA8911FE5E7A4B4F\n"

    .line 100
    :try_start_0
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->access$500()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->access$500()Ljava/lang/String;

    move-result-object p0

    monitor-exit v2

    return-object p0

    .line 105
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-direct {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->getIMEI()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-direct {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->getPhoneType()Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "ZTENLUVA"

    invoke-static {p0, v0}, Lcom/zte/nlp/util/DESCrypto;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zte/nlp/util/DESCrypto;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->access$500()Ljava/lang/String;

    move-result-object p0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const-string p0, ""

    return-object p0
.end method

.method private getIMEI()Ljava/lang/String;
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPhoneType()Ljava/lang/String;
    .locals 0

    .line 125
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 3

    .line 65
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/Url;

    sget-object v1, Lcom/zte/nlp/util/Constant;->SEVER_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    .line 66
    const-string v1, "Authorization"

    invoke-direct {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->getAuthValuePostEncrypt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    .line 67
    invoke-direct {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->createPostJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    return-object v0
.end method

.method protected onInterceptor(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->mDataClazz:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/nlp/model/NLPResponse;

    .line 54
    invoke-virtual {v1, v0}, Lcom/zte/nlp/model/NLPResponse;->setNlpResult(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->sendMessage(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 60
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->onInterceptor(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)Z

    move-result p0

    return p0
.end method
