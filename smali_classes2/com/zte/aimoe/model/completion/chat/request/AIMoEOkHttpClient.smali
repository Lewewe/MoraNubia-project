.class public Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;
.super Ljava/lang/Object;
.source "AIMoEOkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;
    }
.end annotation


# static fields
.field private static final chat_api_tail:Ljava/lang/String; = "chat"

.field private static final chat_toy_api_tail:Ljava/lang/String; = "chat/toy"

.field private static final getModelProfile_api_tail:Ljava/lang/String; = "profile"

.field private static final openai_api_tail:Ljava/lang/String; = "chat/completions"

.field private static final prompt_api_tail:Ljava/lang/String; = "chat/prompt"

.field private static final version:Ljava/lang/String; = "v1.0.2"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private client:Lokhttp3/OkHttpClient;

.field private endpoint:Ljava/lang/String;


# direct methods
.method private static $default$client()Lokhttp3/OkHttpClient;
    .locals 4

    .line 37
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->apiKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lokhttp3/OkHttpClient;
    .locals 1

    .line 38
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->$default$client()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;
    .locals 1

    .line 37
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;-><init>()V

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 237
    const-string v0, "v1.0.2"

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 36
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getApiKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getApiKey()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getApiKey()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public sendChatRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 1

    .line 57
    const-string v0, "chat"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    return-void
.end method

.method public sendChatToyRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 1

    .line 53
    const-string v0, "chat/toy"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    return-void
.end method

.method public sendOpenAIRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 1

    .line 61
    const-string v0, "chat/completions"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    return-void
.end method

.method public sendProfileRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 1

    .line 69
    const-string v0, "profile"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    return-void
.end method

.method public sendPromptRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 1

    .line 65
    const-string v0, "chat/prompt"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V

    return-void
.end method

.method public sendRequestAsync(Lcom/zte/aimoe/model/completion/chat/event/ClientInfo;Ljava/lang/Object;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;)V
    .locals 5

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->endpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 77
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 78
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v4, "Authorization"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Client-Info"

    .line 80
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "application/json"

    .line 81
    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;

    invoke-direct {p2, p0, p4, v1, p3}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;-><init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;Lcom/zte/aimoe/model/completion/chat/request/AIMoECallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AIMoEOkHttpClient(client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->getApiKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateKey(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->apiKey:Ljava/lang/String;

    return-void
.end method
