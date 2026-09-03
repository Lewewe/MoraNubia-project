.class Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;
.super Ljava/lang/Object;
.source "GameSpaceFragmentMananger.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->access$000(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x2002

    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 67
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->access$000(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->access$100(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;)Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger$1;->this$0:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->access$102(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;)Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
