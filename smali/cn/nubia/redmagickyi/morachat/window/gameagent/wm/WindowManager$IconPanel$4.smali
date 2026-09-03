.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow$OnWindowLifecycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->createWindow()V
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

    .line 638
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowCancel(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 653
    const-string p1, "Window-WindowManager"

    const-string v0, "onWindowCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->hideMain()V

    .line 655
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->hideMain()V

    return-void
.end method

.method public onWindowRecycle(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 660
    const-string p1, "Window-WindowManager"

    const-string v0, "onWindowRecycle"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$OperatorPanel;->release()V

    .line 662
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->release()V

    return-void
.end method

.method public onWindowShow(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 641
    const-string p1, "Window-WindowManager"

    const-string v0, "onWindowShow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method public onWindowUpdate(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 648
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method
