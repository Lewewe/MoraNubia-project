.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;->onStopDragging(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 503
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->access$4700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;Z)V

    .line 504
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;->access$4400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;->access$4800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$IconPanel$MyHandler;)V

    return-void
.end method
