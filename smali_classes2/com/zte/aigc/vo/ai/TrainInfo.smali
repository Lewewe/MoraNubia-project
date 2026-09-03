.class public Lcom/zte/aigc/vo/ai/TrainInfo;
.super Ljava/lang/Object;
.source "TrainInfo.java"


# instance fields
.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private headPhoto:[B

.field private id:I

.field private modelName:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private status:I

.field private taskId:Ljava/lang/String;

.field private updateTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->id:I

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getHeadPhoto()[B
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->headPhoto:[B

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->id:I

    return p0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->status:I

    return p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setHeadPhoto([B)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->headPhoto:[B

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->id:I

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->status:I

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/TrainInfo;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
