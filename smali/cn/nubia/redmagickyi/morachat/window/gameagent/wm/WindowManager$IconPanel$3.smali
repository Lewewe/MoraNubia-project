.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$3;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->createSmallIconDragger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringBackAnimationEnd(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .line 625
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$3300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;)V

    .line 626
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->access$3300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;->access$3700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$MyHandler;)V

    return-void
.end method

.method public onSpringBackAnimationStart(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    return-void
.end method
