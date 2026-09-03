.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;
.super Ljava/lang/Object;
.source "WaveView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

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
