.class public Lcn/nubia/redmagickyi/crop/view/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/view/CropView$Mode;
    }
.end annotation


# static fields
.field private static final BOTTOM_LEFT:I = 0x9

.field private static final BOTTOM_RIGHT:I = 0xc

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_NONE:I = 0x0

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CropView"

.field private static final TOP_LEFT:I = 0x3

.field private static final TOP_RIGHT:I = 0x6


# instance fields
.field private CROP_INFORMATION_TEXT_SIZE:I

.field private mAlphaValue:I

.field private mContext:Landroid/content/Context;

.field public mCurrentBounds:Landroid/graphics/RectF;

.field private mDegree:I

.field private mDensity:F

.field private mDisplayCropMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrixInverse:Landroid/graphics/Matrix;

.field private mHeight:I

.field private mImagePos:I

.field private mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

.field private mMinSideSize:I

.field private mMovingBlock:Z

.field private mMovingEdges:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevX:F

.field private mPrevY:F

.field private mScreenCropBounds:Landroid/graphics/RectF;

.field private mStartPoint:I

.field private mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

.field private mTouchTolerance:F

.field private mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/crop/view/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41900000    # 18.0f

    .line 39
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/view/CropView;->getDensityScale(F)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->CROP_INFORMATION_TEXT_SIZE:I

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mImagePos:I

    .line 43
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mAlphaValue:I

    .line 44
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDegree:I

    .line 45
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    .line 46
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    .line 47
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 49
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    const/high16 p3, -0x40800000    # -1.0f

    .line 50
    iput p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDensity:F

    const/high16 p3, 0x42340000    # 45.0f

    .line 51
    iput p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    .line 52
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMovingEdges:I

    .line 53
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMovingBlock:Z

    const/4 p3, 0x0

    .line 54
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    .line 56
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 57
    iput p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevX:F

    .line 58
    iput p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevY:F

    const/16 p3, 0x5a

    .line 59
    iput p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMinSideSize:I

    .line 70
    sget-object p3, Lcn/nubia/redmagickyi/crop/view/CropView$Mode;->NONE:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mContext:Landroid/content/Context;

    .line 75
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    iget-object p3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 77
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    .line 78
    invoke-virtual {p3, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDensity:F

    .line 83
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string p3, "659"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 87
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    :goto_0
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 1

    const/4 p0, 0x1

    shl-int v0, p0, p3

    sub-int/2addr v0, p0

    and-int p0, p1, v0

    .line 353
    rem-int/2addr p2, p3

    sub-int/2addr p3, p2

    shr-int p3, p0, p3

    shl-int/2addr p0, p2

    and-int/2addr p0, v0

    not-int p2, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private calculateSelectedEdge(FF)I
    .locals 7

    .line 412
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    .line 414
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 415
    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 416
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 417
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 421
    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_0

    add-float/2addr v5, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    sub-float v5, p2, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 425
    :cond_0
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    add-float/2addr v1, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    sub-float/2addr p2, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 431
    :goto_0
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    cmpg-float v2, v3, v1

    if-gtz v2, :cond_2

    add-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    sub-float v1, p1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    cmpg-float v1, v3, v4

    if-gez v1, :cond_2

    or-int/lit8 p2, p2, 0x2

    goto :goto_1

    .line 435
    :cond_2
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    cmpg-float v2, v4, v1

    if-gtz v2, :cond_3

    add-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mTouchTolerance:F

    sub-float/2addr p1, p0

    iget p0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    or-int/lit8 p2, p2, 0x8

    :cond_3
    :goto_1
    return p2
.end method

.method private static checkBlock(I)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkCorner(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static checkEdge(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static checkValid(I)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 391
    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/CropView;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/CropView;->checkEdge(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/CropView;->checkCorner(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private constrainedRotation(F)I
    .locals 0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    const/high16 p0, 0x42b40000    # 90.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method private decode(IF)I
    .locals 2

    .line 315
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/view/CropView;->constrainedRotation(F)I

    move-result p2

    const/16 v0, 0x5a

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    const/4 p2, 0x3

    .line 322
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/crop/view/CropView;->bitCycleLeft(III)I

    move-result p0

    return p0

    :cond_1
    const/4 p2, 0x2

    .line 320
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/crop/view/CropView;->bitCycleLeft(III)I

    move-result p0

    return p0

    :cond_2
    const/4 p2, 0x1

    .line 318
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/crop/view/CropView;->bitCycleLeft(III)I

    move-result p0

    return p0
.end method

.method private drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 248
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 249
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, -0x1

    .line 250
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 251
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 252
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 253
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x41400000    # 12.0f
    .end array-data
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V
    .locals 0

    float-to-int p0, p4

    .line 276
    div-int/lit8 p4, p3, 0x2

    sub-int/2addr p0, p4

    float-to-int p5, p5

    sub-int/2addr p5, p4

    add-int p4, p0, p3

    add-int/2addr p3, p5

    .line 278
    invoke-virtual {p2, p0, p5, p4, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V
    .locals 7

    if-nez p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p5, :cond_8

    const/4 p5, 0x3

    if-eq p6, p5, :cond_1

    if-eqz v0, :cond_2

    .line 287
    :cond_1
    iget v5, p4, Landroid/graphics/RectF;->left:F

    iget v6, p4, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_2
    const/4 p5, 0x6

    if-eq p6, p5, :cond_3

    if-eqz v0, :cond_4

    .line 290
    :cond_3
    iget v5, p4, Landroid/graphics/RectF;->right:F

    iget v6, p4, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_4
    const/16 p5, 0x9

    if-eq p6, p5, :cond_5

    if-eqz v0, :cond_6

    .line 293
    :cond_5
    iget v5, p4, Landroid/graphics/RectF;->left:F

    iget v6, p4, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_6
    const/16 p5, 0xc

    if-eq p6, p5, :cond_7

    if-eqz v0, :cond_10

    .line 296
    :cond_7
    iget v5, p4, Landroid/graphics/RectF;->right:F

    iget v6, p4, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    goto :goto_1

    :cond_8
    and-int/lit8 p5, p6, 0x2

    if-nez p5, :cond_9

    if-eqz v0, :cond_a

    .line 300
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, p4, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_a
    and-int/lit8 p5, p6, 0x8

    if-nez p5, :cond_b

    if-eqz v0, :cond_c

    .line 303
    :cond_b
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, p4, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_c
    and-int/lit8 p5, p6, 0x1

    if-nez p5, :cond_d

    if-eqz v0, :cond_e

    .line 306
    :cond_d
    iget v5, p4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_e
    and-int/lit8 p5, p6, 0x4

    if-nez p5, :cond_f

    if-eqz v0, :cond_10

    .line 309
    :cond_f
    iget v5, p4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_10
    :goto_1
    return-void
.end method

.method private drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 13

    .line 229
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 230
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x80

    const/16 v1, 0xff

    .line 231
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 232
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float v6, v0, v1

    .line 234
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v7, v0, v1

    .line 235
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v6

    .line 236
    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float v8, v1, v7

    const/4 v9, 0x0

    move v10, v0

    move v11, v9

    :goto_0
    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 238
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v1, v10

    move v3, v10

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v10, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v9, v12, :cond_1

    .line 242
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    move-object v0, p1

    move v2, v8

    move v4, v8

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v8, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 259
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 260
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, -0x78000000

    .line 261
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    int-to-float p0, p0

    .line 264
    iget v3, p2, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, p0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 266
    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 267
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 268
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4, p0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 270
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v0, v3, p0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 271
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDensityScale(F)I
    .locals 2

    .line 363
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDensity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    .line 364
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDensity:F

    .line 367
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private moveCurrentSelection(FF)Z
    .locals 3

    .line 329
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMovingEdges:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 337
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/CropView;->moveInner(FF)V

    :cond_1
    return v2
.end method

.method private moveInner(FF)V
    .locals 5

    .line 444
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    .line 445
    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMinSideSize:I

    int-to-float v1, v1

    .line 449
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 451
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 453
    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v2

    .line 455
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v1

    .line 457
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 470
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    int-to-float v1, v2

    .line 471
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 473
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 474
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 475
    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 458
    :cond_2
    :goto_0
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 459
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 460
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    int-to-float v1, v2

    .line 461
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 463
    :cond_3
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 464
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 465
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 478
    :cond_4
    :goto_1
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_7

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    goto :goto_2

    .line 490
    :cond_5
    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 491
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    int-to-float p1, v1

    .line 492
    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 494
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 495
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int v2, p2, v1

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    sub-int/2addr p2, v1

    int-to-float p1, p2

    .line 496
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 479
    :cond_7
    :goto_2
    iget p2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_9

    iget p2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    .line 480
    iget p2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 481
    iget p2, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    int-to-float v2, v1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_8

    int-to-float p2, v1

    .line 482
    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 484
    :cond_8
    iget p2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p1

    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 485
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    sub-int v2, p2, v1

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    sub-int/2addr p2, v1

    int-to-float p1, p2

    .line 486
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 500
    :cond_9
    :goto_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 501
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDegree:I

    if-eqz p1, :cond_d

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_c

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_b

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_a

    .line 527
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    new-instance p2, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 521
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    new-instance p2, Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto/16 :goto_4

    .line 515
    :cond_b
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    new-instance p2, Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float p0, p0

    div-float/2addr v4, p0

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto :goto_4

    .line 509
    :cond_c
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    new-instance p2, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v0

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float p0, p0

    div-float/2addr v4, p0

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto :goto_4

    .line 503
    :cond_d
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    new-instance p2, Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    :goto_4
    return-void
.end method

.method private roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 3

    .line 385
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 386
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private selectEdge(FF)Z
    .locals 0

    .line 404
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/CropView;->calculateSelectedEdge(FF)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/CropView;->selectEdge(I)Z

    move-result p0

    return p0
.end method

.method private selectEdge(I)Z
    .locals 1

    .line 395
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/CropView;->checkValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMovingEdges:I

    const/4 p0, 0x1

    return p0

    .line 396
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad edge selected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 166
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/crop/view/CropView;->drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 105
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mContext:Landroid/content/Context;

    check-cast p1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getVideoView()Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 106
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceWidth()I

    move-result p1

    .line 107
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceHeight()I

    move-result p2

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getViewWidth()I

    move-result v0

    .line 109
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getViewHeight()I

    move-result v1

    .line 111
    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    if-eq v2, p2, :cond_4

    .line 112
    :cond_0
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    .line 113
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    if-le p1, p2, :cond_1

    mul-int/2addr v0, p2

    .line 115
    div-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_3

    mul-int v2, p1, v1

    .line 117
    div-int/2addr v2, v0

    if-le v2, p2, :cond_2

    mul-int/2addr v0, p2

    .line 118
    div-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    goto :goto_0

    :cond_2
    mul-int v2, p1, v1

    .line 119
    div-int/2addr v2, v0

    if-ge v2, p2, :cond_3

    mul-int/2addr v1, p1

    .line 120
    div-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    .line 123
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mStartPoint:I

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    sub-int v3, p1, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v1

    sub-int v5, p1, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    .line 125
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    .line 127
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    if-eqz p1, :cond_9

    .line 128
    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDegree:I

    if-eqz p2, :cond_8

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_7

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_6

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_5

    .line 154
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 148
    :cond_5
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 142
    :cond_6
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 136
    :cond_7
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 130
    :cond_8
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mCurrentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onSetVideoCropArea(Landroid/graphics/RectF;)V

    .line 161
    :cond_9
    :goto_1
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mWidth:I

    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/CropView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 177
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x2

    .line 180
    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v1, v5, v3

    .line 183
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 184
    aget v0, v5, v6

    .line 185
    aget v1, v5, v3

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    sget-object v2, Lcn/nubia/redmagickyi/crop/view/CropView$Mode;->MOVE:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    if-ne p1, v2, :cond_5

    .line 209
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevX:F

    sub-float p1, v0, p1

    .line 210
    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevY:F

    sub-float v2, v1, v2

    .line 211
    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/crop/view/CropView;->moveCurrentSelection(FF)Z

    .line 212
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevX:F

    .line 213
    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevY:F

    goto :goto_0

    .line 198
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    sget-object v2, Lcn/nubia/redmagickyi/crop/view/CropView$Mode;->MOVE:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    if-ne p1, v2, :cond_5

    .line 199
    invoke-direct {p0, v6}, Lcn/nubia/redmagickyi/crop/view/CropView;->selectEdge(I)Z

    .line 200
    iput-boolean v6, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMovingBlock:Z

    .line 201
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevX:F

    .line 202
    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevY:F

    .line 203
    sget-object p1, Lcn/nubia/redmagickyi/crop/view/CropView$Mode;->NONE:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    goto :goto_0

    .line 188
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    sget-object v2, Lcn/nubia/redmagickyi/crop/view/CropView$Mode;->NONE:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    if-ne p1, v2, :cond_5

    .line 189
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/CropView;->selectEdge(FF)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x10

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/CropView;->selectEdge(I)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mMovingBlock:Z

    .line 192
    :cond_4
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevX:F

    .line 193
    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mPrevY:F

    .line 194
    sget-object p1, Lcn/nubia/redmagickyi/crop/view/CropView$Mode;->MOVE:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mState:Lcn/nubia/redmagickyi/crop/view/CropView$Mode;

    .line 220
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/CropView;->invalidate()V

    return v3
.end method

.method public setAdjustDegree(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mDegree:I

    return-void
.end method

.method public setListener(Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/CropView;->mListener:Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    return-void
.end method
