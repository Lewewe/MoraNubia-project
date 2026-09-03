.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;
.super Ljava/lang/Object;
.source "NPRefreshAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->startLoadingAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastTime:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;->lastTime:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    iget-wide v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 133
    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;->lastTime:J

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    const/high16 p1, 0x42340000    # 45.0f

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->access$016(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;F)F

    :cond_0
    return-void
.end method
