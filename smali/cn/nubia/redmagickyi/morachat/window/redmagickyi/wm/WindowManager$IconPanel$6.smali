.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->onIconClicked()V
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

    .line 671
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$6;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 680
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$6;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->access$800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 675
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel$6;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;)V

    return-void
.end method
