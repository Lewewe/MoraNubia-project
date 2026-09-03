.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;
.super Ljava/lang/Object;
.source "RequestChatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field public chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_config"
    .end annotation
.end field

.field public createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public debug:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug"
    .end annotation
.end field

.field public debugPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug_prompt"
    .end annotation
.end field

.field public flowId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_id"
    .end annotation
.end field

.field public flowVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_version"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field public stream:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream"
    .end annotation
.end field


# direct methods
.method private static $default$createdAt()J
    .locals 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->$default$createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->createdAt:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->flowId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->flowVersion:Ljava/lang/String;

    iput-wide p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->createdAt:J

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->messages:Ljava/util/List;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->chatConfig:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatConfig;

    iput-boolean p7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->debug:Z

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->debugPrompt:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->stream:Z

    iput-object p10, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 32
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data;->$default$createdAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;
    .locals 1

    .line 29
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestChatEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
