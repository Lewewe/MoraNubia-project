.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;
.super Ljava/lang/Object;
.source "ChatCompletedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
    }
.end annotation


# instance fields
.field private billingName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing_name"
    .end annotation
.end field

.field private inputTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "input_tokens"
    .end annotation
.end field

.field private outputTokens:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "output_tokens"
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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->totalTokens:I

    iput p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->outputTokens:I

    iput p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->inputTokens:I

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->billingName:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
    .locals 1

    .line 83
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 82
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getTotalTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getTotalTokens()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getOutputTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getOutputTokens()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getInputTokens()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getInputTokens()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getBillingName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getBillingName()Ljava/lang/String;

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

.method public getBillingName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->billingName:Ljava/lang/String;

    return-object p0
.end method

.method public getInputTokens()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->inputTokens:I

    return p0
.end method

.method public getOutputTokens()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->outputTokens:I

    return p0
.end method

.method public getTotalTokens()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->totalTokens:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getTotalTokens()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getOutputTokens()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getInputTokens()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->getBillingName()Ljava/lang/String;

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

.method public setBillingName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->billingName:Ljava/lang/String;

    return-void
.end method

.method public setInputTokens(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->inputTokens:I

    return-void
.end method

.method public setOutputTokens(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->outputTokens:I

    return-void
.end method

.method public setTotalTokens(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;->totalTokens:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
