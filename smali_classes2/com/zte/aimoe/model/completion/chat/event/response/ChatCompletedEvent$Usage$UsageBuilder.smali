.class public Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
.super Ljava/lang/Object;
.source "ChatCompletedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageBuilder"
.end annotation


# instance fields
.field private billingName:Ljava/lang/String;

.field private inputTokens:I

.field private outputTokens:I

.field private totalTokens:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public billingName(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->billingName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;
    .locals 4

    .line 83
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->totalTokens:I

    iget v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->outputTokens:I

    iget v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->inputTokens:I

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->billingName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public inputTokens(I)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
    .locals 0

    .line 83
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->inputTokens:I

    return-object p0
.end method

.method public outputTokens(I)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
    .locals 0

    .line 83
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->outputTokens:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatCompletedEvent.Usage.UsageBuilder(totalTokens="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->totalTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->outputTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->inputTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", billingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->billingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalTokens(I)Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;
    .locals 0

    .line 83
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/ChatCompletedEvent$Usage$UsageBuilder;->totalTokens:I

    return-object p0
.end method
