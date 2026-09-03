.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NPRefreshAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->doScrollBackAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$202(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;I)I

    .line 235
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;->animationEnd()V

    return-void
.end method
