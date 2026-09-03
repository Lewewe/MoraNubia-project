.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;
.super Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;
.source "IconForgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IconForgroundView"


# instance fields
.field private clipedPath:Landroid/graphics/Path;

.field private isModelReady:Z

.field private onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method private getClipedPath(II)Landroid/graphics/Path;
    .locals 5

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 113
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getTopMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne v0, v1, :cond_1

    .line 116
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getBeatingValue()F

    move-result v4

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getMaxStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    .line 119
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    div-float/2addr p1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getRingSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;->onIconClicked()V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconBackgroundView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected handleDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    .line 68
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->windowAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getClipedPath(II)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 80
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 81
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 84
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Beating:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne v1, v2, :cond_1

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getBeatingValue()F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getMaxStrokeWidth()F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v1

    add-float/2addr v2, v1

    .line 90
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
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

    .line 92
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 93
    new-instance v4, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 94
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconState;

    if-ne v1, v2, :cond_2

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconRingFactory;->getRollingValue()F

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 99
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x42340000    # 45.0f

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2, v1, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 100
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 101
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getBgSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getRingSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
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

.method public isModelReady()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->isModelReady:Z

    return p0
.end method

.method public setModelReady(Z)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->isModelReady:Z

    if-eq v0, p1, :cond_0

    .line 41
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->isModelReady:Z

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setOnViewClickedListener(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/icon/IconForgroundView$OnViewClickedListener;

    return-void
.end method
