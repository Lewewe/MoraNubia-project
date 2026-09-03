.class public Lcom/zte/aigc/vo/charge/UserPointsChange;
.super Ljava/lang/Object;
.source "UserPointsChange.java"


# instance fields
.field private changeNo:Ljava/lang/String;

.field private changePoints:I

.field private changeSubType:Lcom/zte/aigc/common/ChangeSubTypeEnum;

.field private changeTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private deductAppName:Ljava/lang/String;

.field private deductAppPkg:Ljava/lang/String;

.field private deductFuncAlias:Ljava/lang/String;

.field private deductFuncName:Ljava/lang/String;

.field private deductTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private deductTimes:I

.field private device:Lcom/zte/aigc/vo/common/DeviceInfo;

.field private id:I

.field private refundChange:Lcom/zte/aigc/vo/charge/UserPointsChange;

.field private updateTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->id:I

    .line 18
    sget-object v0, Lcom/zte/aigc/common/ChangeTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

    .line 19
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeSubType:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->id:I

    .line 18
    sget-object v0, Lcom/zte/aigc/common/ChangeTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

    .line 19
    sget-object v0, Lcom/zte/aigc/common/ChangeSubTypeEnum;->UNKNOWN:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeSubType:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeTime:Ljava/util/Date;

    .line 43
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->id:I

    return-void
.end method


# virtual methods
.method public getChangeNo()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeNo:Ljava/lang/String;

    return-object p0
.end method

.method public getChangePoints()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changePoints:I

    return p0
.end method

.method public getChangeSubType()Lcom/zte/aigc/common/ChangeSubTypeEnum;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeSubType:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    return-object p0
.end method

.method public getChangeTime()Ljava/util/Date;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeTime:Ljava/util/Date;

    return-object p0
.end method

.method public getChangeType()Lcom/zte/aigc/common/ChangeTypeEnum;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

    return-object p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDeductAppName()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductAppPkg()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductAppPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductFuncAlias()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductFuncAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductFuncName()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductFuncName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeductTime()Ljava/util/Date;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDeductTimes()I
    .locals 0

    .line 135
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductTimes:I

    return p0
.end method

.method public getDevice()Lcom/zte/aigc/vo/common/DeviceInfo;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->device:Lcom/zte/aigc/vo/common/DeviceInfo;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->id:I

    return p0
.end method

.method public getRefundChange()Lcom/zte/aigc/vo/charge/UserPointsChange;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->refundChange:Lcom/zte/aigc/vo/charge/UserPointsChange;

    return-object p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->userId:I

    return p0
.end method

.method public setChangeNo(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeNo:Ljava/lang/String;

    return-void
.end method

.method public setChangePoints(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changePoints:I

    return-void
.end method

.method public setChangeSubType(Lcom/zte/aigc/common/ChangeSubTypeEnum;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeSubType:Lcom/zte/aigc/common/ChangeSubTypeEnum;

    return-void
.end method

.method public setChangeTime(Ljava/util/Date;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeTime:Ljava/util/Date;

    return-void
.end method

.method public setChangeType(Lcom/zte/aigc/common/ChangeTypeEnum;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setDeductAppName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductAppName:Ljava/lang/String;

    return-void
.end method

.method public setDeductAppPkg(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductAppPkg:Ljava/lang/String;

    return-void
.end method

.method public setDeductFuncAlias(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductFuncAlias:Ljava/lang/String;

    return-void
.end method

.method public setDeductFuncName(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductFuncName:Ljava/lang/String;

    return-void
.end method

.method public setDeductTime(Ljava/util/Date;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductTime:Ljava/util/Date;

    return-void
.end method

.method public setDeductTimes(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->deductTimes:I

    return-void
.end method

.method public setDevice(Lcom/zte/aigc/vo/common/DeviceInfo;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->device:Lcom/zte/aigc/vo/common/DeviceInfo;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->id:I

    return-void
.end method

.method public setRefundChange(Lcom/zte/aigc/vo/charge/UserPointsChange;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->refundChange:Lcom/zte/aigc/vo/charge/UserPointsChange;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/zte/aigc/vo/charge/UserPointsChange;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 184
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
