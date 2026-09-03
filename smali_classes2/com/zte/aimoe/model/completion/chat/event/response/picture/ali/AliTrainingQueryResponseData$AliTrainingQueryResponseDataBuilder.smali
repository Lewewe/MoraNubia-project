.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
.super Ljava/lang/Object;
.source "AliTrainingQueryResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliTrainingQueryResponseDataBuilder"
.end annotation


# instance fields
.field private createTime:Ljava/lang/String;

.field private finetunedOutput:Ljava/lang/String;

.field private hyperParameters:Ljava/lang/Object;

.field private jobId:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private trainingFileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validationFileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;
    .locals 10

    .line 14
    new-instance v9, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->jobId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->status:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->finetunedOutput:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->model:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->trainingFileIds:Ljava/util/List;

    iget-object v6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->validationFileIds:Ljava/util/List;

    iget-object v7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->hyperParameters:Ljava/lang/Object;

    iget-object v8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->createTime:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9
.end method

.method public createTime(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->createTime:Ljava/lang/String;

    return-object p0
.end method

.method public finetunedOutput(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->finetunedOutput:Ljava/lang/String;

    return-object p0
.end method

.method public hyperParameters(Ljava/lang/Object;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->hyperParameters:Ljava/lang/Object;

    return-object p0
.end method

.method public jobId(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->jobId:Ljava/lang/String;

    return-object p0
.end method

.method public model(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public status(Ljava/lang/String;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliTrainingQueryResponseData.AliTrainingQueryResponseDataBuilder(jobId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->jobId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finetunedOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->finetunedOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trainingFileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->trainingFileIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", validationFileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->validationFileIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hyperParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->hyperParameters:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->createTime:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trainingFileIds(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->trainingFileIds:Ljava/util/List;

    return-object p0
.end method

.method public validationFileIds(Ljava/util/List;)Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;->validationFileIds:Ljava/util/List;

    return-object p0
.end method
