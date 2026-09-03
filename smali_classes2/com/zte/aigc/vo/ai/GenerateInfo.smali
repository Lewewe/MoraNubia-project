.class public Lcom/zte/aigc/vo/ai/GenerateInfo;
.super Ljava/lang/Object;
.source "GenerateInfo.java"


# instance fields
.field private count:I

.field private createTime:Ljava/util/Date;

.field private generateData:Ljava/lang/String;

.field private id:I

.field private modelName:Ljava/lang/String;

.field private status:I

.field private style:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private updateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->id:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->count:I

    return p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getGenerateData()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->generateData:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->id:I

    return p0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->status:I

    return p0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->style:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->template:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public setCount(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->count:I

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setGenerateData(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->generateData:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->id:I

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->status:I

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->style:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->template:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/zte/aigc/vo/ai/GenerateInfo;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
