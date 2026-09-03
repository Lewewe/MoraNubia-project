.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GameSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->initOperatorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1660
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1663
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p4}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    .line 1664
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_2

    .line 1666
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    :goto_0
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 1667
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    goto :goto_1

    :cond_1
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_1
    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 1669
    :cond_2
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    goto :goto_2

    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    :goto_2
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 1670
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_4

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    goto :goto_3

    :cond_4
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_3
    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1672
    :goto_4
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p2, p2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1673
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 1675
    :cond_5
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    const/4 p4, 0x0

    .line 1676
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 1677
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 1678
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p4, p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$18;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/BackgroundAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_6

    sget p0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    goto :goto_5

    :cond_6
    sget p0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_5
    invoke-virtual {p4, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_6
    return-void
.end method
