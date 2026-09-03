.class public Lcn/nubia/redmagickyi/view/PolygonContainer;
.super Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRelativeLayout;
.source "PolygonContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;
    }
.end annotation


# instance fields
.field private borderPath:Landroid/graphics/Path;

.field private borderWidth:I

.field private bottomCorner:I

.field private fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

.field private innerPaddingLeft:I

.field private innerPaddingRight:I

.field private leftCorner:I

.field private mirrorBackgroundBitmap:Z

.field private originalDrawable:Landroid/graphics/drawable/Drawable;

.field private pressedBackgroundColor:I

.field private pressedPaint:Landroid/graphics/Paint;

.field private reverse:Z

.field private rightCorner:I

.field private scaledBitmap:Landroid/graphics/Bitmap;

.field private selectedBorderGradientColors:[I

.field private selectedBorderGradientPositions:[F

.field private selectedPaint:Landroid/graphics/Paint;

.field private topCorner:I

.field private unselectedMaskColor:I

.field private unselectedPaint:Landroid/graphics/Paint;

.field private xfermodeDstOut:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/PolygonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/PolygonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->xfermodeDstOut:Landroid/graphics/PorterDuffXfermode;

    const/4 p3, 0x1

    .line 60
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->mirrorBackgroundBitmap:Z

    .line 81
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/PolygonContainer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private centerCrop(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 466
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    div-float v1, p0, v0

    div-float v2, p2, p3

    cmpg-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    div-float/2addr p2, p0

    mul-float v1, v0, p2

    sub-float/2addr v1, p3

    div-float/2addr v1, v2

    div-float/2addr v1, p2

    move p3, v1

    move v1, v3

    goto :goto_0

    :cond_0
    div-float/2addr p3, v0

    mul-float v1, p0, p3

    sub-float/2addr v1, p2

    div-float/2addr v1, v2

    div-float/2addr v1, p3

    move p2, p3

    move p3, v3

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr p2, v2

    .line 478
    invoke-virtual {v6, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    sub-float/2addr p0, v1

    cmpl-float p2, p0, v3

    if-lez p2, :cond_1

    sub-float/2addr v0, p3

    cmpl-float p2, v0, v3

    if-lez p2, :cond_1

    if-eqz p1, :cond_1

    .line 481
    :try_start_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int v2, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int v3, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int v4, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int v5, p0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 484
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->setWillNotDraw(Z)V

    .line 86
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->polygoncontainner_unselected_mask_bg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedMaskColor:I

    .line 87
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->view_pressed_bg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->pressedBackgroundColor:I

    .line 88
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->polygoncontainner_border_gradient_begin:I

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->polygoncontainner_border_gradient_begin:I

    .line 90
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->polygoncontainner_border_gradient_end:I

    .line 91
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedBorderGradientColors:[I

    const/4 v1, 0x3

    .line 93
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedBorderGradientPositions:[F

    if-eqz p2, :cond_1

    .line 96
    sget-object v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 97
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_leftCorner:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    .line 98
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_topCorner:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    .line 99
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_rightCorner:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    .line 100
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_bottomCorner:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    .line 101
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_innerPaddingLeft:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    .line 102
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_innerPaddingRight:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    .line 103
    invoke-static {}, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->values()[Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_fillCorner:I

    sget-object v3, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->ordinal()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    .line 104
    sget v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_borderWidth:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v3, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    if-ne v2, v3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->polygoncontainner_fill_corner_border_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    .line 105
    sget p1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_reverse:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->reverse:Z

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    sget p1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_selected:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/PolygonContainer;->setSelected(Z)V

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isRtl()Z
    .locals 0

    .line 397
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private setupClipPath()Landroid/graphics/Path;
    .locals 5

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 158
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->reverse:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 159
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    int-to-float v1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    if-lez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    if-lez v1, :cond_1

    .line 172
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 178
    :cond_2
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    if-lez v1, :cond_3

    .line 182
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    if-lez v1, :cond_4

    .line 189
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 195
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 197
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    if-lez v1, :cond_6

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 206
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    if-lez v1, :cond_7

    .line 208
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 214
    :cond_8
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    int-to-float v1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    if-lez v1, :cond_9

    .line 218
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    if-lez v1, :cond_a

    .line 225
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_0
    return-object v0
.end method

.method private setupFillPath()Landroid/graphics/Path;
    .locals 5

    .line 235
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 236
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v2, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->LEFT_TOP:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 237
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->reverse:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    iget v4, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    iget v4, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 259
    :cond_2
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 260
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 266
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v2, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->RIGHT_BOTTOM:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    if-ne v1, v2, :cond_7

    .line 267
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->reverse:Z

    if-eqz v1, :cond_5

    .line 268
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 270
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 275
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0

    .line 282
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 284
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 285
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 289
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 290
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_7
    :goto_0
    return-object v0
.end method

.method private setupPaints()V
    .locals 10

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    .line 122
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedBorderGradientColors:[I

    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedBorderGradientPositions:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedBorderGradientColors:[I

    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedBorderGradientPositions:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    .line 134
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedMaskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->pressedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->pressedPaint:Landroid/graphics/Paint;

    .line 142
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->pressedBackgroundColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method

.method private setupPath()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v1, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->setupClipPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->setupFillPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 318
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    if-eqz v0, :cond_d

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    sget-object v1, Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;->NONE:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_7

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v11, v0

    const/4 v12, 0x0

    const/16 v13, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 325
    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 326
    instance-of v7, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 327
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0, v1, v7, v8}, Lcn/nubia/redmagickyi/view/PolygonContainer;->centerCrop(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 328
    :cond_0
    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v7

    iget v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 330
    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 333
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 335
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->mirrorBackgroundBitmap:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v3, v2, v1, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 338
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 343
    :cond_3
    iget v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    if-lez v1, :cond_5

    .line 344
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->selectedPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 347
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 348
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->pressedPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 351
    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_3

    .line 353
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v11, v0

    const/4 v12, 0x0

    const/16 v13, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 355
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 356
    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_9

    .line 357
    instance-of v7, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_8

    .line 358
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0, v1, v7, v8}, Lcn/nubia/redmagickyi/view/PolygonContainer;->centerCrop(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 359
    :cond_8
    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_9

    .line 360
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    iget v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    sub-int/2addr v1, v7

    iget v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingRight:I

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 361
    iget-object v7, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 364
    :cond_9
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->mirrorBackgroundBitmap:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 367
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v3, v2, v1, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 369
    :cond_a
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->innerPaddingLeft:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 374
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 375
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v10, v1

    iget-object v11, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->pressedPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 379
    :cond_c
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->xfermodeDstOut:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 381
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 382
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 384
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 387
    :cond_d
    :goto_3
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 393
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->invalidate()V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getBottomCorner()I
    .locals 0

    .line 425
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    return p0
.end method

.method public getFillCornerMode()Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;
    .locals 0

    .line 437
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    return-object p0
.end method

.method public getLeftCorner()I
    .locals 0

    .line 401
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    return p0
.end method

.method public getRightCorner()I
    .locals 0

    .line 417
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    return p0
.end method

.method public getTopCorner()I
    .locals 0

    .line 409
    iget p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    return p0
.end method

.method public isMirrorBackgroundBitmap()Z
    .locals 0

    .line 453
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->mirrorBackgroundBitmap:Z

    return p0
.end method

.method public isReverse()Z
    .locals 0

    .line 445
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->reverse:Z

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRelativeLayout;->onSizeChanged(IIII)V

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->setupPaints()V

    .line 116
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->setupPath()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->originalDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 313
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/PolygonContainer;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->borderWidth:I

    return-void
.end method

.method public setBottomCorner(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->bottomCorner:I

    return-void
.end method

.method public setFillCornerMode(Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->fillCornerMode:Lcn/nubia/redmagickyi/view/PolygonContainer$FillCornerMode;

    return-void
.end method

.method public setLeftCorner(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->leftCorner:I

    return-void
.end method

.method public setMirrorBackgroundBitmap(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->mirrorBackgroundBitmap:Z

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->reverse:Z

    return-void
.end method

.method public setRightCorner(I)V
    .locals 0

    .line 421
    iput p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->rightCorner:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 302
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorRelativeLayout;->setSelected(Z)V

    return-void
.end method

.method public setTopCorner(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcn/nubia/redmagickyi/view/PolygonContainer;->topCorner:I

    return-void
.end method
