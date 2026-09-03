.class public Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PageRecyclerView.java"


# instance fields
.field private downX:F

.field private downY:F

.field private layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 31
    new-instance v0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    .line 32
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->getLayoutManager()Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutManager()Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->layoutManager:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 51
    iget v2, p0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->downX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 52
    iget v2, p0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->downY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->downX:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PageRecyclerView;->downY:F

    .line 60
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
