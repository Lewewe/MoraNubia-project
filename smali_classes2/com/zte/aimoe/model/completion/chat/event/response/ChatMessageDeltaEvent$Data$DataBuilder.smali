.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "ChatMessageDeltaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private chatId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private finishReason:Ljava/lang/String;

.field private flowId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private reasoningContent:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private toolCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;
    .locals 13

    .line 27
    new-instance v12, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->chatId:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->role:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->content:Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->contentType:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->reasoningContent:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->toolCalls:Ljava/util/List;

    iget-object v10, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->finishReason:Ljava/lang/String;

    iget-object v11, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->subType:Ljava/lang/String;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public chatId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->chatId:Ljava/lang/String;

    return-object p0
.end method

.method public content(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public finishReason(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->finishReason:Ljava/lang/String;

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public reasoningContent(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->reasoningContent:Ljava/lang/String;

    return-object p0
.end method

.method public role(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->role:Ljava/lang/String;

    return-object p0
.end method

.method public subType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->subType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMessageDeltaEvent.Data.DataBuilder(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reasoningContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->reasoningContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->toolCalls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finishReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->finishReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->subType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toolCalls(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->toolCalls:Ljava/util/List;

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;->type:Ljava/lang/String;

    return-object p0
.end method
