.class public Lcn/nubia/redmagickyi/care/utils/ShakeUtils;
.super Ljava/lang/Object;
.source "ShakeUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;
    }
.end annotation


# static fields
.field private static final MIN_SHAKE_INTERVAL:I = 0x400

.field private static final SHAKE_INTERVAL_MILLSECOND:I = 0x37

.field private static SPEED_SHAKE_MILLSECONDS:I = 0x190


# instance fields
.field private mLastShakeTime:J

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mOnShakeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;",
            ">;"
        }
    .end annotation
.end field

.field mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastShakeTime:J

    .line 21
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastUpdateTime:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastX:F

    .line 28
    iput v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastY:F

    .line 29
    iput v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastZ:F

    .line 37
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private startShake(D)V
    .locals 6

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastShakeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 115
    :cond_0
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastShakeTime:J

    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;

    invoke-interface {v1, p1, p2}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;->onShake(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bindShakeListener(Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x37

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    return-void

    .line 74
    :cond_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    return-void

    .line 78
    :cond_2
    iput-wide v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastUpdateTime:J

    .line 80
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 81
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 82
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 84
    iget v7, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastX:F

    sub-float v7, v0, v7

    .line 85
    iget v8, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastY:F

    sub-float v8, v4, v8

    .line 86
    iget v9, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastZ:F

    sub-float v9, v6, v9

    .line 88
    iput v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastX:F

    .line 89
    iput v4, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastY:F

    .line 90
    iput v6, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastZ:F

    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v9, v9

    add-float/2addr v7, v9

    float-to-double v6, v7

    .line 92
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    long-to-double v2, v2

    div-double/2addr v6, v2

    .line 94
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    if-ne p1, v5, :cond_4

    .line 96
    iget p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastX:F

    mul-float/2addr p1, p1

    iget v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastY:F

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mLastZ:F

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_3

    .line 99
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 100
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;->onGravityFall()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_3
    sget p1, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->SPEED_SHAKE_MILLSECONDS:I

    int-to-double v0, p1

    cmpl-double p1, v6, v0

    if-ltz p1, :cond_4

    .line 103
    invoke-direct {p0, v6, v7}, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->startShake(D)V

    :cond_4
    return-void
.end method

.method public unBindShakeListener(Lcn/nubia/redmagickyi/care/utils/ShakeUtils$OnShakeListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mOnShakeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/ShakeUtils;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
