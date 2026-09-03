.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcom/zte/aivoice/asr/OnASRClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->startASRInner(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;
    }
.end annotation


# instance fields
.field private onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->access$3200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    return-void
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;
    .locals 0

    .line 644
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    return-object p0
.end method


# virtual methods
.method public onRecognizeBegin()V
    .locals 3

    .line 724
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> onRecognizeBegin, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;)V

    return-void
.end method

.method public onRecognizeCompleted(Ljava/lang/String;Z)V
    .locals 3

    .line 730
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> onRecognizeCompleted, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", newWords: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", oldWords: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 735
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    iget-object p2, p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->pause()V

    .line 736
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    iget-object p2, p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->startInput(Ljava/lang/String;)V

    .line 737
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3502(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;Ljava/lang/String;)Ljava/lang/String;

    .line 738
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;)V

    return-void
.end method

.method public onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 4

    .line 743
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input -> onRecognizeFailed, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, v0, :cond_0

    .line 745
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;)V

    .line 746
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 747
    :cond_0
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, v0, :cond_1

    .line 748
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;->access$3700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3$WordsChangedRunnable;)V

    .line 749
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordingCompleted(Ljava/lang/String;)V
    .locals 2

    .line 760
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onRecordingCompleted, audioPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordingVolumeUpdated(III)V
    .locals 2

    .line 755
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onRecordingVolumeUpdated, current: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", max: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", min: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
