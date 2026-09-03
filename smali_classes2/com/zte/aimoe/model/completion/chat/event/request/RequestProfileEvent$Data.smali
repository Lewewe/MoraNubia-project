.class public Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;
.super Ljava/lang/Object;
.source "RequestProfileEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field public createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public flowIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requireProfile:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "require_profile"
    .end annotation
.end field


# direct methods
.method private static $default$createdAt()J
    .locals 2

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->$default$createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->createdAt:J

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->createdAt:J

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->flowIds:Ljava/util/List;

    iput-boolean p4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->requireProfile:Z

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 33
    invoke-static {}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->$default$createdAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;
    .locals 1

    .line 30
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->isRequireProfile()Z

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->isRequireProfile()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->getFlowIds()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->getFlowIds()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_5

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    return v2

    :cond_6
    return v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getFlowIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->flowIds:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 29
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->isRequireProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4f

    goto :goto_0

    :cond_0
    const/16 v2, 0x61

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->getFlowIds()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_1

    const/16 p0, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public isRequireProfile()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->requireProfile:Z

    return p0
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->createdAt:J

    return-void
.end method

.method public setFlowIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->flowIds:Ljava/util/List;

    return-void
.end method

.method public setRequireProfile(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/RequestProfileEvent$Data;->requireProfile:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
