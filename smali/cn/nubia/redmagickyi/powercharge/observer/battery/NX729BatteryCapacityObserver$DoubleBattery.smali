.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;
.super Ljava/lang/Object;
.source "NX729BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$IBatteryCore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleBattery"
.end annotation


# static fields
.field public static final SCREEN_REFRESH_RATE_120HZ:I = 0x2

.field public static final SCREEN_REFRESH_RATE_144HZ:I = 0x3

.field public static final SCREEN_REFRESH_RATE_165HZ:I = 0x4

.field public static final SCREEN_REFRESH_RATE_60HZ:I = 0x0

.field public static final SCREEN_REFRESH_RATE_90HZ:I = 0x1

.field public static final SCREEN_REFRESH_RATE_DB_NAME:Ljava/lang/String; = "db_screen_rate"


# instance fields
.field private mCount:I

.field private mCurrentNow:D

.field private mFrameTime:D

.field private mIsNeedSpeedDown:Z

.field private mIsNeedSpeedUp:Z

.field private mNodeValue:I

.field final mNote2File:Ljava/io/File;

.field private mOldSpeedWalve:D

.field private mOncePluggedIn:Z

.field private mResetPluggedInTime:J

.field private mSpeedTuningDown:I

.field private mSpeedTuningUp:I

.field private mSpeedValve:D

.field private mTempNodeValue:D

.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance p1, Ljava/io/File;

    const-string v0, "/sys/class/qcom-battery/float_capacity"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNote2File:Ljava/io/File;

    const/4 p1, 0x0

    .line 506
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 507
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    const-wide/16 v0, 0x0

    .line 508
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mOldSpeedWalve:D

    .line 511
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    .line 512
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 516
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCurrentNow:D

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$1;)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)V

    return-void
.end method

.method private getSpeedWalveFromScreenRefreshRate()D
    .locals 4

    .line 526
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "db_screen_rate"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eq p0, v1, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fe170a3d70a3d71L    # 0.545

    goto :goto_0

    :cond_1
    const-wide v2, 0x3fe451eb851eb852L    # 0.635

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    goto :goto_0

    :cond_3
    const-wide v2, 0x3ff747ae147ae148L    # 1.455

    :cond_4
    :goto_0
    return-wide v2
.end method

.method private resetAll()V
    .locals 1

    const/4 v0, 0x0

    .line 741
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedDown:Z

    .line 742
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedUp:Z

    .line 743
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    .line 744
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getChargeType(ZIZ)I
    .locals 2

    if-lez p2, :cond_0

    int-to-double v0, p2

    .line 558
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCurrentNow:D

    .line 561
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 562
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "DoubleBattery getChargeType = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryCapacityObserver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-lez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getHighPrecisionCapacity()I
    .locals 32

    move-object/from16 v0, p0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHighPrecisionCapacity\uff0c mBatteryLevel= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNodeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryCapacityObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_27

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    const-wide v6, 0x40c3880000000000L    # 10000.0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_0

    goto/16 :goto_14

    .line 600
    :cond_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)J

    move-result-wide v4

    .line 601
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 602
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1702(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;Z)Z

    .line 603
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->resetAll()V

    .line 604
    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mResetPluggedInTime:J

    .line 605
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->getSpeedWalveFromScreenRefreshRate()D

    move-result-wide v4

    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mFrameTime:D

    .line 606
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getSavedBatteryLevel(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 608
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v3

    iget-object v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    goto :goto_1

    .line 609
    :cond_2
    :goto_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v1

    mul-int/2addr v1, v3

    int-to-double v3, v1

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    .line 613
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mResetPluggedIn= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mFrameTime= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mFrameTime:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 615
    :cond_3
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    const/4 v7, 0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    .line 616
    iget-wide v8, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCurrentNow:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 617
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v1

    const/4 v10, 0x2

    const/16 v11, 0x251c

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    const/16 v6, 0x2328

    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    const/16 v3, 0x1f40

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0x1770

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    const-wide/high16 v26, 0x4026000000000000L    # 11.0

    if-ne v1, v10, :cond_f

    .line 618
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    const/16 v10, 0xfa0

    const-wide/high16 v28, 0x4020000000000000L    # 8.0

    const-wide/high16 v30, 0x4022000000000000L    # 9.0

    if-ltz v1, :cond_5

    if-ge v1, v10, :cond_5

    cmpl-double v1, v8, v30

    if-lez v1, :cond_4

    cmpg-double v1, v8, v26

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    div-double v6, v8, v26

    div-double v28, v28, v6

    :goto_2
    move-wide/from16 v6, v28

    .line 619
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto/16 :goto_d

    :cond_5
    if-gt v10, v1, :cond_7

    if-ge v1, v7, :cond_7

    cmpl-double v1, v8, v16

    if-lez v1, :cond_6

    cmpg-double v1, v8, v30

    if-gez v1, :cond_6

    goto :goto_3

    :cond_6
    div-double v6, v8, v28

    div-double v30, v30, v6

    :goto_3
    move-wide/from16 v6, v30

    .line 621
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto/16 :goto_d

    :cond_7
    if-gt v7, v1, :cond_9

    if-ge v1, v3, :cond_9

    cmpl-double v1, v8, v20

    if-lez v1, :cond_8

    cmpg-double v1, v8, v16

    if-gez v1, :cond_8

    goto :goto_4

    :cond_8
    div-double v6, v8, v14

    div-double v26, v26, v6

    :goto_4
    move-wide/from16 v6, v26

    .line 623
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto/16 :goto_d

    :cond_9
    if-gt v3, v1, :cond_b

    if-ge v1, v6, :cond_b

    cmpl-double v1, v8, v22

    if-lez v1, :cond_a

    cmpg-double v1, v8, v20

    if-gez v1, :cond_a

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    goto :goto_5

    :cond_a
    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    div-double v10, v8, v20

    div-double/2addr v6, v10

    .line 625
    :goto_5
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto/16 :goto_d

    :cond_b
    if-gt v6, v1, :cond_d

    if-ge v1, v11, :cond_d

    cmpl-double v1, v8, v12

    if-lez v1, :cond_c

    cmpg-double v1, v8, v22

    if-gez v1, :cond_c

    const-wide/high16 v6, 0x4031000000000000L    # 17.0

    goto :goto_6

    :cond_c
    const-wide/high16 v6, 0x4031000000000000L    # 17.0

    div-double v10, v8, v22

    div-double/2addr v6, v10

    .line 627
    :goto_6
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto/16 :goto_d

    :cond_d
    cmpl-double v1, v8, v18

    if-lez v1, :cond_e

    cmpg-double v1, v8, v12

    if-gez v1, :cond_e

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    goto :goto_7

    :cond_e
    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double v6, v8, v6

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    div-double v6, v10, v6

    .line 629
    :goto_7
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto/16 :goto_d

    .line 631
    :cond_f
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_19

    .line 632
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    if-ltz v1, :cond_11

    if-ge v1, v7, :cond_11

    cmpl-double v1, v8, v14

    if-lez v1, :cond_10

    cmpg-double v1, v8, v16

    if-gez v1, :cond_10

    goto :goto_8

    :cond_10
    div-double v6, v8, v16

    div-double v26, v26, v6

    :goto_8
    move-wide/from16 v6, v26

    .line 633
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_d

    :cond_11
    if-gt v7, v1, :cond_13

    if-ge v1, v3, :cond_13

    cmpl-double v1, v8, v20

    if-lez v1, :cond_12

    cmpg-double v1, v8, v14

    if-gez v1, :cond_12

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    goto :goto_9

    :cond_12
    const-wide/high16 v6, 0x401a000000000000L    # 6.5

    div-double v6, v8, v6

    const-wide/high16 v10, 0x402a000000000000L    # 13.0

    div-double v6, v10, v6

    .line 635
    :goto_9
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_d

    :cond_13
    if-gt v3, v1, :cond_15

    if-ge v1, v6, :cond_15

    cmpl-double v1, v8, v22

    if-lez v1, :cond_14

    cmpg-double v1, v8, v20

    if-gez v1, :cond_14

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    goto :goto_a

    :cond_14
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    div-double v10, v8, v20

    div-double/2addr v6, v10

    .line 637
    :goto_a
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_d

    :cond_15
    if-gt v6, v1, :cond_17

    if-ge v1, v11, :cond_17

    cmpl-double v1, v8, v24

    if-lez v1, :cond_16

    cmpg-double v1, v8, v22

    if-gez v1, :cond_16

    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    goto :goto_b

    :cond_16
    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    div-double v10, v8, v12

    div-double/2addr v6, v10

    .line 639
    :goto_b
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_d

    :cond_17
    cmpl-double v1, v8, v18

    if-lez v1, :cond_18

    cmpg-double v1, v8, v24

    if-gez v1, :cond_18

    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    goto :goto_c

    :cond_18
    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    div-double v10, v8, v24

    div-double/2addr v6, v10

    .line 641
    :goto_c
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 645
    :cond_19
    :goto_d
    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mFrameTime:D

    const-wide/16 v10, 0x0

    cmpl-double v1, v6, v10

    if-lez v1, :cond_1a

    .line 646
    iget-wide v12, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    div-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 650
    :cond_1a
    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mResetPluggedInTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-gez v1, :cond_1c

    cmpl-double v1, v8, v18

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    if-lez v1, :cond_1b

    cmpg-double v1, v8, v22

    if-gez v1, :cond_1b

    goto :goto_e

    :cond_1b
    div-double v5, v8, v24

    div-double/2addr v3, v5

    .line 651
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    :goto_e
    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 654
    :cond_1c
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    int-to-double v3, v1

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1d

    add-int/lit8 v3, v1, 0x32

    int-to-double v3, v3

    cmpg-double v3, v5, v3

    if-gez v3, :cond_1d

    .line 655
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    sub-double v3, v3, v24

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_f

    :cond_1d
    add-int/lit8 v3, v1, 0x32

    int-to-double v3, v3

    cmpg-double v3, v5, v3

    if-gez v3, :cond_1e

    const/16 v3, 0x64

    add-int/2addr v1, v3

    int-to-double v3, v1

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1e

    .line 657
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    add-double v3, v3, v24

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 660
    :cond_1e
    :goto_f
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedDown:Z

    if-eqz v1, :cond_1f

    .line 661
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    int-to-double v12, v1

    add-double/2addr v3, v12

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_10

    .line 662
    :cond_1f
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedUp:Z

    if-eqz v1, :cond_20

    .line 663
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    int-to-double v12, v1

    sub-double/2addr v3, v12

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 666
    :cond_20
    :goto_10
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v1

    int-to-double v3, v1

    const-wide v12, 0x3fee666666666666L    # 0.95

    add-double/2addr v3, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v12

    cmpl-double v1, v5, v3

    if-lez v1, :cond_24

    .line 667
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    const-wide v5, 0x40c28e0000000000L    # 9500.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_22

    .line 668
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mFrameTime:D

    cmpl-double v1, v3, v10

    if-lez v1, :cond_21

    const-wide v5, 0x4072c00000000000L    # 300.0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    goto :goto_11

    :cond_21
    const-wide v3, 0x4072c00000000000L    # 300.0

    :goto_11
    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    goto :goto_12

    :cond_22
    cmpl-double v1, v8, v10

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    if-lez v1, :cond_23

    div-double/2addr v3, v8

    .line 670
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    :cond_23
    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 672
    :goto_12
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    if-lez v1, :cond_24

    int-to-double v3, v1

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    rem-double/2addr v3, v5

    cmpl-double v1, v3, v10

    if-nez v1, :cond_24

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "run too fast: mTempNodeValue= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mNodeValue= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSpeedWalve= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCurrentNow= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCurrentNow:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_24
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    .line 679
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mOldSpeedWalve:D

    invoke-static {v3, v4, v5, v6}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(DD)Z

    move-result v1

    if-nez v1, :cond_25

    .line 680
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mOldSpeedWalve:D

    .line 682
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mCurrentNow= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCurrentNow:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSpeedWalve= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSpeedTuningUp= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSpeedTuningDown= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCount= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    if-lez v1, :cond_26

    int-to-double v3, v1

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedValve:D

    rem-double/2addr v3, v5

    cmpl-double v1, v3, v10

    if-nez v1, :cond_26

    const/4 v1, 0x0

    .line 685
    iput v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mCount:I

    .line 686
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    add-double v3, v3, v18

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    .line 687
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mTempNodeValue = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mNodeValue= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_26
    :goto_13
    iget-wide v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    double-to-int v0, v0

    return v0

    :cond_27
    :goto_14
    const/16 v0, 0x2710

    return v0
.end method

.method public onResetPluggedIn()V
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResetPluggedIn = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mOncePluggedIn:Z

    return-void
.end method

.method public readNode(Z)I
    .locals 10

    .line 699
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNote2File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNote2File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "/sys/class/qcom-battery/float_capacity"

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 705
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    const-string v2, ", new nodeValue = "

    const-string v3, " old nodeValue= "

    const-string v4, " mTempNodeValue= "

    const-string v5, "BatteryCapacityObserver"

    if-eqz v1, :cond_1

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "before isShowChargeView : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", mBatteryLevel = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    if-ge v0, v1, :cond_2

    .line 710
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 713
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "isShowChargeView : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_3
    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    if-eq v1, v0, :cond_4

    .line 718
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    if-nez p1, :cond_4

    .line 719
    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    int-to-double v3, v0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_4

    int-to-double v0, v0

    .line 720
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    .line 724
    :cond_4
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    iget p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    int-to-double v2, p1

    sub-double v2, v0, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v2, v2, v4

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_5

    iget v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    if-ge v2, v3, :cond_5

    .line 725
    iput-boolean v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedDown:Z

    .line 726
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedUp:Z

    .line 727
    iput v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    add-int/2addr v2, v7

    .line 728
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    goto :goto_1

    :cond_5
    int-to-double v8, p1

    sub-double/2addr v8, v0

    cmpl-double p1, v8, v4

    if-lez p1, :cond_6

    .line 729
    iget p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    if-ge p1, v3, :cond_6

    .line 730
    iput-boolean v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedUp:Z

    .line 731
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mIsNeedSpeedDown:Z

    .line 732
    iput v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningDown:I

    add-int/2addr p1, v7

    .line 733
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mSpeedTuningUp:I

    goto :goto_1

    .line 735
    :cond_6
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->resetAll()V

    .line 737
    :goto_1
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mNodeValue:I

    return p0
.end method

.method public updateTempNodeValue()V
    .locals 4

    .line 585
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    goto :goto_0

    .line 587
    :cond_0
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 588
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    goto :goto_0

    .line 589
    :cond_1
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 590
    iput-wide v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    .line 592
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateTempNodeValue222 mTempNodeValue= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->mTempNodeValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBatteryLevel= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver$DoubleBattery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX729BatteryCapacityObserver;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryCapacityObserver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
