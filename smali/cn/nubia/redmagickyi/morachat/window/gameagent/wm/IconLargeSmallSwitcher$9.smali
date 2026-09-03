.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconLargeSmallSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->switchToLargeIcon(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

.field final synthetic val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$Listener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$Listener;->onSwitchToLargeIcon(Z)V

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$9;->val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
