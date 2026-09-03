.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;
.super Ljava/lang/Object;
.source "RequestPromptEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPromptEventBuilder"
.end annotation


# instance fields
.field private data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

.field private eventId:Ljava/lang/String;

.field private eventType$set:Z

.field private eventType$value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventType$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventType$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->access$100()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventId:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;)V

    return-object v1
.end method

.method public data(Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    return-object p0
.end method

.method public eventId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public eventType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventType$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventType$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestPromptEvent.RequestPromptEventBuilder(eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->eventType$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
