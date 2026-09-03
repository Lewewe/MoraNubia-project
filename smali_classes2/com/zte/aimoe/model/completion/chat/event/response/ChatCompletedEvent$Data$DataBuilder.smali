.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "ChatCompletedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private chatId:Ljava/lang/String;

.field private completedAt:J

.field private content:Ljava/lang/Object;

.field private contentType:Ljava/lang/String;

.field private createdAt:J

.field private flowId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private reasoningContent:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private toolCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;"
        }
    .end annotation
.end field

.field private toolDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;
    .locals 20

    move-object/from16 v0, p0

    .line 29
    new-instance v18, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->chatId:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    iget-wide v5, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->createdAt:J

    iget-wide v7, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->completedAt:J

    iget-object v9, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    iget-object v10, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->status:Ljava/lang/String;

    iget-object v11, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->role:Ljava/lang/String;

    iget-object v12, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->type:Ljava/lang/String;

    iget-object v13, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->content:Ljava/lang/Object;

    iget-object v14, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->toolCalls:Ljava/util/List;

    iget-object v15, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->reasoningContent:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->contentType:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->toolDetails:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v18
.end method

.method public chatId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->chatId:Ljava/lang/String;

    return-object p0
.end method

.method public completedAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->completedAt:J

    return-object p0
.end method

.method public content(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->content:Ljava/lang/Object;

    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->createdAt:J

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public reasoningContent(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->reasoningContent:Ljava/lang/String;

    return-object p0
.end method

.method public role(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->role:Ljava/lang/String;

    return-object p0
.end method

.method public status(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatCompletedEvent.Data.DataBuilder(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->completedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->content:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->toolCalls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reasoningContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->reasoningContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->toolDetails:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toolCalls(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->toolCalls:Ljava/util/List;

    return-object p0
.end method

.method public toolDetails(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->toolDetails:Ljava/util/List;

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public usage(Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    return-object p0
.end method
