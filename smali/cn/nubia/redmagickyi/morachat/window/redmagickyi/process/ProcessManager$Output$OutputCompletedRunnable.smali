.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputCompletedRunnable"
.end annotation


# instance fields
.field private outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 990
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$1;)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)V

    return-void
.end method

.method static synthetic access$3502(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 0

    .line 990
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 994
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->access$3600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$2000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;->access$2100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$ExitRunner;)V

    .line 1001
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->access$3700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onOutputCompleted, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->isErrorId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1700(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V

    .line 1005
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;)V

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->stop()V

    .line 1008
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->isNormalEntry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1009
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;)V

    .line 1010
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Input;->start()V

    .line 1013
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->start(Z)Z

    :cond_3
    return-void
.end method
