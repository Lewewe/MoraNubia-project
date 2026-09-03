.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;
.super Landroid/widget/ScrollView;
.source "LimitedScrollView.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->LimitedScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->LimitedScrollView_LimitedScrollView_maxHeight:I

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->mMaxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->mMaxHeight:I

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object p2

    const/4 v0, 0x0

    .line 35
    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int/lit16 p2, p2, 0x242

    div-int/lit16 p2, p2, 0x4c0

    .line 36
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->mMaxHeight:I

    if-le v0, p2, :cond_0

    .line 37
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->mMaxHeight:I

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 0

    .line 51
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->mMaxHeight:I

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 44
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/LimitedScrollView;->mMaxHeight:I

    if-lez v0, :cond_0

    const/high16 p2, -0x80000000

    .line 45
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
