.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;
.super Landroid/view/SurfaceView;
.source "IconBackgroundView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$OnRingListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected bgPaint:Landroid/graphics/Paint;

.field protected isCreated:Z

.field protected isLargeIcon:Z

.field protected matrix:Landroid/graphics/Matrix;

.field protected ringPaint:Landroid/graphics/Paint;

.field protected state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

.field protected windowAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconBackgroundView-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->None:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->windowAlpha:F

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->None:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->windowAlpha:F

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->None:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->windowAlpha:F

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->bgPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    .line 52
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->setZOrderOnTop(Z)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->init()V

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->addListeners(Ljava/lang/Object;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$OnRingListener;)V

    return-void
.end method


# virtual methods
.method protected getBgSize()I
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_large_bg_size:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_small_bg_size:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getIconSize()I
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_large_width:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_small_width:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getMaxStrokeWidth()F
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p8_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 126
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

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

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 121
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

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

    .line 116
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_large_ring_size:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_small_ring_size:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getTopMargin()I
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_large_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_large_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_aiassistant_window_icon_size_small_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0
.end method

.method protected handleDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 181
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 187
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getSmallRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 188
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getBgSize()I

    move-result v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getBgSize()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getBestRect(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getBestRect(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v1

    .line 190
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 193
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    const-string v2, "#672D145A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getRingSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 196
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne v1, v2, :cond_1

    .line 199
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getBeatingValue()F

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getMaxStrokeWidth()F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getMinStrokeWidth()F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getMinStrokeWidth()F

    move-result v1

    add-float/2addr v2, v1

    .line 202
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
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

    .line 204
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 205
    new-instance v4, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 206
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 208
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne v1, v2, :cond_2

    .line 209
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getRollingValue()F

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    .line 211
    :goto_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x42340000    # 45.0f

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2, v1, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 212
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 214
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getRingSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getMinStrokeWidth()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

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

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    return-void
.end method

.method public onRollingValueChanged(F)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    return-void
.end method

.method public onWindowAlphaChanged(F)V
    .locals 1

    .line 93
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->windowAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 94
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->windowAlpha:F

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method protected refreshUI()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 171
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 174
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public setIconRingState(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne v0, p1, :cond_0

    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    .line 64
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne p1, v0, :cond_1

    .line 65
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz p1, :cond_3

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->stopBeating()V

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->startRolling()V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    goto :goto_0

    .line 70
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne p1, v0, :cond_2

    .line 71
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz p1, :cond_3

    .line 72
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->stopRolling()V

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->startBeating()V

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    goto :goto_0

    .line 77
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isCreated:Z

    if-eqz p1, :cond_3

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->stopRolling()V

    .line 79
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->stopBeating()V

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    if-eq v0, p1, :cond_0

    .line 87
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isLargeIcon:Z

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 136
    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "surfaceChanged = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isCreated:Z

    .line 138
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->refreshUI()V

    .line 139
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne p1, p2, :cond_0

    .line 140
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->startRolling()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne p0, p1, :cond_1

    .line 142
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->startBeating()V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 131
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceCreated = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 148
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceDestroyed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->isCreated:Z

    .line 150
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->stopRolling()V

    .line 151
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->stopBeating()V

    return-void
.end method
