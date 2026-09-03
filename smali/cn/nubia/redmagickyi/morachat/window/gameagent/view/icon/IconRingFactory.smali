.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;
.super Ljava/lang/Object;
.source "IconRingFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$RollingCounterEventListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$BeatingCounterEventListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$OnRingListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;


# instance fields
.field private beatValue:F

.field private volatile beatingCounter:Lcn/nubia/redmagickyi/util/Counter;

.field private largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

.field private largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$OnRingListener;",
            ">;"
        }
    .end annotation
.end field

.field private rollVaue:F

.field private volatile rollingCounter:Lcn/nubia/redmagickyi/util/Counter;

.field private smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

.field private smallRingIndicatorBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;)F
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollVaue:F

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollVaue:F

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;)Ljava/util/HashMap;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;)F
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatValue:F

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatValue:F

    return p1
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->sInstance:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->sInstance:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    .line 41
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->sInstance:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 45
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->initBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addListeners(Ljava/lang/Object;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$OnRingListener;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBeatingValue()F
    .locals 0

    .line 103
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatValue:F

    return p0
.end method

.method public getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getLargeRingIndicatorBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getRollingValue()F
    .locals 0

    .line 79
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollVaue:F

    return p0
.end method

.method public getSmallRingBacgoundBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSmallRingIndicatorBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->smallRingIndicatorBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_floatwindow_gameagent_bg:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_floatwindow_light:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_floatwindow_gameagent_bg:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->smallRingIndicatorBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_minifloat_light:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->smallRingIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized startBeating()V
    .locals 4

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$BeatingCounterEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$BeatingCounterEventListener;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$1;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 85
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 86
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v2, 0xa

    .line 88
    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/util/Counter;->setRate(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 89
    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setRepeateMode(I)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public declared-synchronized startRolling()V
    .locals 3

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$RollingCounterEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$RollingCounterEventListener;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$1;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 61
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 64
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setRate(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v1, 0x320

    .line 65
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setRepeateMode(I)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public declared-synchronized stopBeating()V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->beatingCounter:Lcn/nubia/redmagickyi/util/Counter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRolling()V
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->rollingCounter:Lcn/nubia/redmagickyi/util/Counter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
