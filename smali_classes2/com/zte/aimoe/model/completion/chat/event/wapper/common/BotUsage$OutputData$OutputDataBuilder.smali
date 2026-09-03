.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;
.super Ljava/lang/Object;
.source "BotUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputDataBuilder"
.end annotation


# instance fields
.field private dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

.field private statusCode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;
    .locals 2

    .line 217
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;->statusCode:I

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;->dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    invoke-direct {v0, v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData;-><init>(ILcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;)V

    return-object v0
.end method

.method public dataContent(Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;->dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    return-object p0
.end method

.method public statusCode(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;
    .locals 0

    .line 217
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;->statusCode:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BotUsage.OutputData.OutputDataBuilder(statusCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputData$OutputDataBuilder;->dataContent:Lcom/zte/aimoe/model/completion/chat/event/wapper/common/BotUsage$OutputDataContent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
