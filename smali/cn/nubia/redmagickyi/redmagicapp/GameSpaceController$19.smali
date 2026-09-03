.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 1685
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1688
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->AiAgentEntranceCard(Z)V

    const-wide/16 v1, 0xfa

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v3, -0x3d380000    # -100.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 1690
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1691
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 1692
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/CheckBox;

    move-result-object p2

    sget v6, Lcn/nubia/redmagickyi/main/R$drawable;->svg_bg_mainscreen_changebg_selected:I

    invoke-virtual {p2, v6}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 1693
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1694
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1695
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p2, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1696
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1697
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1698
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1699
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1700
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1701
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1702
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->clearAnimation()V

    .line 1703
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1705
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2400(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1706
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 1707
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1708
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1709
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1710
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1711
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1712
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1713
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1714
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1715
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->clearAnimation()V

    .line 1716
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$19;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
