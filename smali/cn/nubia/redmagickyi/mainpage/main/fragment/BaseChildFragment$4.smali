.class Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;
.super Ljava/lang/Object;
.source "BaseChildFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$500(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$400(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$600(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$700(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->initRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$700(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$000(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$000(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$4;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->isNeedToShowTabBadge()Z

    move-result p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->shouldChangeBadgeState(Z)V

    :cond_0
    return-void
.end method
