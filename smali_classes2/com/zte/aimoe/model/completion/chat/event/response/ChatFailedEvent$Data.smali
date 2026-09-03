.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;
.super Ljava/lang/Object;
.source "ChatFailedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field public chatId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_id"
    .end annotation
.end field

.field public completedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "completed_at"
    .end annotation
.end field

.field public createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public flowId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_id"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_error"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usage"
    .end annotation
.end field


# direct methods
.method private static $default$chatId()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "Reserved"

    return-object v0
.end method

.method private static $default$completedAt()J
    .locals 2

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static $default$status()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "completed"

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->$default$chatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->chatId:Ljava/lang/String;

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->$default$completedAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->completedAt:J

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->$default$status()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->chatId:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->flowId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->createdAt:J

    iput-wide p6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->completedAt:J

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    iput-object p9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->status:Ljava/lang/String;

    iput-object p10, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->$default$chatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 32
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->$default$completedAt()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->$default$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;
    .locals 1

    .line 28
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getCompletedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getCompletedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_0
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_1
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_2
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_3
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_4
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getLastError()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getLastError()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    move-result-object p1

    if-nez p0, :cond_f

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    :goto_5
    return v2

    :cond_10
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->chatId:Ljava/lang/String;

    return-object p0
.end method

.method public getCompletedAt()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->completedAt:J

    return-wide v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getFlowId()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getLastError()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 29
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getCompletedAt()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getId()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getFlowId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getStatus()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->getLastError()Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    return v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->chatId:Ljava/lang/String;

    return-void
.end method

.method public setCompletedAt(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->completedAt:J

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->createdAt:J

    return-void
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->id:Ljava/lang/String;

    return-void
.end method

.method public setLastError(Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->lastError:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$LastError;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->status:Ljava/lang/String;

    return-void
.end method

.method public setUsage(Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Data;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatFailedEvent$Usage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
