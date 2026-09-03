.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
    }
.end annotation


# instance fields
.field public completionTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "completion_tokens"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public promptTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt_tokens"
    .end annotation
.end field

.field public totalTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_tokens"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->name:Ljava/lang/String;

    iput p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->promptTokens:I

    iput p3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->completionTokens:I

    iput p4, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->totalTokens:I

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
    .locals 1

    .line 34
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getPromptTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getPromptTokens()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getCompletionTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getCompletionTokens()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getTotalTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getTotalTokens()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_6

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    return v2

    :cond_7
    return v0
.end method

.method public getCompletionTokens()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->completionTokens:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPromptTokens()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->promptTokens:I

    return p0
.end method

.method public getTotalTokens()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->totalTokens:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getPromptTokens()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getCompletionTokens()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getTotalTokens()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->getName()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_0

    const/16 p0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public setCompletionTokens(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->completionTokens:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->name:Ljava/lang/String;

    return-void
.end method

.method public setPromptTokens(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->promptTokens:I

    return-void
.end method

.method public setTotalTokens(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;->totalTokens:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
