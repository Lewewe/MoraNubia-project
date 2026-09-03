.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;
.super Ljava/lang/Object;
.source "RequestPromptEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field public eventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public eventType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_type"
    .end annotation
.end field


# direct methods
.method private static $default$eventType()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "prompt.request"

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->$default$eventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->$default$eventType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;
    .locals 1

    .line 13
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$RequestPromptEventBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getEventId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    move-result-object p1

    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    return-object p0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getEventId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->getData()Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setData(Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent$Data;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestPromptEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
