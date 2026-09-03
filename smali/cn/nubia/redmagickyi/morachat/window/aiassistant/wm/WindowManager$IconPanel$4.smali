.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow$OnWindowLifecycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->createWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowCancel(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 565
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onWindowCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->hideMain()V

    .line 567
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->hideMain()V

    .line 568
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->hideMain()V

    return-void
.end method

.method public onWindowRecycle(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 573
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onWindowRecycle"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->release()V

    .line 575
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->release()V

    .line 576
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$MenuPanel;->release()V

    return-void
.end method

.method public onWindowShow(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 553
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$3500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onWindowShow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method

.method public onWindowUpdate(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 560
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$4;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->updateLocation()V

    return-void
.end method
