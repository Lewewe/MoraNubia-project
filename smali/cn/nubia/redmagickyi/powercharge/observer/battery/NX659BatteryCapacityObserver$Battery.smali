.class Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;
.super Ljava/lang/Object;
.source "NX659BatteryCapacityObserver.java"

# interfaces
.implements Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$IBatteryCore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;
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

.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 476
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mCount:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 477
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mSpeedValve:D

    const-wide/16 v0, 0x0

    .line 478
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mOldSpeedWalve:D

    .line 481
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mSpeedTuningUp:I

    .line 482
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mSpeedTuningDown:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 486
    iput-wide v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mCurrentNow:D

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;-><init>(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)V

    return-void
.end method

.method private getSpeedWalveFromScreenRefreshRate()D
    .locals 4

    .line 496
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/content/Context;

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


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getChargeType(ZIZ)I
    .locals 0

    if-lez p2, :cond_0

    int-to-double p1, p2

    .line 521
    iput-wide p1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mCurrentNow:D

    .line 524
    :cond_0
    const-string p0, "mains"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "/sys/class/power_supply/pca9468-%s/charging_enabled"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 525
    const-string p3, "sub"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 527
    const-string p3, "/sys/class/power_supply/pca9468-mains/nubia_fast_charge"

    invoke-static {p3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getHighPrecisionCapacity()I
    .locals 19

    move-object/from16 v0, p0

    .line 561
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 565
    :cond_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " battery="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 568
    :goto_0
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_16

    .line 569
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)J

    move-result-wide v5

    .line 570
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v3

    const v7, 0x3f19999a    # 0.6f

    const/4 v8, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    if-eqz v3, :cond_6

    .line 571
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3, v8}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1802(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;Z)Z

    .line 572
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3, v5, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2102(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;J)J

    .line 573
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v5

    mul-int/lit16 v5, v5, 0xc8

    add-int/lit16 v5, v5, 0x1770

    int-to-float v5, v5

    iget-object v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2202(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;F)F

    .line 574
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v6

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v5, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 575
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " reset switch="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " temp1="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_2
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v5

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    mul-int/2addr v3, v4

    int-to-double v10, v3

    cmpg-double v3, v5, v10

    if-gez v3, :cond_3

    .line 579
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v5

    mul-int/2addr v5, v4

    int-to-double v5, v5

    invoke-static {v3, v5, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 581
    :cond_3
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v5

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v4

    int-to-double v2, v3

    cmpl-double v2, v5, v2

    if-lez v2, :cond_4

    .line 582
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    mul-float/2addr v3, v9

    float-to-double v5, v3

    invoke-static {v2, v5, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 585
    :cond_4
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1700(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getSavedBatteryLevel(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 587
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v4

    iget-object v5, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v5}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 588
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v5, v2

    invoke-static {v3, v5, v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 590
    :cond_5
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " temp2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 594
    :cond_6
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v10

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    mul-int/2addr v3, v4

    int-to-double v12, v3

    cmpg-double v3, v10, v12

    if-gez v3, :cond_7

    .line 595
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v10

    mul-int/2addr v10, v4

    int-to-double v10, v10

    invoke-static {v3, v10, v11}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 597
    :cond_7
    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v10

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v4

    int-to-double v2, v3

    cmpl-double v2, v10, v2

    if-lez v2, :cond_8

    .line 598
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    mul-float/2addr v3, v9

    float-to-double v10, v3

    invoke-static {v2, v10, v11}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 600
    :cond_8
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 601
    iget-object v7, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 602
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, " max="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_9
    iget-object v7, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v10

    cmpl-double v7, v10, v2

    const-string v10, " up="

    const-string v11, " switch="

    const-string v12, " nxp="

    if-ltz v7, :cond_b

    .line 605
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v2

    float-to-double v2, v2

    iget-object v7, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v13

    iget-object v7, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v7

    int-to-double v8, v7

    sub-double/2addr v13, v8

    div-double/2addr v2, v13

    mul-double v7, v2, v2

    .line 606
    iget-object v9, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v9}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)J

    move-result-wide v13

    sub-long v13, v5, v13

    long-to-float v9, v13

    iget-object v13, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v13}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v13

    div-float/2addr v9, v13

    float-to-double v13, v9

    mul-double/2addr v7, v13

    .line 607
    iget-object v9, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v9, v7, v8}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2418(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 608
    iget-object v9, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v9}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 609
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, " #ratio="

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move-wide v15, v5

    goto/16 :goto_2

    .line 612
    :cond_b
    iget-object v7, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v7}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)J

    move-result-wide v7

    sub-long v7, v5, v7

    long-to-double v7, v7

    const-wide/high16 v13, 0x4089000000000000L    # 800.0

    div-double/2addr v7, v13

    .line 613
    iget-object v9, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v9}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 614
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, " minUp="

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_c
    iget-object v9, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v9}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2100(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)J

    move-result-wide v13

    sub-long v13, v5, v13

    long-to-float v9, v13

    iget-object v13, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v13}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v13

    div-float/2addr v9, v13

    float-to-double v13, v9

    .line 617
    iget-object v9, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v9}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v9

    move-wide v15, v5

    int-to-double v4, v9

    iget-object v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v17

    sub-double v4, v4, v17

    iget-object v6, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v6}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v6

    move-wide/from16 v17, v2

    float-to-double v2, v6

    cmpl-double v2, v4, v2

    if-lez v2, :cond_d

    .line 618
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v4, v2, v2

    mul-double/2addr v13, v4

    .line 620
    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " *ratio="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    cmpg-double v2, v13, v7

    if-gez v2, :cond_e

    goto :goto_1

    :cond_e
    move-wide v7, v13

    .line 627
    :goto_1
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2500(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2200(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :cond_f
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v2

    add-double/2addr v2, v7

    cmpl-double v2, v17, v2

    if-lez v2, :cond_10

    .line 631
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2, v7, v8}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2418(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    goto :goto_2

    .line 633
    :cond_10
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    move-wide/from16 v3, v17

    invoke-static {v2, v3, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 636
    :goto_2
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    move-wide v3, v15

    invoke-static {v2, v3, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2102(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;J)J

    .line 638
    :cond_11
    :goto_3
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v2

    iget-object v4, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ba70d73

    add-float/2addr v4, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    float-to-double v7, v4

    cmpl-double v2, v2, v7

    if-lez v2, :cond_12

    .line 639
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1900(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    mul-float/2addr v3, v6

    float-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 641
    :cond_12
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_13

    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_14

    .line 642
    :cond_13
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    const/16 v4, 0x64

    mul-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2402(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;D)D

    .line 644
    :cond_14
    iget-object v2, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v2}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v2, "BatteryCapacityObserver"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_15
    iget-object v0, v0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$2400(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_16
    const/16 v0, 0x2710

    return v0
.end method

.method public onResetPluggedIn()V
    .locals 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mResetPluggedIn = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1800(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1300(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryCapacityObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mOncePluggedIn:Z

    return-void
.end method

.method public readNode(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateTempNodeValue()V
    .locals 7

    .line 546
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$600(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)Z

    move-result v0

    const-string v1, " mBatteryLevel= "

    const-string v2, "BatteryCapacityObserver"

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mTempNodeValue = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v3, v0

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_0

    .line 552
    :cond_1
    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    .line 553
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    goto :goto_0

    .line 554
    :cond_2
    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    const-wide v5, 0x40c3880000000000L    # 10000.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_3

    .line 555
    iput-wide v5, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    .line 557
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updateTempNodeValue222 mTempNodeValue= "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->mTempNodeValue:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver$Battery;->this$0:Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;->access$1000(Lcn/nubia/redmagickyi/powercharge/observer/battery/NX659BatteryCapacityObserver;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
