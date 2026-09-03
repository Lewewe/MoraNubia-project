.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$3;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->hideInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1860
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1868
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$6400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1869
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;->access$6400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$InputPanel;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

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
