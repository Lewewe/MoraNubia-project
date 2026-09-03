.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;
.super Ljava/lang/Object;
.source "VolcNetAgentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardConfigBuilder"
.end annotation


# instance fields
.field private imageCardCount:I

.field private videoCardCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;
    .locals 2

    .line 60
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;->videoCardCount:I

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;->imageCardCount:I

    invoke-direct {v0, v1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;-><init>(II)V

    return-object v0
.end method

.method public imageCardCount(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;
    .locals 0

    .line 60
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;->imageCardCount:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolcNetAgentRequest.CardConfig.CardConfigBuilder(videoCardCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;->videoCardCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageCardCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;->imageCardCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public videoCardCount(I)Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;
    .locals 0

    .line 60
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;->videoCardCount:I

    return-object p0
.end method
