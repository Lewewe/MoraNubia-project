.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;
.super Ljava/lang/Object;
.source "InputSpeechLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animIn()V

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V

    .line 208
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isWaitAsrResultAfterReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_speech_listening:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setVisibility(I)V

    return-void
.end method
