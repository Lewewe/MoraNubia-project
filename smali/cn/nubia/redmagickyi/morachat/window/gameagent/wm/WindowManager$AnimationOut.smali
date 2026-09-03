.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;
.super Landroid/view/animation/AnimationSet;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationOut"
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

    .line 99
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    .line 100
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

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    .line 104
    invoke-direct {p0, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->mListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 116
    invoke-super {p0}, Landroid/view/animation/AnimationSet;->cancel()V

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$AnimationOut;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-super {p0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
