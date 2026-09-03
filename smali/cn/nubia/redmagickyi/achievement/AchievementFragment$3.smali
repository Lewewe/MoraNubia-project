.class Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;
.super Ljava/lang/Object;
.source "AchievementFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/AchievementFragment;->showDetailFragment(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

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

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$200(Lcn/nubia/redmagickyi/achievement/AchievementFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->updateUI()V

    .line 329
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/AchievementFragment$3;->this$0:Lcn/nubia/redmagickyi/achievement/AchievementFragment;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/achievement/AchievementFragment;->access$302(Lcn/nubia/redmagickyi/achievement/AchievementFragment;Z)Z

    return-void
.end method
