.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;
.super Ljava/lang/Object;
.source "ChatCreateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatCreateEventBuilder"
.end annotation


# instance fields
.field private data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

.field private eventId:Ljava/lang/String;

.field private eventType$set:Z

.field private eventType$value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventType$value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventType$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;->access$200()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventId:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    invoke-direct {v1, v2, v0, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;)V

    return-object v1
.end method

.method public data(Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    return-object p0
.end method

.method public eventId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public eventType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventType$value:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventType$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatCreateEvent.ChatCreateEventBuilder(eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->eventType$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$ChatCreateEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
