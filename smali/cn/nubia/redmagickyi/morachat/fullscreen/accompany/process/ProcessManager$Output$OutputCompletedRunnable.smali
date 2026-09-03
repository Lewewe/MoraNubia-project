.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputCompletedRunnable"
.end annotation


# instance fields
.field private isEvenSayHello:Z

.field private outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 943
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 951
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->isEvenSayHello:Z

    return-void
.end method

.method static synthetic access$3002(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 0

    .line 939
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output -> onOutputCompleted, getId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$3100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->access$3100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Output -> onOutputCompleted, StateMachine: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", OutputEntry: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->isErrorId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->isUnityEntry()Z

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;Z)V

    .line 961
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->isEvenSayHello:Z

    .line 962
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_IDEL_TRUTH:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;)V

    goto :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->isHelloId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 965
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->isEvenSayHello:Z

    .line 967
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->outputEntry:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->isUnityEntry()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->stop(Z)V

    .line 968
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->isEvenSayHello:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->STATE_ACTIVE:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/StateMachine;)V

    .line 970
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Input;->start()V

    .line 973
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output$OutputCompletedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager$Output;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->access$1600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->start(Z)Z

    :cond_3
    return-void
.end method
