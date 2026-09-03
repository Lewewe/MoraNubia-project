.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;
.super Landroid/view/SurfaceView;
.source "IconBackgroundView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$OnRingListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "IconBackgroundView"


# instance fields
.field protected bgPaint:Landroid/graphics/Paint;

.field protected isCreated:Z

.field protected isLargeIcon:Z

.field protected matrix:Landroid/graphics/Matrix;

.field protected ringPaint:Landroid/graphics/Paint;

.field protected state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

.field protected windowAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->windowAlpha:F

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->windowAlpha:F

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->None:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->windowAlpha:F

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->bgPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    .line 51
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->setZOrderOnTop(Z)V

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->init()V

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->addListeners(Ljava/lang/Object;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory$OnRingListener;)V

    return-void
.end method


# virtual methods
.method protected getBgSize()I
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_large_width:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_small_width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getMaxStrokeWidth()F
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p8_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 121
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 p0, 0x40400000    # 3.0f

    div-float/2addr v0, p0

    :goto_0
    return v0
.end method

.method protected getMinStrokeWidth()F
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 116
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 p0, 0x40400000    # 3.0f

    div-float/2addr v0, p0

    :goto_0
    return v0
.end method

.method protected getRingSize()I
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_large_ring_size:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_small_ring_size:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getTopMargin()I
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_large_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_large_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_icon_size_small_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0
.end method

.method protected handleDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 176
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 182
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getSmallRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v7

    invoke-direct {v5, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 185
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 186
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    const-string v2, "#672D145A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getRingSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 189
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne v1, v2, :cond_1

    .line 192
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getBeatingValue()F

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getMaxStrokeWidth()F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getMinStrokeWidth()F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getMinStrokeWidth()F

    move-result v1

    add-float/2addr v2, v1

    .line 195
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v4, "#FFB2B1F7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v2, v5, v4, v1}, [I

    move-result-object v1

    const/4 v2, 0x4

    .line 197
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 198
    new-instance v4, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 199
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 201
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne v1, v2, :cond_2

    .line 202
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getRollingValue()F

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    .line 204
    :goto_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x42340000    # 45.0f

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2, v1, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 205
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 207
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getBgSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getRingSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getMinStrokeWidth()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onBeatingValueChanged(F)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    return-void
.end method

.method public onRollingValueChanged(F)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    return-void
.end method

.method public onWindowAlphaChanged(F)V
    .locals 1

    .line 92
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->windowAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 93
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->windowAlpha:F

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method protected refreshUI()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 166
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 169
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public setIconState(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne v0, p1, :cond_0

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    .line 63
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne p1, v0, :cond_1

    .line 64
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz p1, :cond_3

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->stopBeating()V

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->startRolling()V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne p1, v0, :cond_2

    .line 70
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz p1, :cond_3

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->stopRolling()V

    .line 72
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->startBeating()V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    goto :goto_0

    .line 76
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz p1, :cond_3

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->stopRolling()V

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->stopBeating()V

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eq v0, p1, :cond_0

    .line 86
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isLargeIcon:Z

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 131
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

    .line 132
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isCreated:Z

    .line 133
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->refreshUI()V

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne p1, p2, :cond_0

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->startRolling()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne p0, p1, :cond_1

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->startBeating()V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 126
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

    .line 143
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

    .line 144
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->isCreated:Z

    .line 145
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->stopRolling()V

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->stopBeating()V

    return-void
.end method
