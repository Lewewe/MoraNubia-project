.class Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 216
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 219
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 0

    .line 207
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->canScrollVertically()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 211
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 224
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42960000    # 75.0f

    div-float/2addr p1, p0

    return p1
.end method
