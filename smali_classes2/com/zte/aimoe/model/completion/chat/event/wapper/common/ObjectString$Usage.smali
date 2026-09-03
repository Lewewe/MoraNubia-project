.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;
.super Ljava/lang/Object;
.source "ObjectString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Usage"
.end annotation


# instance fields
.field private completionTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "completion_tokens"
    .end annotation
.end field

.field private promptTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt_tokens"
    .end annotation
.end field

.field private totalTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_tokens"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getPromptTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getPromptTokens()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getCompletionTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getCompletionTokens()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getTotalTokens()I

    move-result p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getTotalTokens()I

    move-result p1

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getCompletionTokens()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->completionTokens:I

    return p0
.end method

.method public getPromptTokens()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->promptTokens:I

    return p0
.end method

.method public getTotalTokens()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->totalTokens:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getPromptTokens()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getCompletionTokens()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getTotalTokens()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setCompletionTokens(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->completionTokens:I

    return-void
.end method

.method public setPromptTokens(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->promptTokens:I

    return-void
.end method

.method public setTotalTokens(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->totalTokens:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectString.Usage(promptTokens="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getPromptTokens()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completionTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getCompletionTokens()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ObjectString$Usage;->getTotalTokens()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
