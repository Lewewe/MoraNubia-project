.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
.super Ljava/lang/Object;
.source "ChatCreateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBuilder"
.end annotation


# instance fields
.field private createdAt$set:Z

.field private createdAt$value:J

.field private flowId:Ljava/lang/String;

.field private flowVersion:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private logId:Ljava/lang/String;

.field private status$set:Z

.field private status$value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;
    .locals 10

    .line 26
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->createdAt$value:J

    iget-boolean v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->createdAt$set:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->access$000()J

    move-result-wide v0

    :cond_0
    move-wide v6, v0

    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->status$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->status$set:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->access$100()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v8, v0

    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->logId:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createdAt(J)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->createdAt$value:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->createdAt$set:Z

    return-object p0
.end method

.method public flowId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public flowVersion(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public logId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->logId:Ljava/lang/String;

    return-object p0
.end method

.method public status(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->status$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->status$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatCreateEvent.Data.DataBuilder(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->flowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->flowVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->createdAt$value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->status$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;->logId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
