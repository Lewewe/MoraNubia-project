.class public Lcn/nubia/redmagickyi/view/OverScrollLayout;
.super Landroid/widget/FrameLayout;
.source "OverScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/OverScrollLayout$ScrollListener;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x190

.field private static final DAMPING_COEFFICIENT:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "OverScrollLayout"


# instance fields
.field private childView:Landroidx/recyclerview/widget/RecyclerView;

.field private isMoved:Z

.field private isScrollAble:Z

.field private isSuccess:Z

.field private mScrollListener:Lcn/nubia/redmagickyi/view/OverScrollLayout$ScrollListener;

.field private original:Landroid/graphics/Rect;

.field private scrollXNestpos:Ljava/lang/Integer;

.field private startXpos:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isMoved:Z

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->scrollXNestpos:Ljava/lang/Integer;

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isSuccess:Z

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isScrollAble:Z

    return-void
.end method

.method private canPullDown()Z
    .locals 5

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 183
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->getItemDecorationsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result v3

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result p0

    sub-int/2addr v3, p0

    iget p0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p0

    if-gt v0, v3, :cond_1

    move v1, v4

    :cond_1
    return v1

    .line 187
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    goto :goto_0

    :cond_3
    move p0, v1

    .line 188
    :goto_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method private canPullUp()Z
    .locals 5

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 201
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x0

    if-lt v2, v0, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    sub-int/2addr v2, v0

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 205
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 206
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 208
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->getItemDecorationsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 209
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 212
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result v4

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result p0

    sub-int/2addr v4, p0

    iget p0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p0

    if-gt v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    :cond_3
    return v3
.end method

.method private cancelChild(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x3

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private getItemDecorationsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 231
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private recoverLayout()V
    .locals 5

    .line 164
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x190

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 166
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isMoved:Z

    return-void
.end method


# virtual methods
.method public CanScroll()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 76
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isScrollAble:Z

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 80
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_15

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    goto/16 :goto_7

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v3, 0x6

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_2

    return v2

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->startXpos:F

    :cond_3
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->scrollXNestpos:Ljava/lang/Integer;

    .line 141
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isMoved:Z

    if-eqz v0, :cond_4

    .line 142
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->recoverLayout()V

    .line 144
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isSuccess:Z

    if-eqz v0, :cond_6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :cond_6
    :goto_0
    return v2

    .line 89
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->startXpos:F

    .line 92
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->startXpos:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 93
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/16 v4, -0xa

    const/16 v5, 0xa

    if-eqz v3, :cond_9

    if-ge v0, v4, :cond_a

    goto :goto_1

    :cond_9
    if-le v0, v5, :cond_a

    .line 94
    :goto_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->canPullDown()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->CanScroll()Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v2

    goto :goto_2

    :cond_a
    move v6, v1

    :goto_2
    if-eqz v3, :cond_b

    if-le v0, v5, :cond_c

    goto :goto_3

    :cond_b
    if-ge v0, v4, :cond_c

    .line 95
    :goto_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->canPullUp()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->CanScroll()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_4

    :cond_c
    move v3, v1

    :goto_4
    if-nez v6, :cond_e

    if-eqz v3, :cond_d

    goto :goto_5

    .line 131
    :cond_d
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isMoved:Z

    .line 132
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isSuccess:Z

    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 97
    :cond_e
    :goto_5
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->scrollXNestpos:Ljava/lang/Integer;

    if-nez v4, :cond_f

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->scrollXNestpos:Ljava/lang/Integer;

    .line 100
    :cond_f
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->cancelChild(Landroid/view/MotionEvent;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->scrollXNestpos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-eqz v6, :cond_11

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-lez p1, :cond_13

    .line 105
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_6

    :cond_10
    if-gez p1, :cond_13

    .line 109
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_6

    :cond_11
    if-eqz v3, :cond_13

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-gez p1, :cond_13

    .line 115
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_6

    :cond_12
    if-lez p1, :cond_13

    .line 119
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 123
    :cond_13
    :goto_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, p1

    iget-object p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->mScrollListener:Lcn/nubia/redmagickyi/view/OverScrollLayout$ScrollListener;

    if-eqz p1, :cond_14

    .line 125
    invoke-interface {p1}, Lcn/nubia/redmagickyi/view/OverScrollLayout$ScrollListener;->onScroll()V

    .line 127
    :cond_14
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isMoved:Z

    .line 128
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isSuccess:Z

    return v2

    .line 81
    :cond_15
    :goto_7
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isMoved:Z

    if-eqz p1, :cond_16

    .line 82
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->recoverLayout()V

    :cond_16
    return v2
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/OverScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->original:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result p4

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->childView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setScrollAble(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->isScrollAble:Z

    return-void
.end method

.method public setScrollListener(Lcn/nubia/redmagickyi/view/OverScrollLayout$ScrollListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/OverScrollLayout;->mScrollListener:Lcn/nubia/redmagickyi/view/OverScrollLayout$ScrollListener;

    return-void
.end method
