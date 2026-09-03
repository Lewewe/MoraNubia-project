.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/AchievementFragment$OnAchievementOpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->go2Achievement()V
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

    .line 1071
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1090
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->stopPlayMotion()V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 1080
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->stopPlayMotion()V

    .line 1082
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;

    move-result-object v0

    const/16 v1, 0x138d

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->removeMessages(I)V

    .line 1084
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->resetPlayState()V

    return-void
.end method

.method public onModelNameClicked()V
    .locals 0

    .line 1075
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$16;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->onModelNameClicked()V

    return-void
.end method
