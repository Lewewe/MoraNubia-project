.class Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LiveCalenderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

.field final synthetic val$isLandscape:Z

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->val$isLandscape:Z

    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 111
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 112
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 113
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->val$isLandscape:Z

    if-eqz v0, :cond_2

    .line 114
    iget-object p3, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p3

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    div-int/2addr p2, p3

    if-nez p2, :cond_0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_21_dp:I

    goto :goto_0

    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    int-to-double v0, p2

    int-to-float p2, p4

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    cmpl-double p2, v0, p2

    if-nez p2, :cond_1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    goto :goto_1

    :cond_1
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 120
    :cond_2
    iget-object p4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    if-nez p2, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_21_dp:I

    goto :goto_2

    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    :goto_2
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_4

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    goto :goto_3

    :cond_4
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_3
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_4
    return-void
.end method
