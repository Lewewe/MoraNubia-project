.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    }
.end annotation


# instance fields
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

.field public input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "input"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "output"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;JJ)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    iput-wide p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->createdAt:J

    iput-wide p6, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->completedAt:J

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;
    .locals 1

    .line 91
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails$ToolDetailsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 90
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 90
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getCompletedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getCompletedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getInput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getInput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getOutput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getOutput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

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

    .line 107
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->completedAt:J

    return-wide v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->createdAt:J

    return-wide v0
.end method

.method public getInput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOutput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 90
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getCompletedAt()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getInput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->getOutput()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

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

    .line 90
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->completedAt:J

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->createdAt:J

    return-void
.end method

.method public setInput(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->input:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Input;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->name:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;->output:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$Output;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
