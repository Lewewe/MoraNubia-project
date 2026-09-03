.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;
    }
.end annotation


# instance fields
.field private onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

.field private outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

.field private stopCaptionRunnable:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1317
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

    .line 1319
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stopCaptionRunnable:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;

    .line 1320
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    return-void
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
    .locals 0

    .line 1317
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->updateMuteState(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    return-void
.end method

.method static synthetic access$4900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
    .locals 0

    .line 1317
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isAsyncTtsAndWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Z
    .locals 0

    .line 1317
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isExcuting()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
    .locals 0

    .line 1317
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isEnableWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V
    .locals 0

    .line 1317
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    return-void
.end method

.method static synthetic access$5200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J
    .locals 0

    .line 1317
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private isAsyncTtsAndWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
    .locals 0

    .line 1407
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isGameAgentEntry()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isAccompanyEntry()Z

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

.method private isEnableTTS(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
    .locals 3

    .line 1661
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Window-ProcessManager"

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->getMuteReason()Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 1665
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getOutputType()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 1666
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "disableTTS by outputEntry: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    .line 1662
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "disableTTS by empty WindowManager or muteReason: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isEnableWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
    .locals 1

    .line 1673
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1677
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getOutputType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isExcuting()Z
    .locals 4

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> isExcuting, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExcuting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

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

    .line 1387
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private isOutputCompletedPending()Z
    .locals 1

    .line 1591
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private onEndExcute()V
    .locals 2

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onEndExcute, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1377
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    return-void
.end method

.method private onStartExcute(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
    .locals 2

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onStartExcute, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    return-void
.end method

.method private removeOutputCompletedMessage()V
    .locals 2

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> removeOutputCompletedMessage, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 1587
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stopCaptionRunnable:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V
    .locals 2

    .line 1574
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isAsyncTtsAndWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    add-long/2addr p2, v0

    .line 1578
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->removeOutputCompletedMessage()V

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> sendOutputCompletedMessage, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1580
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;->access$5302(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    .line 1581
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onOutputCompleted:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$OutputCompletedRunnable;

    invoke-virtual {p1, p0, p2, p3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startTTS(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
    .locals 10

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> startTTS, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1413
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1414
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1415
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isAsyncTtsAndWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1418
    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1419
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    .line 1423
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isAsyncTtsAndWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v7

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v1

    sget-object v1, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-object v8, v1

    new-instance v9, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;

    invoke-direct {v9, p0, p1, v3, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->startTTS(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method private startToast(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
    .locals 2

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> startToast, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1560
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J
    .locals 10

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> startWords, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;->access$4500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$ExitRunner;)V

    .line 1526
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isEnableWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    .line 1528
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->getTTSDurationByWords(Ljava/lang/String;)J

    move-result-wide p2

    .line 1531
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isGameAgentEntry()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 1532
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v7

    check-cast v7, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v5

    :goto_0
    const/4 v8, 0x0

    move-object v4, v6

    move-wide v5, p2

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->startCaption(Ljava/lang/String;JZZ)V

    goto :goto_2

    .line 1534
    :cond_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v9, v4

    goto :goto_1

    :cond_3
    move v9, v5

    :goto_1
    const/4 v8, 0x1

    move-object v4, v6

    move-wide v5, p2

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->startCaption(Ljava/lang/String;JZZ)V

    .line 1537
    :goto_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isGameAgentEntry()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isNormalEntry()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isChatEntry()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isTipsEntry()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    .line 1540
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->startMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    if-nez v9, :cond_6

    const-wide/16 p0, 0x2

    .line 1543
    div-long/2addr p2, p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x4e20

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    goto :goto_3

    .line 1546
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->stopMenu()V

    :cond_6
    :goto_3
    return-wide p2
.end method

.method private stopTTS()V
    .locals 2

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> stopTTS, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopTTS()V

    return-void
.end method

.method private stopWords()V
    .locals 2

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> stopWords, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->stopUnitySpeaking()V

    return-void
.end method

.method private updateMuteState(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1393
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isEnableTTS(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1394
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->unmuteTTS()V

    .line 1395
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->setUnityUnmute()V

    goto :goto_1

    .line 1397
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mute tts because of isEnableTTS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMicBusy: null, isScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$3600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->muteTTS()V

    .line 1399
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->setUnityMute()V

    :goto_1
    return-void
.end method


# virtual methods
.method public isErrorId(Ljava/lang/String;)Z
    .locals 0

    .line 1570
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

.method public start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
    .locals 5

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> start, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1324
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isTipsEntry()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 1325
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isEnableWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output -> Tips Enable words, StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J

    move-result-wide v0

    .line 1328
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stopCaptionRunnable:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 1329
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stopCaptionRunnable:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$StopCaptionRunnable;

    invoke-virtual {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Tips Enable toast, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startToast(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    :goto_0
    return-void

    .line 1336
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isAccompanyEntry()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isErrorId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1337
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    return-void

    .line 1340
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->STATE_OUTPUTING:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;)V

    .line 1341
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    .line 1342
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onStartExcute(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    .line 1343
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isTextValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output -> Text is valid, StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isEnableTTS(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> Enable tts, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startTTS(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto/16 :goto_1

    .line 1349
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isEnableWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output -> Enable words, StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startWords(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)J

    move-result-wide v0

    .line 1352
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_1

    .line 1353
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->isErrorId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output -> Enable toast, StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startToast(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    .line 1356
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_1

    .line 1358
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output -> Enable nothing!! StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    goto :goto_1

    .line 1362
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output -> Text is not valid, StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-direct {p0, p1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->sendOutputCompletedMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;J)V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> stop, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->onEndExcute()V

    .line 1370
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->removeOutputCompletedMessage()V

    .line 1371
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stopTTS()V

    .line 1372
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->stopWords()V

    return-void
.end method
