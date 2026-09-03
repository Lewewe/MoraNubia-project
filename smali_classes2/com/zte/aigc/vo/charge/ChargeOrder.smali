.class public Lcom/zte/aigc/vo/charge/ChargeOrder;
.super Ljava/lang/Object;
.source "ChargeOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
    }
.end annotation


# instance fields
.field private chargePlan:Lcom/zte/aigc/vo/charge/ChargePlan;

.field private comments:Ljava/lang/String;

.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private id:I

.field private orderAmount:F

.field private orderNo:Ljava/lang/String;

.field private paymentAmount:F

.field private paymentNo:Ljava/lang/String;

.field private paymentTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private paymentWay:Ljava/lang/String;

.field private status:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

.field private subject:Ljava/lang/String;

.field private updateTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private userInfo:Lcom/zte/aigc/vo/common/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->id:I

    .line 22
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->WAIT_FOR_PAY:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->status:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->id:I

    .line 22
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;->WAIT_FOR_PAY:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->status:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    .line 35
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->id:I

    return-void
.end method


# virtual methods
.method public getChargePlan()Lcom/zte/aigc/vo/charge/ChargePlan;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->chargePlan:Lcom/zte/aigc/vo/charge/ChargePlan;

    return-object p0
.end method

.method public getComments()Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->comments:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->id:I

    return p0
.end method

.method public getOrderAmount()F
    .locals 0

    .line 79
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->orderAmount:F

    return p0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->orderNo:Ljava/lang/String;

    return-object p0
.end method

.method public getPaymentAmount()F
    .locals 0

    .line 95
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentAmount:F

    return p0
.end method

.method public getPaymentNo()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentNo:Ljava/lang/String;

    return-object p0
.end method

.method public getPaymentTime()Ljava/util/Date;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentTime:Ljava/util/Date;

    return-object p0
.end method

.method public getPaymentWay()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentWay:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->status:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getUserInfo()Lcom/zte/aigc/vo/common/UserInfo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->userInfo:Lcom/zte/aigc/vo/common/UserInfo;

    return-object p0
.end method

.method public setChargePlan(Lcom/zte/aigc/vo/charge/ChargePlan;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->chargePlan:Lcom/zte/aigc/vo/charge/ChargePlan;

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->comments:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->id:I

    return-void
.end method

.method public setOrderAmount(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->orderAmount:F

    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->orderNo:Ljava/lang/String;

    return-void
.end method

.method public setPaymentAmount(F)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentAmount:F

    return-void
.end method

.method public setPaymentNo(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentNo:Ljava/lang/String;

    return-void
.end method

.method public setPaymentTime(Ljava/util/Date;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentTime:Ljava/util/Date;

    return-void
.end method

.method public setPaymentWay(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->paymentWay:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->status:Lcom/zte/aigc/vo/charge/ChargeOrder$StatusEnum;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->subject:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public setUserInfo(Lcom/zte/aigc/vo/common/UserInfo;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargeOrder;->userInfo:Lcom/zte/aigc/vo/common/UserInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
