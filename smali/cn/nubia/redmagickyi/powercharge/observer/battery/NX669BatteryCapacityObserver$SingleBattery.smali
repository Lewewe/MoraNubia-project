.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;
.super Ljava/lang/Object;
.source "NX669BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$IBatteryCore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleBattery"
.end annotation


# instance fields
.field private final CURRENT_NOW_120W_LAMDA:F

.field private final CURRENT_NOW_65W_LAMDA:F

.field private currentCount:I

.field private currentSum:D

.field private mLamda:F

.field private mNodeValue:I

.field final mNote1File:Ljava/io/File;

.field private mRateOfWork:[F

.field private mTempNodeValue:D

.field private mTimeSwitchCapacity:D

.field private mUpdateDrawBatteryTime:J

.field private point:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3a848a3e    # 0.0010112f

    .line 512
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->CURRENT_NOW_65W_LAMDA:F

    const v0, 0x3ab1a452    # 0.0013553f

    .line 513
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->CURRENT_NOW_120W_LAMDA:F

    .line 515
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/qcom-battery/float_capacity"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNote1File:Ljava/io/File;

    const/16 v0, 0x8

    .line 516
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mRateOfWork:[F

    const/4 v0, 0x0

    .line 517
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->point:I

    .line 524
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mLamda:F

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)V

    return-void
.end method

.method private avg([F)F
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 688
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 689
    aget v1, p1, v0

    add-float/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private getWorkCurrent()F
    .locals 1

    .line 682
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mRateOfWork:[F

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->avg([F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SingleBattery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNodeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currentNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentSum:D

    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentCount:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTempNodeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "mUpdateDrawBatteryTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mUpdateDrawBatteryTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getChargeType(ZIZ)I
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SingleBattery getChargeType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 545
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    const-string v2, "persist.debug.capacity_120w_lamda"

    invoke-virtual {p1, v2, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 549
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const p1, 0x3ab1a452    # 0.0013553f

    .line 554
    :goto_0
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mLamda:F

    goto :goto_2

    .line 556
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    const-string v2, "persist.debug.capacity_65w_lamda"

    invoke-virtual {p1, v2, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 560
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 562
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const p1, 0x3a848a3e    # 0.0010112f

    .line 565
    :goto_1
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mLamda:F

    :goto_2
    if-eqz p3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-lez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    const/4 p0, -0x1

    :goto_3
    return p0
.end method

.method public getHighPrecisionCapacity()I
    .locals 19

    move-object/from16 v0, p0

    .line 575
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 579
    :cond_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " battery="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 583
    :goto_0
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    const-string v4, "BatteryCapacityObserver"

    const/16 v5, 0x64

    if-ge v3, v5, :cond_14

    .line 584
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)J

    move-result-wide v6

    .line 585
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 586
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3, v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1802(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;Z)Z

    .line 587
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mUpdateDrawBatteryTime:J

    .line 588
    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    add-int/lit8 v3, v3, 0xa

    int-to-double v6, v3

    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 589
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " reset switch="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " temp1="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_2
    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    mul-int/2addr v3, v5

    int-to-double v8, v3

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 594
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    mul-int/2addr v3, v5

    int-to-double v6, v3

    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 597
    :cond_3
    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v5

    int-to-double v8, v3

    cmpl-double v3, v6, v8

    if-lez v3, :cond_4

    .line 598
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    int-to-double v6, v3

    const-wide v8, 0x3fe3333333333333L    # 0.6

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 601
    :cond_4
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->getSavedBatteryLevel(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 603
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/2addr v6, v5

    iget-object v7, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 604
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v6, v3

    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 607
    :cond_5
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " temp2="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_6
    const/high16 v3, 0x41c80000    # 25.0f

    .line 611
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->getWorkCurrent()F

    move-result v8

    mul-float/2addr v8, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v8, v3

    float-to-double v8, v8

    .line 612
    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    int-to-double v10, v3

    add-double/2addr v10, v8

    .line 613
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, " max="

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_7
    iget-wide v12, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    cmpl-double v3, v12, v10

    const-string v14, " up="

    if-ltz v3, :cond_9

    .line 618
    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    int-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v8, v10

    mul-double v10, v8, v8

    .line 619
    iget-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mUpdateDrawBatteryTime:J

    sub-long v2, v6, v2

    long-to-double v2, v2

    mul-double/2addr v10, v2

    iget-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    mul-double/2addr v10, v2

    add-double/2addr v12, v10

    .line 620
    iput-wide v12, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 621
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #ratio="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-wide v2, v6

    goto/16 :goto_4

    .line 625
    :cond_9
    iget-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v12

    .line 626
    iget-object v12, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v12}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v1, :cond_a

    .line 627
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " minUp="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mTimeSwitchCapacity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v16, v6

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    move-wide/from16 v16, v6

    .line 629
    :goto_1
    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mUpdateDrawBatteryTime:J

    sub-long v6, v16, v5

    long-to-double v5, v6

    move-object v7, v14

    iget-wide v13, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    mul-double/2addr v5, v13

    .line 630
    iget v13, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    int-to-double v14, v13

    move/from16 v18, v13

    iget-wide v12, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    sub-double/2addr v14, v12

    cmpl-double v14, v14, v8

    if-lez v14, :cond_b

    move/from16 v14, v18

    int-to-double v14, v14

    sub-double/2addr v14, v12

    div-double/2addr v14, v8

    mul-double v8, v14, v14

    mul-double/2addr v5, v8

    .line 633
    iget-object v8, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v8}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v1, :cond_b

    .line 634
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " *ratio="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    cmpg-double v8, v5, v2

    if-gez v8, :cond_c

    goto :goto_2

    :cond_c
    move-wide v2, v5

    .line 642
    :goto_2
    iget-object v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_d
    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    add-double v7, v5, v2

    cmpl-double v7, v10, v7

    if-lez v7, :cond_e

    add-double/2addr v5, v2

    .line 647
    iput-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    goto :goto_3

    .line 649
    :cond_e
    iput-wide v10, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    :goto_3
    move-wide/from16 v2, v16

    .line 653
    :goto_4
    iput-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mUpdateDrawBatteryTime:J

    .line 656
    :cond_f
    :goto_5
    iget-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    iget v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    int-to-float v6, v5

    const v7, 0x3ba70d73

    add-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v6, v8

    float-to-double v9, v6

    cmpl-double v2, v2, v9

    if-lez v2, :cond_10

    int-to-float v2, v5

    add-float/2addr v2, v7

    mul-float/2addr v2, v8

    float-to-double v2, v2

    .line 657
    iput-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 660
    :cond_10
    iget-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    const-wide/16 v5, 0x0

    cmpg-double v5, v2, v5

    if-ltz v5, :cond_11

    const-wide v5, 0x40c3880000000000L    # 10000.0

    cmpl-double v2, v2, v5

    if-ltz v2, :cond_12

    .line 661
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mNodeValue= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBatteryLevel= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentAvg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentSum:D

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentCount:I

    int-to-double v7, v3

    div-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTimeSwitchCapacity= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTempNodeValue= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " workCurrent= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->getWorkCurrent()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v2

    const/16 v3, 0x64

    mul-int/2addr v2, v3

    int-to-double v2, v2

    iput-wide v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 665
    :cond_12
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_13

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_13
    iget-wide v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    double-to-int v0, v0

    return v0

    .line 672
    :cond_14
    iget-object v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 673
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/16 v0, 0x2710

    return v0
.end method

.method public onResetPluggedIn()V
    .locals 0

    return-void
.end method

.method public readNode(Z)I
    .locals 7

    .line 697
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$2000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNote1File:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNote1File:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 698
    const-string p1, "/sys/class/qcom-battery/float_capacity"

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 700
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    .line 703
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    if-ge p1, v0, :cond_1

    .line 704
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    .line 707
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Landroid/os/BatteryManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    int-to-float v0, v0

    const v1, -0x368bdc00    # -1000000.0f

    div-float/2addr v0, v1

    .line 708
    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentCount:I

    .line 709
    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentSum:D

    float-to-double v3, v0

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentSum:D

    .line 710
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    .line 711
    :goto_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mRateOfWork:[F

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 712
    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 715
    :cond_2
    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->point:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mRateOfWork:[F

    array-length v4, v3

    rem-int/2addr v1, v4

    iput v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->point:I

    .line 716
    aput v0, v3, v1

    .line 719
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mRateOfWork:[F

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->avg([F)F

    move-result v1

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v3

    .line 720
    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mLamda:F

    mul-float/2addr v3, v1

    float-to-double v3, v3

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    .line 721
    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    if-eq v3, p1, :cond_4

    .line 722
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    .line 723
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "mNodeValue="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " mBatteryLevel="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " currentAvg="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentSum:D

    iget v5, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentCount:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " mTempNodeValue="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " mTimeSwitchCapacity="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTimeSwitchCapacity:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " currentNow="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " workCurrent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryCapacityObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentCount:I

    const-wide/16 v0, 0x0

    .line 725
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->currentSum:D

    .line 728
    :cond_4
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mNodeValue:I

    return p0
.end method

.method public updateTempNodeValue()V
    .locals 4

    .line 531
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    goto :goto_0

    .line 533
    :cond_0
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    goto :goto_0

    .line 535
    :cond_1
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 536
    iput-wide v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    .line 538
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateTempNodeValue111 mTempNodeValue= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->mTempNodeValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBatteryLevel= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver$SingleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;->access$1100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX669BatteryCapacityObserver;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryCapacityObserver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
