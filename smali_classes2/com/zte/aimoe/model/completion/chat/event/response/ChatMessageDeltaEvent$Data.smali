.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;
.super Ljava/lang/Object;
.source "ChatMessageDeltaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    }
.end annotation


# instance fields
.field private chatId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_id"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_type"
    .end annotation
.end field

.field private finishReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finish_reason"
    .end annotation
.end field

.field private flowId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow_id"
    .end annotation
.end field

.field public id:Ljava/lang/String;
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

.field private subType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_type"
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

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->chatId:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->flowId:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->role:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->type:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->content:Ljava/lang/String;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->contentType:Ljava/lang/String;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->reasoningContent:Ljava/lang/String;

    iput-object p9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->toolCalls:Ljava/util/List;

    iput-object p10, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->finishReason:Ljava/lang/String;

    iput-object p11, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->subType:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;
    .locals 1

    .line 27
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data$DataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getRole()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getReasoningContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getReasoningContent()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getToolCalls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getToolCalls()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getFinishReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getFinishReason()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getSubType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getSubType()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_17

    if-eqz p1, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    :goto_a
    return v2

    :cond_18
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->chatId:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getFinishReason()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->finishReason:Ljava/lang/String;

    return-object p0
.end method

.method public getFlowId()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->flowId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getReasoningContent()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->reasoningContent:Ljava/lang/String;

    return-object p0
.end method

.method public getRole()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->role:Ljava/lang/String;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->subType:Ljava/lang/String;

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

    .line 57
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->toolCalls:Ljava/util/List;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getChatId()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getFlowId()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getRole()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getType()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContent()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getContentType()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getReasoningContent()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getToolCalls()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getFinishReason()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->getSubType()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->chatId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->content:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setFinishReason(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->finishReason:Ljava/lang/String;

    return-void
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->id:Ljava/lang/String;

    return-void
.end method

.method public setReasoningContent(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->reasoningContent:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->role:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->subType:Ljava/lang/String;

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

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->toolCalls:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatMessageDeltaEvent$Data;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
