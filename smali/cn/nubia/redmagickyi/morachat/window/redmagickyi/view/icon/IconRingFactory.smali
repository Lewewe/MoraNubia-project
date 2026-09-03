.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;
.super Ljava/lang/Object;
.source "IconRingFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$CounterEventListener;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;


# instance fields
.field private volatile counter:Lcn/nubia/redmagickyi/util/Counter;

.field private degress:F

.field private largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

.field private largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;",
            ">;"
        }
    .end annotation
.end field

.field private smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

.field private smallRingIndicatorBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;)Lcn/nubia/redmagickyi/util/Counter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;)F
    .locals 0

    .line 22
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->degress:F

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->degress:F

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;)Ljava/util/HashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->sInstance:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->sInstance:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    .line 46
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->sInstance:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;
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
    .locals 4

    if-eqz p0, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 52
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    instance-of p1, p0, Landroid/graphics/drawable/VectorDrawable;

    if-nez p1, :cond_4

    instance-of p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported drawable type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method public addListeners(Ljava/lang/Object;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDegress()F
    .locals 0

    .line 95
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->degress:F

    return p0
.end method

.method public getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getLargeRingIndicatorBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSmallRingBacgoundBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSmallRingIndicatorBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->smallRingIndicatorBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_floatwindow_bg:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->largeRingBacgoundBitmap:Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_floatwindow_light:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->largeRingIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_minifloat_bg:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->smallRingBacgoundBitmap:Landroid/graphics/Bitmap;

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->smallRingIndicatorBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_pic_minifloat_light:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->smallRingIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->listeners:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$CounterEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$CounterEventListener;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$1;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 77
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 78
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 80
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setRate(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 81
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setForever(I)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
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

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->counter:Lcn/nubia/redmagickyi/util/Counter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
