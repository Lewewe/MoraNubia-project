.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "RequestPromptEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

.field private createdAt$set:Z

.field private createdAt$value:J

.field private flowId:Ljava/lang/String;

.field private flowVersion:Ljava/lang/String;

.field private imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

.field private language:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;
    .locals 10

    .line 29
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->createdAt$value:J

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->createdAt$set:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;->access$000()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->language:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;)V

    return-object v0
.end method

.method public chatConfig(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    return-object p0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->createdAt$value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->createdAt$set:Z

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public flowVersion(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    return-object p0
.end method

.method public imageGenParams(Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    return-object p0
.end method

.method public language(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestPromptEvent.Data.DataBuilder(flowId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->createdAt$value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageGenParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data$DataBuilder;->imageGenParams:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
