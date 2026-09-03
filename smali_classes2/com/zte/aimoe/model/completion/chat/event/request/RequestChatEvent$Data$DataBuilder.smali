.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "RequestChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

.field private createdAt$set:Z

.field private createdAt$value:J

.field private debug:Z

.field private debugPrompt:Ljava/lang/String;

.field private flowId:Ljava/lang/String;

.field private flowVersion:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private stream:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;
    .locals 13

    .line 29
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->createdAt$value:J

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->createdAt$set:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->access$000()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->messages:Ljava/util/List;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    iget-boolean v9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->debug:Z

    iget-object v10, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->debugPrompt:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->stream:Z

    iget-object v12, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->language:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public chatConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    return-object p0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->createdAt$value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->createdAt$set:Z

    return-object p0
.end method

.method public debug(Z)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->debug:Z

    return-object p0
.end method

.method public debugPrompt(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->debugPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public flowVersion(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    return-object p0
.end method

.method public language(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public messages(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->messages:Ljava/util/List;

    return-object p0
.end method

.method public stream(Z)Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->stream:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestChatEvent.Data.DataBuilder(flowId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->createdAt$value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugPrompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->debugPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->stream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;->language:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
