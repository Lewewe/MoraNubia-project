.class public Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;
.super Landroid/widget/LinearLayout;
.source "UMExpandLayout.java"


# instance fields
.field private animationDuration:J

.field private heightAnimation:Landroid/animation/ValueAnimator;

.field private isExpand:Z

.field private maxViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isExpand:Z

    const-wide/16 p1, 0xc8

    .line 16
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->animationDuration:J

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->setViewHeight(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;)I
    .locals 0

    .line 13
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    return p0
.end method

.method private animateToggle()V
    .locals 6

    .line 54
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isExpand:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v0, v4, v3

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->getViewHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    new-array v4, v4, [F

    aput v0, v4, v3

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->heightAnimation:Landroid/animation/ValueAnimator;

    .line 55
    iget-wide v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->animationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->heightAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->heightAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelAnimate()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->heightAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getViewHeight()I
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 47
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method

.method private setViewHeight(I)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 41
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isExpand:Z

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->animateToggle()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->cancelAnimate()V

    .line 87
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    if-gtz v1, :cond_1

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$2;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->setViewHeight(I)V

    :goto_0
    return-void
.end method

.method public expand()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isExpand:Z

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->animateToggle()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->cancelAnimate()V

    .line 109
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    if-gtz v0, :cond_1

    .line 110
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$3;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->setViewHeight(I)V

    :goto_0
    return-void
.end method

.method public isExpand()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isExpand:Z

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 34
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    if-gtz p1, :cond_0

    .line 35
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->maxViewHeight:I

    :cond_0
    return-void
.end method

.method public toggleExpand()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->isExpand:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->collapse()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->expand()V

    :goto_0
    return-void
.end method
