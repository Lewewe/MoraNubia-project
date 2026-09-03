.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$9;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideOutputTextArea(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1497
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$9;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1505
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$9;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$6500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setTag(Ljava/lang/Object;)V

    .line 1506
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel$9;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$6500(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
