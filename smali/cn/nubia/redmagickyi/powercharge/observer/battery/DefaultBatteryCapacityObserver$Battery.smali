.class Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;
.super Ljava/lang/Object;
.source "DefaultBatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$IBatteryCore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Battery"
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

.field private mOldSpeedWalve:D

.field private mOncePluggedIn:Z

.field private mResetPluggedInTime:J

.field private mSpeedTuningDown:I

.field private mSpeedTuningUp:I

.field private mSpeedValve:D

.field private mTempNodeValue:D

.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 356
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 357
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    const-wide/16 v0, 0x0

    .line 358
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mOldSpeedWalve:D

    .line 361
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    .line 362
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 366
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCurrentNow:D

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)V

    return-void
.end method

.method private getSpeedWalveFromScreenRefreshRate()D
    .locals 4

    .line 376
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Landroid/content/Context;

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

    .line 542
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    .line 543
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    .line 544
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    .line 545
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getChargeType(ZIZ)I
    .locals 0

    if-lez p2, :cond_0

    int-to-double p1, p2

    .line 401
    iput-wide p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCurrentNow:D

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHighPrecisionCapacity()I
    .locals 20

    move-object/from16 v0, p0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHighPrecisionCapacity\uff0c mBatteryLevel= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNodeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryCapacityObserver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_19

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    const-wide v6, 0x40c3880000000000L    # 10000.0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_0

    goto/16 :goto_c

    .line 436
    :cond_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)J

    move-result-wide v4

    .line 437
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1702(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;Z)Z

    .line 439
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->resetAll()V

    .line 440
    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mResetPluggedInTime:J

    .line 441
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->getSpeedWalveFromScreenRefreshRate()D

    move-result-wide v4

    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mFrameTime:D

    .line 442
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v1

    mul-int/2addr v1, v3

    int-to-double v3, v1

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mResetPluggedIn= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mFrameTime= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mFrameTime:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 445
    :cond_1
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    const/4 v7, 0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    .line 446
    iget-wide v8, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCurrentNow:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 447
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1500(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v1

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    if-ne v1, v7, :cond_b

    .line 448
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    const/16 v7, 0x1770

    if-ltz v1, :cond_3

    if-ge v1, v7, :cond_3

    cmpl-double v1, v8, v16

    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    const-wide/high16 v18, 0x4026000000000000L    # 11.0

    if-lez v1, :cond_2

    cmpg-double v1, v8, v16

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    div-double v16, v8, v16

    div-double v18, v18, v16

    :goto_0
    move-wide/from16 v6, v18

    .line 449
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_5

    :cond_3
    const/16 v6, 0x1f40

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    if-gt v7, v1, :cond_5

    if-ge v1, v6, :cond_5

    cmpl-double v1, v8, v18

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    if-lez v1, :cond_4

    cmpg-double v1, v8, v16

    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v16, 0x401a000000000000L    # 6.5

    div-double v16, v8, v16

    div-double v6, v6, v16

    .line 451
    :goto_1
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_5

    :cond_5
    const/16 v7, 0x2328

    if-gt v6, v1, :cond_7

    if-ge v1, v7, :cond_7

    cmpl-double v1, v8, v10

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    if-lez v1, :cond_6

    cmpg-double v1, v8, v18

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    div-double v16, v8, v18

    div-double v6, v6, v16

    .line 453
    :goto_2
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_5

    :cond_7
    if-gt v7, v1, :cond_9

    const/16 v6, 0x251c

    if-ge v1, v6, :cond_9

    cmpl-double v1, v8, v14

    const-wide/high16 v6, 0x4037000000000000L    # 23.0

    if-lez v1, :cond_8

    cmpg-double v1, v8, v10

    if-gez v1, :cond_8

    goto :goto_3

    :cond_8
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    div-double v16, v8, v16

    div-double v6, v6, v16

    .line 455
    :goto_3
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_5

    :cond_9
    cmpl-double v1, v8, v12

    const-wide/high16 v6, 0x4042000000000000L    # 36.0

    if-lez v1, :cond_a

    cmpg-double v1, v8, v14

    if-gez v1, :cond_a

    goto :goto_4

    :cond_a
    div-double v16, v8, v14

    div-double v6, v6, v16

    .line 457
    :goto_4
    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 461
    :cond_b
    :goto_5
    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mFrameTime:D

    const-wide/16 v16, 0x0

    cmpl-double v1, v6, v16

    if-lez v1, :cond_c

    .line 462
    iget-wide v14, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    div-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    iput-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 465
    :cond_c
    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mResetPluggedInTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-gez v1, :cond_e

    cmpl-double v1, v8, v12

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    if-lez v1, :cond_d

    cmpg-double v1, v8, v10

    if-gez v1, :cond_d

    goto :goto_6

    :cond_d
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v10, v8, v6

    div-double/2addr v4, v10

    .line 466
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :goto_6
    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 469
    :cond_e
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    int-to-double v4, v1

    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_f

    add-int/lit8 v4, v1, 0x32

    int-to-double v4, v4

    cmpg-double v4, v6, v4

    if-gez v4, :cond_f

    .line 470
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double/2addr v3, v10

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_7

    :cond_f
    add-int/lit8 v4, v1, 0x32

    int-to-double v4, v4

    cmpg-double v4, v6, v4

    if-gez v4, :cond_10

    add-int/2addr v1, v3

    int-to-double v3, v1

    cmpg-double v1, v6, v3

    if-gez v1, :cond_10

    .line 472
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double/2addr v3, v10

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 475
    :cond_10
    :goto_7
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    if-eqz v1, :cond_11

    .line 476
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    int-to-double v10, v1

    add-double/2addr v3, v10

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_8

    .line 477
    :cond_11
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    if-eqz v1, :cond_12

    .line 478
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    int-to-double v10, v1

    sub-double/2addr v3, v10

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 481
    :cond_12
    :goto_8
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v1

    int-to-double v3, v1

    const-wide v10, 0x3fee666666666666L    # 0.95

    add-double/2addr v3, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v10

    cmpl-double v1, v6, v3

    const-string v3, " mSpeedWalve= "

    if-lez v1, :cond_16

    .line 482
    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    const-wide v6, 0x40c28e0000000000L    # 9500.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_14

    .line 483
    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mFrameTime:D

    cmpl-double v1, v4, v16

    if-lez v1, :cond_13

    const-wide v6, 0x4072c00000000000L    # 300.0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_9

    :cond_13
    const-wide v4, 0x4072c00000000000L    # 300.0

    :goto_9
    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    goto :goto_a

    :cond_14
    cmpl-double v1, v8, v16

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    if-lez v1, :cond_15

    div-double/2addr v4, v8

    .line 485
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :cond_15
    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 487
    :goto_a
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    if-lez v1, :cond_16

    int-to-double v4, v1

    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    rem-double/2addr v4, v6

    cmpl-double v1, v4, v16

    if-nez v1, :cond_16

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "run too fast: mTempNodeValue= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mNodeValue= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mCurrentNow= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCurrentNow:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_16
    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    .line 494
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    iget-wide v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mOldSpeedWalve:D

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(DD)Z

    move-result v1

    if-nez v1, :cond_17

    .line 495
    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    iput-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mOldSpeedWalve:D

    .line 497
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mCurrentNow= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCurrentNow:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSpeedTuningUp= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSpeedTuningDown= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCount= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    if-lez v1, :cond_18

    int-to-double v3, v1

    iget-wide v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedValve:D

    rem-double/2addr v3, v5

    cmpl-double v1, v3, v16

    if-nez v1, :cond_18

    const/4 v1, 0x0

    .line 500
    iput v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mCount:I

    .line 501
    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    add-double/2addr v3, v12

    iput-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 502
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mTempNodeValue = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mNodeValue= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_18
    :goto_b
    iget-wide v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    double-to-int v0, v0

    return v0

    :cond_19
    :goto_c
    const/16 v0, 0x2710

    return v0
.end method

.method public onResetPluggedIn()V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResetPluggedIn = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1200(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mOncePluggedIn:Z

    return-void
.end method

.method public readNode(Z)I
    .locals 10

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 514
    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    if-eq v1, v0, :cond_1

    .line 515
    iput v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    .line 516
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isShowChargeView : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTempNodeValue= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNodeValue= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 520
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    iget p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    int-to-double v2, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    int-to-double v0, p1

    .line 521
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 525
    :cond_1
    iget-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    iget p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    int-to-double v2, p1

    sub-double v2, v0, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v2, v2, v4

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_2

    iget v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    if-ge v2, v3, :cond_2

    .line 526
    iput-boolean v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    .line 527
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    .line 528
    iput v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    add-int/2addr v2, v7

    .line 529
    iput v2, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    goto :goto_0

    :cond_2
    int-to-double v8, p1

    sub-double/2addr v8, v0

    cmpl-double p1, v8, v4

    if-lez p1, :cond_3

    .line 530
    iget p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    if-ge p1, v3, :cond_3

    .line 531
    iput-boolean v7, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedUp:Z

    .line 532
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mIsNeedSpeedDown:Z

    .line 533
    iput v6, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    add-int/2addr p1, v7

    .line 534
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    goto :goto_0

    .line 536
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->resetAll()V

    .line 538
    :goto_0
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mNodeValue:I

    return p0
.end method

.method public updateTempNodeValue()V
    .locals 7

    .line 417
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)Z

    move-result v0

    const-string v1, " mBatteryLevel= "

    const-string v2, "BatteryCapacityObserver"

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mTempNodeValue = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v3, v0

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_0

    .line 423
    :cond_1
    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_0

    .line 425
    :cond_2
    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    const-wide v5, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_3

    .line 426
    iput-wide v5, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 428
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updateTempNodeValue222 mTempNodeValue= "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/DefaultBatteryCapacityObserver;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
