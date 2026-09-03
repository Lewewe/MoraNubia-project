.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;
.super Ljava/lang/Object;
.source "ChatCompletionContentPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatCompletionContentPartBuilder"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;
    .locals 4

    .line 17
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->text:Ljava/lang/String;

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;)V

    return-object v0
.end method

.method public content(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public imageUrl(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatCompletionContentPart.ChatCompletionContentPartBuilder(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->imageUrl:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartImageURL;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatCompletionContentPart$ChatCompletionContentPartBuilder;->type:Ljava/lang/String;

    return-object p0
.end method
