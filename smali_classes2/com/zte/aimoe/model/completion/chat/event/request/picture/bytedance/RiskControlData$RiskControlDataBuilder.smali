.class public Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
.super Ljava/lang/Object;
.source "RiskControlData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RiskControlDataBuilder"
.end annotation


# instance fields
.field private accountId:Ljava/lang/String;

.field private biztype:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private interval:Ljava/lang/Integer;

.field private maxFrames:Ljava/lang/Integer;

.field private operateTime:I

.field private passThrough:Ljava/lang/String;

.field private pictureType:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private type:Ljava/lang/Integer;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public biztype(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->biztype:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;
    .locals 14

    .line 8
    new-instance v13, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->dataId:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->url:Ljava/lang/String;

    iget v4, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->operateTime:I

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->data:Ljava/lang/String;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->biztype:Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->pictureType:Ljava/lang/String;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->sessionId:Ljava/lang/String;

    iget-object v9, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->type:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->interval:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->maxFrames:Ljava/lang/Integer;

    iget-object v12, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->passThrough:Ljava/lang/String;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v13
.end method

.method public data(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public dataId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->dataId:Ljava/lang/String;

    return-object p0
.end method

.method public interval(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxFrames(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->maxFrames:Ljava/lang/Integer;

    return-object p0
.end method

.method public operateTime(I)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->operateTime:I

    return-object p0
.end method

.method public passThrough(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->passThrough:Ljava/lang/String;

    return-object p0
.end method

.method public pictureType(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->pictureType:Ljava/lang/String;

    return-object p0
.end method

.method public sessionId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RiskControlData.RiskControlDataBuilder(accountId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->operateTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", biztype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->biztype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pictureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->pictureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->maxFrames:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->passThrough:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->type:Ljava/lang/Integer;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/request/picture/bytedance/RiskControlData$RiskControlDataBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
