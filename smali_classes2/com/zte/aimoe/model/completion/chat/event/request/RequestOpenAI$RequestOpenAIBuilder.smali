.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
.super Ljava/lang/Object;
.source "RequestOpenAI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestOpenAIBuilder"
.end annotation


# instance fields
.field private createdAt$set:Z

.field private createdAt$value:J

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/String;

.field private stream:Z

.field private temperature:D

.field private tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Tool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;
    .locals 11

    .line 16
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->createdAt$value:J

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->createdAt$set:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->access$000()J

    move-result-wide v0

    :cond_0
    move-wide v9, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->model:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->messages:Ljava/util/List;

    iget-wide v5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->temperature:D

    iget-boolean v7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->stream:Z

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->tools:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;-><init>(Ljava/lang/String;Ljava/util/List;DZLjava/util/List;J)V

    return-object v0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->createdAt$value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->createdAt$set:Z

    return-object p0
.end method

.method public messages(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->messages:Ljava/util/List;

    return-object p0
.end method

.method public model(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public stream(Z)Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->stream:Z

    return-object p0
.end method

.method public temperature(D)Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->temperature:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestOpenAI.RequestOpenAIBuilder(model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->temperature:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->stream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tools="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->tools:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->createdAt$value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tools(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Tool;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;->tools:Ljava/util/List;

    return-object p0
.end method
