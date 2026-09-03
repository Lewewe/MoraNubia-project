.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WordsChangedRunnable"
.end annotation


# static fields
.field private static final DURATION_DELAYED:J = 0x7d0L

.field private static final DURATION_TIMEOUT:J = 0x2710L


# instance fields
.field private checkTime:Ljava/lang/Long;

.field private sendWords:Ljava/lang/String;

.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

.field private token:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;)V
    .locals 0

    .line 910
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendOnWordsChanged()V

    return-void
.end method

.method static synthetic access$4000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;)Ljava/lang/String;
    .locals 0

    .line 910
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->words:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4002(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 910
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->words:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;)Z
    .locals 0

    .line 910
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->isTokenExpired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;)V
    .locals 0

    .line 910
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->removeOnWordsChanged()V

    return-void
.end method

.method private isTokenExpired()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->access$3700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->access$3700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->token:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private removeOnWordsChanged()V
    .locals 2

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> removeOnWordsChanged, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOnWordsChanged()V
    .locals 3

    .line 974
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->removeOnWordsChanged()V

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> sendOnWordsChanged, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->access$3800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onWordsChanged, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExcuting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->isTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 938
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 939
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 940
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    .line 942
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendWords:Ljava/lang/String;

    const/4 v3, 0x0

    const-wide/16 v4, 0x2710

    if-nez v2, :cond_4

    .line 943
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->words:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 945
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->words:Ljava/lang/String;

    iput-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendWords:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)V

    .line 946
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendOnWordsChanged()V

    goto/16 :goto_0

    .line 949
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 950
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->removeOnWordsChanged()V

    .line 951
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)V

    goto :goto_0

    .line 953
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendOnWordsChanged()V

    goto :goto_0

    .line 957
    :cond_4
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->words:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 959
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_5

    .line 960
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->removeOnWordsChanged()V

    .line 961
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)V

    goto :goto_0

    .line 963
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendOnWordsChanged()V

    goto :goto_0

    .line 967
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->words:Ljava/lang/String;

    iput-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendWords:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)V

    .line 968
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input$3$WordsChangedRunnable;->sendOnWordsChanged()V

    :goto_0
    return-void
.end method
