.class Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;
.super Ljava/lang/Object;
.source "PromptResponseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field private completedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "completed_at"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private logid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logid"
    .end annotation
.end field

.field private prompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 14
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getCompletedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getCompletedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getLogid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getLogid()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getPrompt()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_9

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_2
    return v2

    :cond_a
    return v0
.end method

.method public getCompletedAt()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->completedAt:J

    return-wide v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLogid()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->logid:Ljava/lang/String;

    return-object p0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->prompt:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 14
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getCompletedAt()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getLogid()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getPrompt()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->getLanguage()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public setCompletedAt(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->completedAt:J

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->createdAt:J

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->language:Ljava/lang/String;

    return-void
.end method

.method public setLogid(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->logid:Ljava/lang/String;

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PromptResponseEvent$Data;->prompt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
