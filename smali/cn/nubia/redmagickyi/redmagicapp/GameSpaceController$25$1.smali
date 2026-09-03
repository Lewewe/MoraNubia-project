.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/AchievementFragment$OnAchievementOpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->onLoadSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2147
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 2166
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->showBackIcon()V

    .line 2167
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 2156
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onResume()V

    const/4 v0, 0x0

    .line 2157
    sput-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 2158
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$4000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    .line 2159
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 2160
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    return-void
.end method

.method public onModelNameClicked()V
    .locals 0

    .line 2151
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$25;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method
