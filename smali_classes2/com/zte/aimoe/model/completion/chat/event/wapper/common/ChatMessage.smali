.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    }
.end annotation


# instance fields
.field public content:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field public reasoningContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reasoning_content"
    .end annotation
.end field

.field public role:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation
.end field

.field public toolCall:Ljava/util/List;
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

.field public toolCallId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tool_call_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->role:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->content:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->role:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->content:Ljava/lang/Object;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->toolCall:Ljava/util/List;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->toolCallId:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->reasoningContent:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getRole()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getContent()Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getToolCall()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getToolCall()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getToolCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getToolCallId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getReasoningContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getReasoningContent()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_b

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_4
    return v2

    :cond_c
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->content:Ljava/lang/Object;

    return-object p0
.end method

.method public getReasoningContent()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->reasoningContent:Ljava/lang/String;

    return-object p0
.end method

.method public getRole()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->role:Ljava/lang/String;

    return-object p0
.end method

.method public getToolCall()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->toolCall:Ljava/util/List;

    return-object p0
.end method

.method public getToolCallId()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->toolCallId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getRole()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getContent()Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getToolCall()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getToolCallId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->getReasoningContent()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public multiContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->content:Ljava/lang/Object;

    const-class v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;

    invoke-static {p0, v0}, Lcom/zte/aimoe/model/completion/chat/util/Converter;->castList(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->content:Ljava/lang/Object;

    return-void
.end method

.method public setReasoningContent(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->reasoningContent:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->role:Ljava/lang/String;

    return-void
.end method

.method public setToolCall(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->toolCall:Ljava/util/List;

    return-void
.end method

.method public setToolCallId(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->toolCallId:Ljava/lang/String;

    return-void
.end method

.method public stringContent()Ljava/lang/String;
    .locals 1

    .line 33
    const-class v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;->content:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
