.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ChangeSkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->setActionAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 686
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 689
    invoke-static {p3}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    .line 690
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 691
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 692
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    .line 694
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    div-int/2addr p2, p3

    if-nez p2, :cond_0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    goto :goto_0

    :cond_0
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 698
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    int-to-double v2, p2

    int-to-float p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    cmpl-double p2, v2, p2

    if-nez p2, :cond_1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    goto :goto_1

    :cond_1
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_4

    .line 701
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    div-int/2addr p2, p3

    if-nez p2, :cond_3

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    goto :goto_2

    :cond_3
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 703
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$12;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    int-to-double v2, p2

    int-to-float p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    cmpl-double p2, v2, p2

    if-nez p2, :cond_4

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    goto :goto_3

    :cond_4
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_3
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_4
    if-eqz p4, :cond_5

    move p2, p0

    goto :goto_5

    :cond_5
    move p2, v1

    .line 705
    :goto_5
    iput p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz p4, :cond_6

    move p0, v1

    .line 706
    :cond_6
    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
