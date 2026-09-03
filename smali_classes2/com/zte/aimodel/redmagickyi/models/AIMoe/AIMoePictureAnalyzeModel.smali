.class public Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;
.super Lcom/zte/aimodel/redmagickyi/models/IModel;
.source "AIMoePictureAnalyzeModel.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/IModel;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getResponse(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 6

    const-string v0, "getResponse result "

    const-string v1, "requestChatEvent content = "

    monitor-enter p0

    .line 76
    :try_start_0
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->createChatBody(Lorg/json/JSONObject;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;

    move-result-object p1

    .line 80
    const-string v4, "user_id"

    const-string v5, ""

    invoke-direct {p0, v3, v4, v5}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;->get(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, p1, v3, p2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->request(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->TAG:Ljava/lang/String;

    const-string v1, "getResponse error "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/zte/aimodel/IResponseCallback;->onFailure(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 91
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :goto_0
    monitor-exit p0

    return-object v2

    :catchall_0
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method private request(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p3

    .line 100
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->builder()Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$Url;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->endpoint(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/util/MakeAuthKey;->getAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->apiKey(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->build()Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    move-result-object v8

    const/4 v9, 0x1

    .line 107
    new-array v10, v9, [Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;

    .line 108
    new-array v11, v9, [Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;

    .line 109
    new-array v12, v9, [Ljava/lang/RuntimeException;

    .line 110
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 111
    new-array v14, v9, [Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    aput-object v0, v14, v13

    .line 112
    new-instance v15, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p3

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel$1;-><init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;[Ljava/lang/RuntimeException;[Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;[Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;Lcom/zte/aimodel/IResponseCallback;[Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v1, v0, v15}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendChatRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    .line 197
    :try_start_0
    aget-object v0, v14, v13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Network disconnected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    aput-object v0, v12, v13

    .line 204
    :catch_0
    :goto_0
    aget-object v0, v10, v13

    const-string v1, "total_tokens"

    const-string v2, "billing_name"

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v7, v3, v9}, Lcom/zte/aimodel/IResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    .line 207
    :try_start_1
    aget-object v0, v10, v13

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    move-result-object v0

    .line 208
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 209
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getBillingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getTotalTokens()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 213
    :cond_1
    aget-object v0, v11, v13

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v7, v3, v9}, Lcom/zte/aimodel/IResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    .line 216
    :try_start_2
    aget-object v0, v11, v13

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    move-result-object v0

    .line 217
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 218
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;->getBillingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;->getTotalTokens()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 222
    :cond_2
    aget-object v0, v12, v13

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/zte/aimodel/IResponseCallback;->onFailure(Ljava/lang/String;)V

    :catch_1
    :cond_3
    :goto_1
    return-object v3
.end method


# virtual methods
.method public clearHistory()V
    .locals 0

    return-void
.end method

.method public createChatBody(Lorg/json/JSONObject;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    const-string v0, "disposition"

    const-string v1, "zh"

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 232
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss EEEE"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "datetime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v4, "\u65e0"

    if-eqz v1, :cond_0

    .line 234
    const-string v5, "time_converted"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "timezone"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v5, "support_net_search_doc"

    const-string v6, "true"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v5, "output_mode"

    const-string v6, "text"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v5, "none"

    if-eqz v1, :cond_1

    move-object v6, v4

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    const-string v7, "location"

    invoke-direct {p0, p1, v7, v6}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 240
    :goto_1
    const-string v1, "location_info"

    invoke-direct {p0, p1, v1, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "recommend"

    const-string v4, "1"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "character"

    const-string v4, "Mora"

    invoke-direct {p0, p1, v1, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ai_digital_human"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "d001"

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai_disposition"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "wakeup_word"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ai_nick_name"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "enable"

    const-string v4, "emotion"

    invoke-direct {p0, p1, v4, v0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;->builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->memory(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->profile(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->knowledge(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v3}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->customVariables(Ljava/util/Map;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    move-result-object v0

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    move-result-object v5

    const-string v6, "user"

    .line 257
    invoke-virtual {v5, v6}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->role(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    move-result-object v5

    const-string v6, "message"

    const/4 v7, 0x0

    .line 258
    invoke-direct {p0, p1, v6, v7}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->content(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;

    move-result-object p0

    .line 256
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    move-result-object p0

    .line 261
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "-"

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;->eventId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    move-result-object p0

    .line 262
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    .line 263
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$FlowId;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    const-string v1, "v1"

    .line 264
    invoke-virtual {p1, v1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowVersion(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v3}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->messages(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->chatConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    .line 267
    invoke-virtual {p1, v4}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->stream(Z)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    .line 268
    invoke-virtual {p1, v2}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->language(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;->data(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;

    move-result-object p0

    return-object p0
.end method

.method public inference(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    .line 64
    const-string p0, "null callback"

    return-object p0

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoePictureAnalyzeModel;->getResponse(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
