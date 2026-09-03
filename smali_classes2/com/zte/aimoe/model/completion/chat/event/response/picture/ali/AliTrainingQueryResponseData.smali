.class public Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;
.super Ljava/lang/Object;
.source "AliTrainingQueryResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    }
.end annotation


# instance fields
.field private createTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field private finetunedOutput:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finetuned_output"
    .end annotation
.end field

.field private hyperParameters:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hyper_parameters"
    .end annotation
.end field

.field private jobId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "job_id"
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private trainingFileIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "training_file_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validationFileIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validation_file_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->jobId:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->status:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->finetunedOutput:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->model:Ljava/lang/String;

    iput-object p5, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->trainingFileIds:Ljava/util/List;

    iput-object p6, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->validationFileIds:Ljava/util/List;

    iput-object p7, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->hyperParameters:Ljava/lang/Object;

    iput-object p8, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->createTime:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;
    .locals 1

    .line 14
    new-instance v0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;

    invoke-direct {v0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData$AliTrainingQueryResponseDataBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getJobId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getJobId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getFinetunedOutput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getFinetunedOutput()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getModel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getTrainingFileIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getTrainingFileIds()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getValidationFileIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getValidationFileIds()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getHyperParameters()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getHyperParameters()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getCreateTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getCreateTime()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_11

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :goto_7
    return v2

    :cond_12
    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->createTime:Ljava/lang/String;

    return-object p0
.end method

.method public getFinetunedOutput()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->finetunedOutput:Ljava/lang/String;

    return-object p0
.end method

.method public getHyperParameters()Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->hyperParameters:Ljava/lang/Object;

    return-object p0
.end method

.method public getJobId()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->jobId:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getTrainingFileIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->trainingFileIds:Ljava/util/List;

    return-object p0
.end method

.method public getValidationFileIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->validationFileIds:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getJobId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getStatus()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getFinetunedOutput()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getModel()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getTrainingFileIds()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getValidationFileIds()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getHyperParameters()Ljava/lang/Object;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->getCreateTime()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setFinetunedOutput(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->finetunedOutput:Ljava/lang/String;

    return-void
.end method

.method public setHyperParameters(Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->hyperParameters:Ljava/lang/Object;

    return-void
.end method

.method public setJobId(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->jobId:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->model:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->status:Ljava/lang/String;

    return-void
.end method

.method public setTrainingFileIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->trainingFileIds:Ljava/util/List;

    return-void
.end method

.method public setValidationFileIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/response/picture/ali/AliTrainingQueryResponseData;->validationFileIds:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
