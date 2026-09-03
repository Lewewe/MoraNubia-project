.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcom/zte/aivoice/asr/OnASRClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->startASR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;
    }
.end annotation


# instance fields
.field private onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->access$1800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;
    .locals 0

    .line 428
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    return-object p0
.end method


# virtual methods
.method public onRecognizeBegin()V
    .locals 2

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onRecognizeBegin, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->access$2100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)V

    return-void
.end method

.method public onRecognizeCompleted(Ljava/lang/String;Z)V
    .locals 2

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onRecognizeCompleted, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", newWords: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", oldWords: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->access$2200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Accompany-ProcessManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object p2, p2, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->pause()V

    .line 508
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->access$2202(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->access$2100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)V

    return-void
.end method

.method public onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 4

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onRecognizeFailed, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, v0, :cond_0

    .line 516
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->access$2300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)V

    .line 517
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    goto :goto_0

    .line 518
    :cond_0
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, v0, :cond_1

    .line 519
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->onWordsChanged:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->access$2300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)V

    .line 520
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    move-result-object p0

    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordingCompleted(Ljava/lang/String;)V
    .locals 1

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Input -> onRecordingCompleted, audioPath: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Accompany-ProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordingVolumeUpdated(III)V
    .locals 1

    .line 526
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Input -> onRecordingVolumeUpdated, current: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", max: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", min: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Accompany-ProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
