.class public Lcom/zte/aigc/vo/charge/FuncPoints;
.super Ljava/lang/Object;
.source "FuncPoints.java"


# instance fields
.field private comments:Ljava/lang/String;

.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private deductType:Lcom/zte/aigc/common/DeductTypeEnum;

.field private freeTimes:I

.field private funcAlias:Ljava/lang/String;

.field private funcName:Ljava/lang/String;

.field private id:I

.field private points:I

.field private updateTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->id:I

    .line 16
    iput v0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->freeTimes:I

    .line 17
    sget-object v0, Lcom/zte/aigc/common/DeductTypeEnum;->AFTER:Lcom/zte/aigc/common/DeductTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->deductType:Lcom/zte/aigc/common/DeductTypeEnum;

    return-void
.end method


# virtual methods
.method public getComments()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->comments:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDeductType()Lcom/zte/aigc/common/DeductTypeEnum;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->deductType:Lcom/zte/aigc/common/DeductTypeEnum;

    return-object p0
.end method

.method public getFreeTimes()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->freeTimes:I

    return p0
.end method

.method public getFuncAlias()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->funcAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->funcName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->id:I

    return p0
.end method

.method public getPoints()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->points:I

    return p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->comments:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setDeductType(Lcom/zte/aigc/common/DeductTypeEnum;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->deductType:Lcom/zte/aigc/common/DeductTypeEnum;

    return-void
.end method

.method public setFreeTimes(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->freeTimes:I

    return-void
.end method

.method public setFuncAlias(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->funcAlias:Ljava/lang/String;

    return-void
.end method

.method public setFuncName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->funcName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->id:I

    return-void
.end method

.method public setPoints(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->points:I

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/FuncPoints;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
