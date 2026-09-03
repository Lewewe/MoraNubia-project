.class public Lcom/zte/aigc/vo/charge/ChargePlan;
.super Ljava/lang/Object;
.source "ChargePlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;
    }
.end annotation


# instance fields
.field private comments:Ljava/lang/String;

.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private currentPrice:F

.field private id:I

.field private originalPrice:F

.field private planName:Ljava/lang/String;

.field private points:I

.field private salesPromotionTag:Ljava/lang/String;

.field private status:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

.field private updateTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/zte/aigc/gson/DateAdapter;
    .end annotation
.end field

.field private validPeriod:Lcom/zte/aigc/vo/charge/PeriodEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->id:I

    .line 15
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->validPeriod:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 17
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->status:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->id:I

    .line 15
    sget-object v0, Lcom/zte/aigc/vo/charge/PeriodEnum;->YEAR:Lcom/zte/aigc/vo/charge/PeriodEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->validPeriod:Lcom/zte/aigc/vo/charge/PeriodEnum;

    .line 17
    sget-object v0, Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;->VALID:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

    iput-object v0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->status:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

    .line 30
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->id:I

    return-void
.end method


# virtual methods
.method public getComments()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->comments:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->createTime:Ljava/util/Date;

    return-object p0
.end method

.method public getCurrentPrice()F
    .locals 0

    .line 66
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->currentPrice:F

    return p0
.end method

.method public getId()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->id:I

    return p0
.end method

.method public getOriginalPrice()F
    .locals 0

    .line 58
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->originalPrice:F

    return p0
.end method

.method public getPlanName()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->planName:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->points:I

    return p0
.end method

.method public getSalesPromotionTag()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->salesPromotionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->status:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

    return-object p0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->updateTime:Ljava/util/Date;

    return-object p0
.end method

.method public getValidPeriod()Lcom/zte/aigc/vo/charge/PeriodEnum;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->validPeriod:Lcom/zte/aigc/vo/charge/PeriodEnum;

    return-object p0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->comments:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->createTime:Ljava/util/Date;

    return-void
.end method

.method public setCurrentPrice(F)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->currentPrice:F

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->id:I

    return-void
.end method

.method public setOriginalPrice(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->originalPrice:F

    return-void
.end method

.method public setPlanName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->planName:Ljava/lang/String;

    return-void
.end method

.method public setPoints(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->points:I

    return-void
.end method

.method public setSalesPromotionTag(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->salesPromotionTag:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->status:Lcom/zte/aigc/vo/charge/ChargePlan$StatusEnum;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public setValidPeriod(Lcom/zte/aigc/vo/charge/PeriodEnum;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/zte/aigc/vo/charge/ChargePlan;->validPeriod:Lcom/zte/aigc/vo/charge/PeriodEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
