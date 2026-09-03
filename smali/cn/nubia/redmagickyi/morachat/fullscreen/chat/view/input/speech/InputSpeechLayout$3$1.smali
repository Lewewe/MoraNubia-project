.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3$1;
.super Ljava/lang/Object;
.source "InputSpeechLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setVisibility(I)V

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
