.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;
.super Landroid/view/View;
.source "MarqueeTextView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private mCounter:Lcn/nubia/redmagickyi/util/Counter;

.field private mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private percent:F

.field private scrollToLeft:Z

.field private text:Ljava/lang/String;

.field private textWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->scrollToLeft:Z

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->initView()V

    return-void
.end method

.method private calculateScrollingLen()I
    .locals 4

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 4

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const-string v2, "#FF4E3DA5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mCounter:Lcn/nubia/redmagickyi/util/Counter;

    return-void
.end method

.method private startScroll()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mCounter:Lcn/nubia/redmagickyi/util/Counter;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->calculateScrollingLen()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->textWidth:I

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getMaxWidth()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v0, v2

    .line 109
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;

    if-eqz v1, :cond_2

    .line 110
    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;->onScrollBegin()V

    .line 112
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mCounter:Lcn/nubia/redmagickyi/util/Counter;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    return-void
.end method

.method private stopScroll()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mCounter:Lcn/nubia/redmagickyi/util/Counter;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->percent:F

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_180_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getViewWidth()I
    .locals 1

    .line 148
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->calculateScrollingLen()I

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getMaxWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public isScrolling()Z
    .locals 0

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCounterValueChanged(FZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 85
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;->onScrollEnd()V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->stopScroll()V

    goto :goto_0

    .line 90
    :cond_1
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->percent:F

    .line 91
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->invalidate()V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->textWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->percent:F

    mul-float/2addr v0, v1

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 70
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->scrollToLeft:Z

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    neg-float v0, v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mOnScrollStateChangedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView$OnScrollStateChangedListener;

    return-void
.end method

.method public setScrollToLeft(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->scrollToLeft:Z

    return-void
.end method

.method public setText(Ljava/lang/String;J)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->stopScroll()V

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->text:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->mCounter:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/MarqueeTextView;->startScroll()V

    return-void
.end method
