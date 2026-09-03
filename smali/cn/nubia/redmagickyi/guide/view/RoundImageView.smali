.class public Lcn/nubia/redmagickyi/guide/view/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundImageView.java"


# instance fields
.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:F

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private viewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/view/RoundImageView;)F
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 48
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->Round_Angle_Image_View:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->Round_Angle_Image_View_radius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    .line 50
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->Round_Angle_Image_View_boarderWidth:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderWidth:F

    .line 51
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->Round_Angle_Image_View_boarderColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderColor:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setmRadius(F)V

    .line 55
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setupPaint()V

    return-void
.end method

.method private setupPaint()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 103
    iget v1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v7, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    iget-object v8, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setmRadius(F)V
    .locals 4

    .line 60
    iget v0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 61
    iput p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mPath:Landroid/graphics/Path;

    .line 65
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRectF:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRectF:Landroid/graphics/RectF;

    .line 68
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_3

    .line 70
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->viewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_2

    .line 71
    new-instance p1, Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;-><init>(Lcn/nubia/redmagickyi/guide/view/RoundImageView;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->viewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 80
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->viewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 81
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setClipToOutline(Z)V

    .line 83
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 85
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setClipToOutline(Z)V

    :goto_0
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->invalidateOutline()V

    :cond_4
    return-void
.end method
