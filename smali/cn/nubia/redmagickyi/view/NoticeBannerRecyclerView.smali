.class public Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "NoticeBannerRecyclerView.java"


# instance fields
.field private borderGradientColors:[I

.field private borderGradientPositions:[F

.field private borderPaint:Landroid/graphics/Paint;

.field private borderPath:Landroid/graphics/Path;

.field private borderWidth:I

.field private bottomCorner:I

.field private eventAction:I

.field private eventX:F

.field private eventY:F

.field private indicatorDividerWidth:I

.field private indicatorItemCorner:I

.field private indicatorItemHeight:I

.field private indicatorItemWidth:I

.field private indicatorMarginBottom:I

.field private indicatorSelectedColor:I

.field private indicatorSelectedPaint:Landroid/graphics/Paint;

.field private indicatorUnSelectedColor:I

.field private indicatorUnselectedPaint:Landroid/graphics/Paint;

.field private indicatorsPath:[Landroid/graphics/Path;

.field private itemCount:I

.field private leftCorner:I

.field private pressedBackgroundColor:I

.field private pressedPaint:Landroid/graphics/Paint;

.field private rightCorner:I

.field private shadowGradientColors:[I

.field private shadowPaint:Landroid/graphics/Paint;

.field private shadowRect:Landroid/graphics/Rect;

.field private topCorner:I

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x40800000    # -1.0f

    .line 42
    iput p3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventX:F

    iput p3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventY:F

    .line 55
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->setWillNotDraw(Z)V

    .line 60
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->view_pressed_bg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->pressedBackgroundColor:I

    .line 61
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->noticeBanner_recyclerview_border_gradient_begin:I

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->noticeBanner_recyclerview_border_gradient_end:I

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderGradientColors:[I

    const/4 v1, 0x2

    .line 65
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderGradientPositions:[F

    .line 67
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->noticeBanner_recyclerview_shadow_gradient_begin:I

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->noticeBanner_recyclerview_shadow_gradient_end:I

    .line 69
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowGradientColors:[I

    .line 72
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->noticeBanner_recyclerview_indicator_selected_bg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorSelectedColor:I

    .line 73
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->noticeBanner_recyclerview_indicator_unselected_bg:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorUnSelectedColor:I

    if-eqz p2, :cond_0

    .line 76
    sget-object v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    sget v2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_leftCorner:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->leftCorner:I

    .line 78
    sget v2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_topCorner:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->topCorner:I

    .line 79
    sget v2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_rightCorner:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->rightCorner:I

    .line 80
    sget v2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_bottomCorner:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->bottomCorner:I

    .line 81
    sget v2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_borderWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderWidth:I

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    sget-object v1, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_NoticeBannerRecyclerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_NoticeBannerRecyclerView_indicatorItemWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemWidth:I

    .line 85
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_NoticeBannerRecyclerView_indicatorItemHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemHeight:I

    .line 86
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_NoticeBannerRecyclerView_indicatorItemCorner:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemCorner:I

    .line 87
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_NoticeBannerRecyclerView_indicatorMarginBottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorMarginBottom:I

    .line 88
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->PolygonContainer_NoticeBannerRecyclerView_indicatorDividerWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorDividerWidth:I

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initIndicatorsPath()V
    .locals 9

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->itemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 161
    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemWidth:I

    mul-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorDividerWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 162
    new-array v0, v0, [Landroid/graphics/Path;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 164
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemWidth:I

    iget v5, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorDividerWidth:I

    add-int/2addr v5, v4

    mul-int/2addr v5, v0

    add-int/2addr v3, v5

    .line 166
    iget v5, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemCorner:I

    add-int v6, v3, v5

    add-int/2addr v4, v3

    sub-int v5, v4, v5

    int-to-float v3, v3

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorMarginBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v3, v6

    .line 170
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorMarginBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, v4

    .line 171
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v4

    iget v6, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorMarginBottom:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorItemHeight:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, v5

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorMarginBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 174
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupPaints()V
    .locals 13

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPaint:Landroid/graphics/Paint;

    .line 103
    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderGradientColors:[I

    iget-object v7, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderGradientPositions:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getPaddingLeft()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 113
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v1, v3

    .line 115
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowRect:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v8, v2

    int-to-float v7, v3

    int-to-float v9, v1

    iget-object v10, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowGradientColors:[I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 119
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    .line 123
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    .line 128
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorUnSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->pressedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->viewRect:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getHitRect(Landroid/graphics/Rect;)V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->pressedPaint:Landroid/graphics/Paint;

    .line 135
    iget p0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->pressedBackgroundColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    return-void
.end method

.method private setupPath()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    .line 142
    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->topCorner:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->leftCorner:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->bottomCorner:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->rightCorner:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 190
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 194
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->initIndicatorsPath()V

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->itemCount:I

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 204
    aget-object v2, v2, v1

    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->viewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventX:F

    float-to-int v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->pressedPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventAction:I

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventX:F

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->eventY:F

    .line 220
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->invalidate()V

    .line 221
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->borderPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->setupPaints()V

    .line 97
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->setupPath()V

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->itemCount:I

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->indicatorsPath:[Landroid/graphics/Path;

    .line 155
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/NoticeBannerRecyclerView;->invalidate()V

    return-void
.end method
