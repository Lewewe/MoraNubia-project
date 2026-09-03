.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->startTTS(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

.field final synthetic val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

.field final synthetic val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1085
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onAudioPlayCompleted()V
    .locals 10

    .line 1155
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;J)V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {v0, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 3

    .line 1115
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onAudioPlayBegin, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnableWords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getEmoCode()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$3100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->isMuteTTS()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->startUnitySpeaking(IZ)V

    .line 1121
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-gtz p2, :cond_1

    const p2, 0x7fffffff

    .line 1125
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    int-to-long v0, p2

    invoke-static {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;J)V

    goto :goto_0

    .line 1127
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1128
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    int-to-long v1, p2

    invoke-static {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 1150
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onAudioPlayComplete, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->onAudioPlayCompleted()V

    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 1134
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onAudioPlayPause, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 1145
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onAudioPlayResume, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 1139
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onAudioPlayStop, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->onAudioPlayCompleted()V

    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 3

    .line 1089
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output -> onSynthesisBegin, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", words: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 3

    .line 1094
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output -> onSynthesisCompleted, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", words: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", isEnd: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 3

    .line 1100
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output -> onSynthesisFailed, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", words: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", errorCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$4400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1104
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->stop()V

    .line 1105
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_1

    .line 1106
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 1107
    :cond_1
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_2

    .line 1108
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    :cond_2
    :goto_0
    return-void
.end method
