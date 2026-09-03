.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;
.super Landroid/view/SurfaceView;
.source "IconBackgroundView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "IconBackgroundView"


# instance fields
.field private isCreated:Z

.field private isLargeIcon:Z

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private performRolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method private handleDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    .line 115
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 117
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getDegress()F

    move-result v0

    .line 118
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getSmallRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 121
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->performRolling:Z

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 124
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getLargeRingIndicatorBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getSmallRingIndicatorBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 2

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    .line 45
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->setZOrderOnTop(Z)V

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->init()V

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->addListeners(Ljava/lang/Object;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;)V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 105
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 108
    throw v1

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public onDegressChanged(F)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->refreshUI()V

    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eq v0, p1, :cond_0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isLargeIcon:Z

    .line 67
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setRingRolling(Z)V
    .locals 1

    .line 53
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->performRolling:Z

    .line 54
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->start()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->stop()V

    .line 60
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->refreshUI()V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "surfaceChanged = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconBackgroundView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isCreated:Z

    .line 80
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->refreshUI()V

    .line 81
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->performRolling:Z

    if-eqz p0, :cond_0

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->start()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "surfaceCreated = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconBackgroundView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceDestroyed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconBackgroundView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconBackgroundView;->isCreated:Z

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->stop()V

    return-void
.end method
