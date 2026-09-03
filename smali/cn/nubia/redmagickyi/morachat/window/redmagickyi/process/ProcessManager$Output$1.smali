.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startTTS(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

.field final synthetic val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V
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

    .line 874
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 2

    .line 900
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayBegin, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", isEnableWords: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getEmoCode()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->isMuteTTS()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->startUnitySpeaking(IZ)V

    .line 902
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$3200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;I)J

    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayComplete, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$3300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayPause, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Window-ProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    .line 918
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayResume, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Window-ProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 912
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayStop, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$3300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 2

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onSynthesisBegin, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", words: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Window-ProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 2

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onSynthesisCompleted, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", words: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", isEnd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Window-ProcessManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$2200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)V

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onSynthesisFailed, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", words: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", errorCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->stop()V

    .line 891
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_0

    .line 892
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    goto :goto_0

    .line 893
    :cond_0
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_1

    .line 894
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    :cond_1
    :goto_0
    return-void
.end method
