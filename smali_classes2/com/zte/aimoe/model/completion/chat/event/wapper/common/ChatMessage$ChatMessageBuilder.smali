.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatMessageBuilder"
.end annotation


# instance fields
.field private content:Ljava/lang/Object;

.field private reasoningContent:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private toolCall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;"
        }
    .end annotation
.end field

.field private toolCallId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;
    .locals 7

    .line 14
    new-instance v6, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->role:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->content:Ljava/lang/Object;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->toolCall:Ljava/util/List;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->toolCallId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->reasoningContent:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public content(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->content:Ljava/lang/Object;

    return-object p0
.end method

.method public reasoningContent(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->reasoningContent:Ljava/lang/String;

    return-object p0
.end method

.method public role(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->role:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMessage.ChatMessageBuilder(role="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->content:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->toolCall:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toolCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->toolCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reasoningContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->reasoningContent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toolCall(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ToolCall;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->toolCall:Ljava/util/List;

    return-object p0
.end method

.method public toolCallId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage$ChatMessageBuilder;->toolCallId:Ljava/lang/String;

    return-object p0
.end method
