.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconLargeSmallSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->switchToSmallIcon(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$6;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$6;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$6;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$6;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$Listener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$Listener;->onSwitchToSmallIcon(Z)V

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$6;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    :cond_0
    return-void
.end method
