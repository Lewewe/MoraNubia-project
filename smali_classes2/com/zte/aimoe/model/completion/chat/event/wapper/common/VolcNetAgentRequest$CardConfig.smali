.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;
.super Ljava/lang/Object;
.source "VolcNetAgentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;
    }
.end annotation


# instance fields
.field private imageCardCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_card_count"
    .end annotation
.end field

.field private videoCardCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_card_count"
    .end annotation
.end field


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->videoCardCount:I

    iput p2, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->imageCardCount:I

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;
    .locals 1

    .line 60
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig$CardConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 59
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getVideoCardCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getVideoCardCount()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getImageCardCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getImageCardCount()I

    move-result p1

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getImageCardCount()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->imageCardCount:I

    return p0
.end method

.method public getVideoCardCount()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->videoCardCount:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getVideoCardCount()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getImageCardCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setImageCardCount(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->imageCardCount:I

    return-void
.end method

.method public setVideoCardCount(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->videoCardCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolcNetAgentRequest.CardConfig(videoCardCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getVideoCardCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageCardCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/common/VolcNetAgentRequest$CardConfig;->getImageCardCount()I

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
