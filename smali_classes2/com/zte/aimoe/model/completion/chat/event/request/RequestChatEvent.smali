.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;
.super Ljava/lang/Object;
.source "RequestChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;,
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;,
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$ImageGenParams;
    }
.end annotation


# instance fields
.field public data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;
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

    .line 14
    const-string v0, "conversation.chat.request"

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->$default$eventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->eventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->eventType:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->data:Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;->$default$eventType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$RequestChatEventBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 149
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
