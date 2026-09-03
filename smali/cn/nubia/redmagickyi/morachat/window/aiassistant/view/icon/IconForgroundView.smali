.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;
.super Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;
.source "IconForgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accompanyPaint:Landroid/graphics/Paint;

.field private bitmapAccompanyOff:Landroid/graphics/Bitmap;

.field private bitmapAccompanyOn:Landroid/graphics/Bitmap;

.field private clipedPath:Landroid/graphics/Path;

.field private isAccompanyOn:Z

.field private isIconAtRight:Z

.field private isModelReady:Z

.field private onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;

.field private rectAccompanyBtn:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconForgroundView-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method private getAccompanyBtnRect(II)Landroid/graphics/RectF;
    .locals 4

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    .line 188
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isLargeIcon:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f2aaaab

    .line 189
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isIconAtRight:Z

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    int-to-float p1, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 191
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v0

    sub-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 192
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getAccompanySize()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 193
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getAccompanySize()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 195
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 196
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v0

    sub-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 197
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getAccompanySize()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 198
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getAccompanySize()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 201
    :cond_2
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    return-object p0
.end method

.method private getAccompanySize()I
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isLargeIcon:Z

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getClipedPath(II)Landroid/graphics/Path;
    .locals 5

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 175
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getTopMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne v0, v1, :cond_1

    .line 178
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getBeatingValue()F

    move-result v4

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getMaxStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    .line 181
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    div-float/2addr p1, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getTopMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getRingSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->setClickable(Z)V

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->accompanyPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->bitmapAccompanyOn:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_pin_on:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->bitmapAccompanyOn:Landroid/graphics/Bitmap;

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->bitmapAccompanyOff:Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_pin_off:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->bitmapAccompanyOff:Landroid/graphics/Bitmap;

    return-void
.end method

.method private isRectClicked(Landroid/graphics/RectF;FF)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 103
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isLargeIcon:Z

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isRectClicked(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;->onAccompanyClicked()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;->onIconClicked()V

    .line 115
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconBackgroundView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected handleDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 128
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 129
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->windowAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getClipedPath(II)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 137
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getTopMargin()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 138
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 140
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 141
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Beating:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne v2, v3, :cond_0

    .line 144
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getBeatingValue()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getMaxStrokeWidth()F

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v5

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v2

    add-float/2addr v3, v2

    .line 147
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v5, "#FFB2B1F7"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    filled-new-array {v3, v6, v5, v2}, [I

    move-result-object v2

    const/4 v3, 0x4

    .line 149
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 150
    new-instance v5, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {v5, v6, v7, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 151
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 153
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->state:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;->Rolling:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingState;

    if-ne v2, v3, :cond_1

    .line 154
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->getRollingValue()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v4

    .line 156
    :goto_1
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42340000    # 45.0f

    add-float/2addr v2, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v3, v2, v5, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 157
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getTopMargin()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 158
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 159
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getRingSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getMinStrokeWidth()F

    move-result v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 165
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isAccompanyOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->bitmapAccompanyOn:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->bitmapAccompanyOff:Landroid/graphics/Bitmap;

    .line 166
    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getIconSize()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->getAccompanyBtnRect(II)Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->accompanyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

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

    .line 60
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isModelReady:Z

    return p0
.end method

.method public setAccompanyOn(Z)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isAccompanyOn:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isAccompanyOn:Z

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setIconAtRight(Z)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isIconAtRight:Z

    if-eq v0, p1, :cond_0

    .line 72
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isIconAtRight:Z

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isLargeIcon:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isLargeIcon:Z

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->rectAccompanyBtn:Landroid/graphics/RectF;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setModelReady(Z)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isModelReady:Z

    if-eq v0, p1, :cond_0

    .line 54
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->isModelReady:Z

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setOnViewClickedListener(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconForgroundView$OnViewClickedListener;

    return-void
.end method
