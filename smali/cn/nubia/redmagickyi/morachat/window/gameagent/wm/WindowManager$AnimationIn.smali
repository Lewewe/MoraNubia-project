.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;
.super Landroid/view/animation/AnimationSet;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationIn"
.end annotation


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    .line 74
    invoke-direct {p0, p2, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    .line 78
    invoke-direct {p0, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->mListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    invoke-super {p0}, Landroid/view/animation/AnimationSet;->cancel()V

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationIn;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-super {p0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
