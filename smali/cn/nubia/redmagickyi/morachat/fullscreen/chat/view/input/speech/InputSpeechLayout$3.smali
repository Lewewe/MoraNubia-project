.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;
.super Ljava/lang/Object;
.source "InputSpeechLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

.field final synthetic val$forceDismiss:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->val$forceDismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Z

    move-result v0

    .line 224
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V

    .line 225
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->val$forceDismiss:Z

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setVisibility(I)V

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;->onSpeechInvalid()V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animOut(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz v0, :cond_1

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;->onSpeechValid()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;->onSpeechInvalid()V

    :goto_0
    return-void
.end method
