.class public Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;
.super Ljava/lang/Object;
.source "AIMoEOkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AIMoEOkHttpClientBuilder"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private client$set:Z

.field private client$value:Lokhttp3/OkHttpClient;

.field private endpoint:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->client$value:Lokhttp3/OkHttpClient;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->client$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;->access$000()Lokhttp3/OkHttpClient;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->endpoint:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0}, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->client$value:Lokhttp3/OkHttpClient;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->client$set:Z

    return-object p0
.end method

.method public endpoint(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AIMoEOkHttpClient.AIMoEOkHttpClientBuilder(client$value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->client$value:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$AIMoEOkHttpClientBuilder;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
