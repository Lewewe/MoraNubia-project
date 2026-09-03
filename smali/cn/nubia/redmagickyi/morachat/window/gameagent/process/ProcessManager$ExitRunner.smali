.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExitRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 768
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V
    .locals 0

    .line 768
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V
    .locals 0

    .line 768
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->exitNow()V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V
    .locals 0

    .line 768
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->startCountdown()V

    return-void
.end method

.method static synthetic access$4500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V
    .locals 0

    .line 768
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->cancelCountdown()V

    return-void
.end method

.method static synthetic access$5400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;Ljava/lang/String;)Z
    .locals 0

    .line 768
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->exit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private cancelCountdown()V
    .locals 2

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExitRunner -> cancelCountdown, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exit(Ljava/lang/String;)Z
    .locals 1

    .line 806
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ExitRunner -> exit, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 814
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private exitNow()V
    .locals 5

    .line 784
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->cancelCountdown()V

    .line 785
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    .line 786
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isWindowOnlyTTSFromGameAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofEvent(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    .line 793
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->finish()V

    return-void

    .line 796
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableHandleLowPowerWakeupForGameAgent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->GOODBYE_NOWAKEUP:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    :goto_0
    return-void
.end method

.method private startCountdown()V
    .locals 3

    .line 771
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 772
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExitRunner -> startCountdown, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAccompanyRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
