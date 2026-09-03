.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;
.super Ljava/lang/Object;
.source "RequestOpenAI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    }
.end annotation


# instance fields
.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private messages:Ljava/util/List;
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

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private stream:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream"
    .end annotation
.end field

.field private temperature:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temperature"
    .end annotation
.end field

.field private tools:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tools"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Tool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $default$createdAt()J
    .locals 2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->$default$createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->createdAt:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;DZLjava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;DZ",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Tool;",
            ">;J)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->model:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->messages:Ljava/util/List;

    iput-wide p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->temperature:D

    iput-boolean p5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->stream:Z

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->tools:Ljava/util/List;

    iput-wide p7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->createdAt:J

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 19
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->$default$createdAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;
    .locals 1

    .line 16
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI$RequestOpenAIBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getTemperature()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getTemperature()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->isStream()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->isStream()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getModel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getMessages()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getTools()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getTools()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_a

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    :goto_2
    return v2

    :cond_b
    return v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->createdAt:J

    return-wide v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->messages:Ljava/util/List;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getTemperature()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->temperature:D

    return-wide v0
.end method

.method public getTools()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Tool;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->tools:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 15
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getTemperature()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->isStream()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4f

    goto :goto_0

    :cond_0
    const/16 v3, 0x61

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getCreatedAt()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getModel()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getMessages()Ljava/util/List;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->getTools()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public isStream()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->stream:Z

    return p0
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->createdAt:J

    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->messages:Ljava/util/List;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->model:Ljava/lang/String;

    return-void
.end method

.method public setStream(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->stream:Z

    return-void
.end method

.method public setTemperature(D)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->temperature:D

    return-void
.end method

.method public setTools(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/Tool;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestOpenAI;->tools:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
