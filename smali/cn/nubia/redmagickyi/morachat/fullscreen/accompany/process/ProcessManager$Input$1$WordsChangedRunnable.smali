.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;
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

.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

.field private token:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;Ljava/lang/String;)V
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

    .line 439
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendOnWordsChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)Ljava/lang/String;
    .locals 0

    .line 431
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->words:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 431
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->words:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->removeOnWordsChanged()V

    return-void
.end method

.method private removeOnWordsChanged()V
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> removeOnWordsChanged, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->access$2000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendOnWordsChanged()V
    .locals 3

    .line 487
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->removeOnWordsChanged()V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> sendOnWordsChanged, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->access$2000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input -> onWordsChanged, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExcuting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->access$1900(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->access$1800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->access$1800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 451
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 452
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    .line 455
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendWords:Ljava/lang/String;

    const/4 v3, 0x0

    const-wide/16 v4, 0x2710

    if-nez v2, :cond_4

    .line 456
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->words:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 458
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->words:Ljava/lang/String;

    iput-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendWords:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    .line 459
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendOnWordsChanged()V

    goto/16 :goto_0

    .line 462
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 463
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->removeOnWordsChanged()V

    .line 464
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    goto :goto_0

    .line 466
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendOnWordsChanged()V

    goto :goto_0

    .line 470
    :cond_4
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->words:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 472
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->checkTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_5

    .line 473
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->removeOnWordsChanged()V

    .line 474
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object p0

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    goto :goto_0

    .line 476
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendOnWordsChanged()V

    goto :goto_0

    .line 480
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->words:Ljava/lang/String;

    iput-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendWords:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Analyze;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    .line 481
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input$1$WordsChangedRunnable;->sendOnWordsChanged()V

    :cond_7
    :goto_0
    return-void
.end method
