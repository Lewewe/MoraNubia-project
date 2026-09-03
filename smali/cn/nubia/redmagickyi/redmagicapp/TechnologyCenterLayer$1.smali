.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "TechnologyCenterLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 123
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p3

    .line 124
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p4}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$000(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 126
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$200(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$200(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->getItemCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-nez p3, :cond_4

    if-gt v1, v3, :cond_2

    if-eqz v0, :cond_1

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$300(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    goto/16 :goto_2

    .line 134
    :cond_1
    iget-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$400(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p3

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$300(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p0, p2

    sub-int/2addr p0, p3

    goto/16 :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    .line 143
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$300(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$300(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int p0, p2, p0

    goto :goto_2

    .line 147
    :cond_4
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$200(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$200(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p3, p2, :cond_6

    .line 148
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 149
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_5

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    goto :goto_1

    :cond_5
    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    move v2, p0

    move p0, p2

    goto :goto_2

    .line 151
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_2
    if-eqz p4, :cond_7

    move p2, v2

    goto :goto_3

    :cond_7
    move p2, p0

    .line 154
    :goto_3
    iput p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move p0, v2

    .line 155
    :goto_4
    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
