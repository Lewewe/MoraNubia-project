.class public Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PagerLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;,
        Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentPostion:I

.field private haveSelect:Z

.field private isEnableScroll:Z

.field private mOnPageChangeListener:Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;

.field private mPagerSnapHelper:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->isEnableScroll:Z

    .line 94
    new-instance v0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;-><init>(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->context:Landroid/content/Context;

    .line 33
    new-instance p1, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;-><init>(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mPagerSnapHelper:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;)Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mOnPageChangeListener:Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;

    return-object p0
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->isEnableScroll:Z

    return p0
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 38
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mPagerSnapHelper:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 40
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->haveSelect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->haveSelect:Z

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->currentPostion:I

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->setPagePosition(I)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mPagerSnapHelper:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$MMDPageSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mOnPageChangeListener:Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 61
    iget v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->currentPostion:I

    if-eq v1, v0, :cond_0

    .line 62
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->currentPostion:I

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->setPagePosition(I)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onScrollStateChanged(I)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    if-eqz v0, :cond_0

    .line 72
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->currentPostion:I

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->setPagePosition(I)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    if-eqz v0, :cond_0

    .line 80
    iput p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->currentPostion:I

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->setPagePosition(I)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setEnableScroll(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->isEnableScroll:Z

    return-void
.end method

.method public setOnPageChangeListener(Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->mOnPageChangeListener:Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;

    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    .line 89
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->pageChangeIdleHandler:Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    iput v0, p0, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->currentPostion:I

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;->setPagePosition(I)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager$PageChangeIdleHandler;

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
