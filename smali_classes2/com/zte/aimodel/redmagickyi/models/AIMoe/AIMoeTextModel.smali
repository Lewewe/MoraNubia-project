.class public Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;
.super Lcom/zte/aimodel/redmagickyi/models/IModel;
.source "AIMoeTextModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;
    }
.end annotation


# instance fields
.field private dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/IModel;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;-><init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$1;)V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    .line 58
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;)Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;)Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    return-object p0
.end method

.method private declared-synchronized getResponse(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 6

    const-string v0, "getResponse result "

    const-string v1, "requestChatEvent content = "

    monitor-enter p0

    .line 83
    :try_start_0
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->createChatBody(Lorg/json/JSONObject;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;

    move-result-object p1

    .line 87
    const-string v4, "user_id"

    const-string v5, ""

    invoke-direct {p0, v3, v4, v5}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$ClientInfo;->get(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;

    move-result-object v3

    .line 88
    iget-object v4, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", history_length = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-virtual {v5}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistoryLength()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p1, v3, p2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->request(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->TAG:Ljava/lang/String;

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

    .line 102
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception p1

    .line 92
    :try_start_2
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->TAG:Ljava/lang/String;

    const-string v1, "getResponse error "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-virtual {v0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistoryLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->removeHistory(I)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
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

    .line 99
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
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

    .line 291
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 292
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

    .line 108
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->builder()Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$Url;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->endpoint(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/util/MakeAuthKey;->getAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->apiKey(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->build()Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    move-result-object v8

    const/4 v9, 0x1

    .line 115
    new-array v10, v9, [Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;

    .line 116
    new-array v11, v9, [Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;

    .line 117
    new-array v12, v9, [Ljava/lang/RuntimeException;

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 119
    new-array v14, v9, [Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    aput-object v0, v14, v13

    .line 120
    new-instance v15, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p3

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$1;-><init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;[Ljava/lang/RuntimeException;[Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;[Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;Lcom/zte/aimodel/IResponseCallback;[Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v1, v0, v15}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendChatRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    .line 211
    :try_start_0
    aget-object v0, v14, v13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Network disconnected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    aput-object v0, v12, v13

    .line 218
    :catch_0
    :goto_0
    aget-object v0, v10, v13

    const-string v1, "total_tokens"

    const-string v2, "billing_name"

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v7, v3, v9}, Lcom/zte/aimodel/IResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    .line 221
    :try_start_1
    aget-object v0, v10, v13

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    move-result-object v0

    .line 222
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 223
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getBillingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getTotalTokens()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 227
    :cond_1
    aget-object v0, v11, v13

    if-eqz v0, :cond_2

    .line 228
    invoke-interface {v7, v3, v9}, Lcom/zte/aimodel/IResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    .line 230
    :try_start_2
    aget-object v0, v11, v13

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    move-result-object v0

    .line 231
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 232
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;->getBillingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-virtual {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;->getTotalTokens()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 236
    :cond_2
    aget-object v0, v12, v13

    if-eqz v0, :cond_3

    .line 237
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
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->clearHistory()V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createChatBody(Lorg/json/JSONObject;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-virtual {v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->limitHistory()V

    .line 245
    iget-object v1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    move-result-object v2

    const-string v3, "user"

    .line 246
    invoke-virtual {v2, v3}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->role(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    move-result-object v2

    const-string v3, "message"

    const/4 v4, 0x0

    .line 247
    invoke-direct {p0, p1, v3, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->content(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->addHistory(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;)V

    .line 249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    const-string v0, "disposition"

    const-string v1, "zh"

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 252
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    const-string v3, "datetime"

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss EEEE"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 255
    const-string v3, "time_converted"

    const-string v4, "\u65e0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    const-string v3, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v3, "support_net_search_doc"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v3, "output_mode"

    const-string v4, "text"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v3, "location"

    const-string v4, "location"

    if-eqz v1, :cond_1

    const-string v5, "\u65e0"

    goto :goto_0

    :cond_1
    const-string v5, "none"

    :goto_0
    invoke-direct {p0, p1, v4, v5}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "location_info"

    const-string v4, "location_info"

    if-eqz v1, :cond_2

    const-string v1, "\u65e0"

    goto :goto_1

    :cond_2
    const-string v1, "none"

    :goto_1
    invoke-direct {p0, p1, v4, v1}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "recommend"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "ai_digital_human"

    const-string v3, "character"

    const-string v4, "Mora"

    invoke-direct {p0, p1, v3, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "ai_disposition"

    const-string v3, "disposition"

    const-string v4, "d001"

    invoke-direct {p0, p1, v3, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "ai_nick_name"

    const-string v3, "wakeup_word"

    const-string v4, ""

    invoke-direct {p0, p1, v3, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "emotion"

    const-string v3, "emotion"

    const-string v4, "enable"

    invoke-direct {p0, p1, v3, v4}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;->builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object p1

    const-string v1, ""

    .line 270
    invoke-virtual {p1, v1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->memory(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object p1

    const-string v1, ""

    .line 271
    invoke-virtual {p1, v1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->profile(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object p1

    const-string v1, ""

    .line 272
    invoke-virtual {p1, v1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->knowledge(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, v2}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->customVariables(Ljava/util/Map;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig$ChatConfigBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    move-result-object p1

    .line 276
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    move-result-object v1

    .line 277
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;->eventId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    move-result-object v1

    .line 278
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object v2

    .line 279
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$FlowId;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object v2

    const-string v3, "v1"

    .line 280
    invoke-virtual {v2, v3}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowVersion(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->dataManager:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    .line 281
    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->messages(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p0

    .line 282
    invoke-virtual {p0, p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->chatConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p0

    const/4 p1, 0x1

    .line 283
    invoke-virtual {p0, p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->stream(Z)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p0

    .line 284
    invoke-virtual {p0, v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->language(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;

    move-result-object p0

    .line 278
    invoke-virtual {v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;->data(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;->build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 249
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public inference(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    .line 67
    const-string p0, "null callback"

    return-object p0

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel;->getResponse(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
