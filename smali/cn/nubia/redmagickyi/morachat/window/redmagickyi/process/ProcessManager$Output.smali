.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;
    }
.end annotation


# instance fields
.field private onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;

.field private outputId:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;

    .line 790
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->outputId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)V
    .locals 0

    .line 788
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->updateMuteState()V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)Z
    .locals 0

    .line 788
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isEnableWords()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;I)J
    .locals 0

    .line 788
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V
    .locals 0

    .line 788
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)Ljava/lang/String;
    .locals 0

    .line 788
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->outputId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)Z
    .locals 0

    .line 788
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isExcuting()Z

    move-result p0

    return p0
.end method

.method private isEnableTTS()Z
    .locals 1

    .line 1019
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEnableWords()Z
    .locals 1

    .line 1026
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p0

    return p0
.end method

.method private isExcuting()Z
    .locals 4

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> isExcuting, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExcuting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->outputId:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->outputId:Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private onEndExcute()V
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onEndExcute, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 847
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->outputId:Ljava/lang/String;

    return-void
.end method

.method private onStartExcute(Ljava/lang/String;)V
    .locals 2

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onStartExcute, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->outputId:Ljava/lang/String;

    return-void
.end method

.method private removeOutputCompletedMessage()V
    .locals 2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> removeOutputCompletedMessage, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V
    .locals 2

    .line 979
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->removeOutputCompletedMessage()V

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> sendOutputCompletedMessage, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->access$3502(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    .line 982
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-virtual {p1, p0, p2, p3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startTTS(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V
    .locals 7

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> startTTS, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ASSISTANT:Lcn/nubia/redmagickyi/util/AudioStreamType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    :goto_0
    move-object v5, v0

    new-instance v6, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;

    invoke-direct {v6, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->startTTS(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method private startToast(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V
    .locals 2

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> startToast, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startWords(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;I)J
    .locals 3

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> startWords, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->access$3400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;)V

    .line 940
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 941
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->HELLO:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    if-gtz p2, :cond_2

    .line 951
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit16 p2, p2, 0xcc

    .line 953
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->startWords(Ljava/lang/String;IZ)V

    int-to-long p0, p2

    return-wide p0
.end method

.method private stopTTS()V
    .locals 2

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> stopTTS, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopTTS()V

    return-void
.end method

.method private stopWords()V
    .locals 2

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> stopWords, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->stopUnitySpeaking()V

    return-void
.end method

.method private updateMuteState()V
    .locals 1

    .line 861
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isEnableTTS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/RecordingListener;->getInstance()Lcn/nubia/redmagickyi/util/RecordingListener;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RecordingListener;->isMicBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->unmuteTTS()V

    .line 863
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->setUnityUnmute()V

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->muteTTS()V

    .line 866
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->setUnityMute()V

    :goto_0
    return-void
.end method


# virtual methods
.method public isErrorId(Ljava/lang/String;)Z
    .locals 0

    .line 975
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V
    .locals 6

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> start, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->isTipsEntry()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 795
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isEnableWords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Output -> Tips Enable words, StateMachine: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;I)J

    goto :goto_0

    .line 799
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Tips Enable toast, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startToast(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    .line 805
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onStartExcute(Ljava/lang/String;)V

    goto :goto_1

    .line 808
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onStartExcute(Ljava/lang/String;)V

    .line 810
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    sget-object v3, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    if-eq v0, v3, :cond_3

    .line 811
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_FAKE:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;)V

    .line 813
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isTextValid(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_7

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Output -> Text is valid, StateMachine: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isEnableTTS()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Enable tts, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startTTS(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    goto/16 :goto_2

    .line 819
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isEnableWords()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Output -> Enable words, StateMachine: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;I)J

    move-result-wide v0

    .line 822
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    goto :goto_2

    .line 823
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isErrorId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Enable toast, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->startToast(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    .line 826
    invoke-direct {p0, p1, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    goto :goto_2

    .line 828
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Enable nothing!! StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-direct {p0, p1, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    goto :goto_2

    .line 832
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Text is not valid, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0, p1, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;J)V

    :goto_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> stop, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->onEndExcute()V

    .line 840
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->removeOutputCompletedMessage()V

    .line 841
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->stopTTS()V

    .line 842
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->stopWords()V

    return-void
.end method
