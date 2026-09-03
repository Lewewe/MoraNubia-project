.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpringBackDraggable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;->startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;->dispatchSpringBackAnimationEndCallback(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/SpringBackDraggable;->dispatchSpringBackAnimationStartCallback(Landroid/animation/Animator;)V

    return-void
.end method
