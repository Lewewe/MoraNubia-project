.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconLargeSmallSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->switchToSmallIcon(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$Listener;->onSwitchToSmallIcon(Z)V

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$IconAnimator;->start()V

    :cond_0
    return-void
.end method
