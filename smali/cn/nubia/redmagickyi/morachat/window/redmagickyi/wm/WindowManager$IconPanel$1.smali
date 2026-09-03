.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable$DraggingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->createLargeIconDragger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecuteDragging(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;->onLargeIconDragging(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;)V

    return-void
.end method

.method public onStartDragging(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 346
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;->reset()V

    .line 347
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;->access$1700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;)V

    .line 348
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;->access$1800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$MyHandler;)V

    return-void
.end method

.method public onStopDragging(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 353
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;)V

    .line 360
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/IconLargeSmallSwitcher;->switchToSmallIcon(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 361
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
