.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;
.super Ljava/lang/Object;
.source "ChatMessageDeltaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$ChatMessageDeltaEventBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;
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
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->eventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$ChatMessageDeltaEventBuilder;
    .locals 1

    .line 13
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$ChatMessageDeltaEventBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$ChatMessageDeltaEventBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
