.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startTTS(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

.field final synthetic val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

.field final synthetic val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V
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

    .line 1423
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onAudioPlayCompleted()V
    .locals 10

    .line 1493
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1497
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 1498
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isGameAgentEntry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1499
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {v0, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_0

    .line 1504
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_0

    .line 1511
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {v0, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 3

    .line 1453
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayBegin, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", isEnableWords: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", duration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1458
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getEmoCode()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->isMuteTTS()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->startUnitySpeaking(IZ)V

    .line 1459
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$4900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-gtz p2, :cond_1

    const p2, 0x7fffffff

    .line 1463
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    int-to-long v0, p2

    invoke-static {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_0

    .line 1465
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$startWordTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1466
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$wordDuration:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    int-to-long v1, p2

    invoke-static {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$5200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    .line 1488
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayComplete, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->onAudioPlayCompleted()V

    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    .line 1472
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayPause, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

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

    .line 1483
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayResume, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Window-ProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    .line 1477
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Output -> onAudioPlayStop, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", outputEntry: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->onAudioPlayCompleted()V

    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 2

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onSynthesisBegin, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", words: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

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

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onSynthesisCompleted, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", words: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

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

    .line 1433
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onSynthesisFailed, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", words: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

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

    .line 1439
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$4900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1442
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stop()V

    .line 1443
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    .line 1444
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setAddon(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 1445
    :cond_1
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_2

    .line 1446
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setAddon(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    :cond_2
    :goto_0
    return-void
.end method
