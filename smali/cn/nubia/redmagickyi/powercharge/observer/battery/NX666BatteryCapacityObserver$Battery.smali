.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;
.super Ljava/lang/Object;
.source "NX666BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$IBatteryCore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Battery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;
    }
.end annotation


# instance fields
.field private mBatteryUEvent:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;

.field private mCount:I

.field private mIsNeedSpeedDown:Z

.field private mIsNeedSpeedUp:Z

.field private mNodeValue:I

.field private mSpeedTuningDown:I

.field private mSpeedTuningUp:I

.field private mSpeedWalve:D

.field private mTempNodeValue:D

.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 374
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mCount:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 375
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    .line 378
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    .line 379
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    .line 382
    new-instance p1, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mBatteryUEvent:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;

    .line 383
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery$BatteryUEvent;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I
    .locals 0

    .line 370
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    return p0
.end method

.method static synthetic access$2302(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;I)I
    .locals 0

    .line 370
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    return p1
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)D
    .locals 2

    .line 370
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    return-wide v0
.end method

.method static synthetic access$2502(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Z)Z
    .locals 0

    .line 370
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    return p1
.end method

.method static synthetic access$2602(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;Z)Z
    .locals 0

    .line 370
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    return p1
.end method

.method static synthetic access$2702(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;I)I
    .locals 0

    .line 370
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    return p1
.end method

.method static synthetic access$2708(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I
    .locals 2

    .line 370
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    return v0
.end method

.method static synthetic access$2802(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;I)I
    .locals 0

    .line 370
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    return p1
.end method

.method static synthetic access$2808(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)I
    .locals 2

    .line 370
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    return v0
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->resetAll()V

    return-void
.end method

.method private resetAll()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    .line 459
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    .line 460
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    .line 461
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getChargeType()I
    .locals 0

    .line 387
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHighPrecisionCapacity()I
    .locals 7

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHighPrecisionCapacity\uff0c mBatteryLevel= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNodeValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_e

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    const-wide v5, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    goto/16 :goto_6

    .line 404
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$2000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$2002(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;Z)Z

    .line 406
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->resetAll()V

    .line 407
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v3

    mul-int/2addr v3, v2

    if-le v0, v3, :cond_1

    .line 408
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    int-to-double v3, v0

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v0

    mul-int/2addr v0, v2

    int-to-double v3, v0

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 412
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getSavedBatteryLevel(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 414
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_2

    .line 415
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v0

    mul-int/2addr v0, v2

    int-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 419
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mResetPluggedIn= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 420
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 421
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mCount:I

    .line 424
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->isFastCharging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 425
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    const/16 v1, 0x1770

    if-ltz v0, :cond_5

    if-ge v0, v1, :cond_5

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    .line 426
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    goto :goto_3

    :cond_5
    const/16 v2, 0x1f40

    if-gt v1, v0, :cond_6

    if-ge v0, v2, :cond_6

    const-wide/high16 v0, 0x403c000000000000L    # 28.0

    .line 428
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    goto :goto_3

    :cond_6
    const/16 v1, 0x2328

    if-gt v2, v0, :cond_7

    if-ge v0, v1, :cond_7

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 430
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    goto :goto_3

    :cond_7
    if-gt v1, v0, :cond_8

    const/16 v1, 0x251c

    if-ge v0, v1, :cond_8

    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    .line 432
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    goto :goto_3

    :cond_8
    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    .line 434
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    .line 438
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    if-eqz v0, :cond_a

    .line 439
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    iget v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    int-to-double v4, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    goto :goto_4

    .line 440
    :cond_a
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    if-eqz v0, :cond_b

    .line 441
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    iget v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    int-to-double v4, v2

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    .line 444
    :cond_b
    :goto_4
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mCount:I

    if-lez v0, :cond_d

    int-to-double v0, v0

    iget-wide v4, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mSpeedWalve:D

    rem-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_d

    .line 445
    iput v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mCount:I

    .line 446
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_5

    .line 449
    :cond_c
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver;)I

    move-result v1

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_d

    .line 450
    iget v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mNodeValue:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 453
    :cond_d
    :goto_5
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX666BatteryCapacityObserver$Battery;->mTempNodeValue:D

    double-to-int p0, v0

    return p0

    :cond_e
    :goto_6
    const/16 p0, 0x2710

    return p0
.end method

.method public readNode(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
