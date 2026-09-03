.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;
.super Ljava/lang/Object;
.source "ChatMessageCompletedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatMessageCompletedEventBuilder"
.end annotation


# instance fields
.field private data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$Data;

.field private eventId:Ljava/lang/String;

.field private eventType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;
    .locals 3

    .line 12
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->eventType:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$Data;

    invoke-direct {v0, v1, v2, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$Data;)V

    return-object v0
.end method

.method public data(Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$Data;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$Data;

    return-object p0
.end method

.method public eventId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public eventType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMessageCompletedEvent.ChatMessageCompletedEventBuilder(eventId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$ChatMessageCompletedEventBuilder;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageCompletedEvent$Data;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
