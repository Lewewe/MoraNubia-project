.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NPRefreshAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->doScrollBackToLoadingAnimation(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

.field final synthetic val$canLoading:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;Z)V
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

    .line 254
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;->val$canLoading:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 257
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;->val$canLoading:Z

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$202(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;I)I

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;->canLoadingData()V

    .line 265
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;->animationEnd()V

    return-void
.end method
