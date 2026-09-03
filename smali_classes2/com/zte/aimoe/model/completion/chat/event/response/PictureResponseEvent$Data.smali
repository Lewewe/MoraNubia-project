.class public Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;
.super Ljava/lang/Object;
.source "PictureResponseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private aliTaskStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ali_task_status"
    .end annotation
.end field

.field private aliTrainingStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ali_training_status"
    .end annotation
.end field

.field private billingName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing_name"
    .end annotation
.end field

.field private bytedanceTaskStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bytedance_task_status"
    .end annotation
.end field

.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private completedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "completed_at"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private detect:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detect"
    .end annotation
.end field

.field private eraseData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "erase"
    .end annotation
.end field

.field private expandData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expand"
    .end annotation
.end field

.field private imageData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private logid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logid"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private poemMaterialData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poem_material"
    .end annotation
.end field

.field private riskData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "risk"
    .end annotation
.end field

.field private splitData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "split"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 22
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCompletedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCompletedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCode()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getLogid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getLogid()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getBillingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getBillingName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getImageData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getImageData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_3
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getRiskData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getRiskData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_4
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getPoemMaterialData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getPoemMaterialData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;

    move-result-object v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_5

    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_5
    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getAliTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getAliTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    move-result-object v3

    if-nez v1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_6
    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getAliTrainingStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getAliTrainingStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    move-result-object v3

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_7

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_7
    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getDetect()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getDetect()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;

    move-result-object v3

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_8

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_8
    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getEraseData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getEraseData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;

    move-result-object v3

    if-nez v1, :cond_18

    if-eqz v3, :cond_19

    goto :goto_9

    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_9
    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getExpandData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getExpandData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    move-result-object v3

    if-nez v1, :cond_1a

    if-eqz v3, :cond_1b

    goto :goto_a

    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_a
    return v2

    :cond_1b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getSplitData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getSplitData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;

    move-result-object v3

    if-nez v1, :cond_1c

    if-eqz v3, :cond_1d

    goto :goto_b

    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_b
    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getBytedanceTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getBytedanceTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    move-result-object p1

    if-nez p0, :cond_1e

    if-eqz p1, :cond_1f

    goto :goto_c

    :cond_1e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    :goto_c
    return v2

    :cond_1f
    return v0
.end method

.method public getAliTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->aliTaskStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    return-object p0
.end method

.method public getAliTrainingStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->aliTrainingStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    return-object p0
.end method

.method public getBillingName()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->billingName:Ljava/lang/String;

    return-object p0
.end method

.method public getBytedanceTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->bytedanceTaskStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    return-object p0
.end method

.method public getCode()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->code:I

    return p0
.end method

.method public getCompletedAt()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->completedAt:J

    return-wide v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->createdAt:J

    return-wide v0
.end method

.method public getDetect()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->detect:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;

    return-object p0
.end method

.method public getEraseData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->eraseData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;

    return-object p0
.end method

.method public getExpandData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->expandData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    return-object p0
.end method

.method public getImageData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->imageData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    return-object p0
.end method

.method public getLogid()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->logid:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getPoemMaterialData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->poemMaterialData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;

    return-object p0
.end method

.method public getRiskData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->riskData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;

    return-object p0
.end method

.method public getSplitData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->splitData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    .line 22
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCreatedAt()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCompletedAt()J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getCode()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getLogid()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getBillingName()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getMessage()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getImageData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getRiskData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getPoemMaterialData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getAliTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getAliTrainingStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getDetect()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getEraseData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getExpandData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getSplitData()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->getBytedanceTaskStatus()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    return v0
.end method

.method public setAliTaskStatus(Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->aliTaskStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTaskQueryResponseData;

    return-void
.end method

.method public setAliTrainingStatus(Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->aliTrainingStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    return-void
.end method

.method public setBillingName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->billingName:Ljava/lang/String;

    return-void
.end method

.method public setBytedanceTaskStatus(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->bytedanceTaskStatus:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SeedEditV3ResponseData;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->code:I

    return-void
.end method

.method public setCompletedAt(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->completedAt:J

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->createdAt:J

    return-void
.end method

.method public setDetect(Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->detect:Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliFaceDetectResponseData;

    return-void
.end method

.method public setEraseData(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->eraseData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/EraseResponseData;

    return-void
.end method

.method public setExpandData(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->expandData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ExpandResponseData;

    return-void
.end method

.method public setImageData(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->imageData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/ImageResponseData;

    return-void
.end method

.method public setLogid(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->logid:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->message:Ljava/lang/String;

    return-void
.end method

.method public setPoemMaterialData(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->poemMaterialData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/PoemMaterialResponseData;

    return-void
.end method

.method public setRiskData(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->riskData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;

    return-void
.end method

.method public setSplitData(Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/PictureResponseEvent$Data;->splitData:Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/SplitResponseData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
