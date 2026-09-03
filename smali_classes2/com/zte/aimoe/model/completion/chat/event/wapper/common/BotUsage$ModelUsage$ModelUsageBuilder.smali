.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelUsageBuilder"
.end annotation


# instance fields
.field private completionTokens:I

.field private name:Ljava/lang/String;

.field private promptTokens:I

.field private totalTokens:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;
    .locals 4

    .line 34
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->name:Ljava/lang/String;

    iget v2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->promptTokens:I

    iget v3, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->completionTokens:I

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->totalTokens:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public completionTokens(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
    .locals 0

    .line 34
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->completionTokens:I

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public promptTokens(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
    .locals 0

    .line 34
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->promptTokens:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.ModelUsage.ModelUsageBuilder(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", promptTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->promptTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completionTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->completionTokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->totalTokens:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalTokens(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;
    .locals 0

    .line 34
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$ModelUsage$ModelUsageBuilder;->totalTokens:I

    return-object p0
.end method
