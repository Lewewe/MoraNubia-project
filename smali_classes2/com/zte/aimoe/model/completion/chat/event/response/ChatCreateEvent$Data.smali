.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;
.super Ljava/lang/Object;
.source "ChatCreateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
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

.field public flowVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_version"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public logId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logid"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method private static $default$createdAt()J
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static $default$status()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "created"

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->$default$createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->createdAt:J

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->$default$status()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->flowId:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->flowVersion:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->createdAt:J

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->status:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->logId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 30
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->$default$createdAt()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->$default$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;
    .locals 1

    .line 26
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 27
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getFlowVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getFlowVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getLogId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getLogId()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_c

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    :goto_4
    return v2

    :cond_d
    return v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getFlowId()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public getFlowVersion()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->flowVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->logId:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->status:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getFlowId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getFlowVersion()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getStatus()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->getLogId()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->createdAt:J

    return-void
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setFlowVersion(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->flowVersion:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->logId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCreateEvent$Data;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
