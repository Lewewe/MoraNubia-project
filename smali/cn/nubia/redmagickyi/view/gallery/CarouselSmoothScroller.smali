.class public Lcn/nubia/redmagickyi/view/gallery/CarouselSmoothScroller;
.super Ljava/lang/Object;
.source "CarouselSmoothScroller.java"


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_1

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-ge p2, p0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "position can\'t be great then adapter items count. position is : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "position can\'t be less then 0. position is : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)I
    .locals 0

    .line 38
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)I
    .locals 0

    .line 30
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->canScrollVertically()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(ILcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)Landroid/graphics/PointF;
    .locals 0

    .line 26
    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
