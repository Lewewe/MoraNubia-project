.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;
.super Ljava/lang/Object;
.source "ChatCompletedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field private chatId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_id"
    .end annotation
.end field

.field private completedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "completed_at"
    .end annotation
.end field

.field private content:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_type"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private flowId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_id"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private reasoningContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reasoning_content"
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private toolCalls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tool_calls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;"
        }
    .end annotation
.end field

.field public toolDetails:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tool_details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->chatId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->flowId:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->createdAt:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->completedAt:J

    move-object v1, p8

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    move-object v1, p9

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->status:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->role:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->type:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->content:Ljava/lang/Object;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->toolCalls:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->reasoningContent:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->contentType:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->toolDetails:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;
    .locals 1

    .line 29
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getCompletedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getCompletedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getChatId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getFlowId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getStatus()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getRole()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_5
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_6

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_6
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getContent()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_7

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_7
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getToolCalls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getToolCalls()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_8

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_8
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getReasoningContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getReasoningContent()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_17

    if-eqz v3, :cond_18

    goto :goto_9

    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_9
    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_19

    if-eqz v3, :cond_1a

    goto :goto_a

    :cond_19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_a
    return v2

    :cond_1a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getToolDetails()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getToolDetails()Ljava/util/List;

    move-result-object p1

    if-nez p0, :cond_1b

    if-eqz p1, :cond_1c

    goto :goto_b

    :cond_1b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    :goto_b
    return v2

    :cond_1c
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->chatId:Ljava/lang/String;

    return-object p0
.end method

.method public getCompletedAt()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->completedAt:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->content:Ljava/lang/Object;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getFlowId()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getReasoningContent()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->reasoningContent:Ljava/lang/String;

    return-object p0
.end method

.method public getRole()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->role:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getToolCalls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->toolCalls:Ljava/util/List;

    return-object p0
.end method

.method public getToolDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->toolDetails:Ljava/util/List;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 30
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getCompletedAt()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getChatId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getFlowId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getUsage()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getStatus()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getRole()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getType()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getContent()Ljava/lang/Object;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getToolCalls()Ljava/util/List;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getReasoningContent()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->getToolDetails()Ljava/util/List;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    return v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->chatId:Ljava/lang/String;

    return-void
.end method

.method public setCompletedAt(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->completedAt:J

    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->content:Ljava/lang/Object;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->createdAt:J

    return-void
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->id:Ljava/lang/String;

    return-void
.end method

.method public setReasoningContent(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->reasoningContent:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->role:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->status:Ljava/lang/String;

    return-void
.end method

.method public setToolCalls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->toolCalls:Ljava/util/List;

    return-void
.end method

.method public setToolDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ToolDetails;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->toolDetails:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->type:Ljava/lang/String;

    return-void
.end method

.method public setUsage(Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Data;->usage:Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
