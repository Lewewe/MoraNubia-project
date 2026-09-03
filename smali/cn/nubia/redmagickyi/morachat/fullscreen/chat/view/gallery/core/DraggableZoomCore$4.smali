.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DraggableZoomCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;->animateToOriginLocation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 295
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;->access$702(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;Z)Z

    .line 296
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;->access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$ActionListener;->onExit()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;->access$702(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableZoomCore;Z)Z

    return-void
.end method
