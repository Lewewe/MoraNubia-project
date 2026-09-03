.class public Lcn/nubia/redmagickyi/view/pageslider/PageContainer;
.super Landroid/widget/FrameLayout;
.source "PageContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;
    }
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private onDragListener:Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;

.field private recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownX:F

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownX:F

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownX:F

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 39
    new-instance v0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public getRecyclerView()Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownX:F

    sub-float/2addr v0, v1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    sub-float/2addr v1, v2

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v2, v1, v0

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 63
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownX:F

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 73
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 78
    iget v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 102
    iput v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    sub-float/2addr v0, v1

    .line 85
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_drag_offset_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    const/high16 v2, -0x40000000    # -2.0f

    if-lez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->onDragListener:Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;

    if-eqz v0, :cond_3

    .line 87
    iput v2, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 89
    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;->onDragTop()V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_drag_offset_max:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->recyclerView:Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->onDragListener:Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;

    if-eqz v0, :cond_3

    .line 93
    iput v2, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->mDownY:F

    .line 95
    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;->onDragBottom()V

    return v1

    .line 105
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnDragListener(Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PageContainer;->onDragListener:Lcn/nubia/redmagickyi/view/pageslider/PageContainer$OnDragListener;

    return-void
.end method
