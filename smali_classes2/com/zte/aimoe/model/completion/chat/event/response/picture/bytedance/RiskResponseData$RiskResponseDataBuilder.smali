.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
.super Ljava/lang/Object;
.source "RiskResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RiskResponseDataBuilder"
.end annotation


# instance fields
.field private dataId:Ljava/lang/String;

.field private decision:Ljava/lang/String;

.field private decisionDetail:Ljava/lang/String;

.field private decisionLabel:Ljava/lang/String;

.field private finalLabel:Ljava/lang/String;

.field private ocrDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$OcrDetail;",
            ">;"
        }
    .end annotation
.end field

.field private ocrText:Ljava/lang/String;

.field private passThrough:Ljava/lang/String;

.field private qrcodeDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;",
            ">;"
        }
    .end annotation
.end field

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;
    .locals 12

    .line 11
    new-instance v11, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->dataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decision:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decisionDetail:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->ocrText:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->qrcodeDetails:Ljava/util/List;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->ocrDetails:Ljava/util/List;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->finalLabel:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decisionLabel:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->passThrough:Ljava/lang/String;

    iget-object v10, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->results:Ljava/util/List;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v11
.end method

.method public dataId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->dataId:Ljava/lang/String;

    return-object p0
.end method

.method public decision(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decision:Ljava/lang/String;

    return-object p0
.end method

.method public decisionDetail(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decisionDetail:Ljava/lang/String;

    return-object p0
.end method

.method public decisionLabel(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decisionLabel:Ljava/lang/String;

    return-object p0
.end method

.method public finalLabel(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->finalLabel:Ljava/lang/String;

    return-object p0
.end method

.method public ocrDetails(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$OcrDetail;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->ocrDetails:Ljava/util/List;

    return-object p0
.end method

.method public ocrText(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->ocrText:Ljava/lang/String;

    return-object p0
.end method

.method public passThrough(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->passThrough:Ljava/lang/String;

    return-object p0
.end method

.method public qrcodeDetails(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$QrcodeDetail;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->qrcodeDetails:Ljava/util/List;

    return-object p0
.end method

.method public results(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$Result;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->results:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RiskResponseData.RiskResponseDataBuilder(dataId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decisionDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decisionDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ocrText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->ocrText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qrcodeDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->qrcodeDetails:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ocrDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->ocrDetails:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->finalLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decisionLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->decisionLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->passThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/bytedance/RiskResponseData$RiskResponseDataBuilder;->results:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
