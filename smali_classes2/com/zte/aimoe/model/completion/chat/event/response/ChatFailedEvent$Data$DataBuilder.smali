.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "ChatFailedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private chatId$set:Z

.field private chatId$value:Ljava/lang/String;

.field private completedAt$set:Z

.field private completedAt$value:J

.field private createdAt:J

.field private flowId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

.field private status$set:Z

.field private status$value:Ljava/lang/String;

.field private usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;
    .locals 12

    .line 28
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->chatId$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->chatId$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->access$000()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->completedAt$value:J

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->completedAt$set:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->access$100()J

    move-result-wide v0

    :cond_1
    move-wide v7, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->status$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->status$set:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->access$200()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v10, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->createdAt:J

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    iget-object v11, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;)V

    return-object v0
.end method

.method public chatId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->chatId$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->chatId$set:Z

    return-object p0
.end method

.method public completedAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->completedAt$value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->completedAt$set:Z

    return-object p0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->createdAt:J

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public lastError(Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    return-object p0
.end method

.method public status(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->status$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->status$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatFailedEvent.Data.DataBuilder(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatId$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->chatId$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedAt$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->completedAt$value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->status$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usage(Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    return-object p0
.end method
