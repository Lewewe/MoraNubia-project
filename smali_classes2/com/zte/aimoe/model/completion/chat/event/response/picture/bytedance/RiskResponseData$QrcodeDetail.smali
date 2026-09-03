.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;
.super Ljava/lang/Object;
.source "RiskResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QrcodeDetail"
.end annotation


# instance fields
.field private id:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private qrcodeResult:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "QrcodeResult"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getId()F

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getId()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getQrcodeResult()F

    move-result p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getQrcodeResult()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getId()F
    .locals 0

    .line 51
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->id:F

    return p0
.end method

.method public getQrcodeResult()F
    .locals 0

    .line 54
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->qrcodeResult:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getId()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getQrcodeResult()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setId(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->id:F

    return-void
.end method

.method public setQrcodeResult(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->qrcodeResult:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RiskResponseData.QrcodeDetail(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getId()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qrcodeResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;->getQrcodeResult()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
