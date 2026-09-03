.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field delayedExit:Ljava/lang/Runnable;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->delayedExit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;)Z
    .locals 0

    .line 528
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->isMatchExitEnverment()Z

    move-result p0

    return p0
.end method

.method private isMatchExitEnverment()Z
    .locals 2

    .line 548
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseShowNotification()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isGameAgentEntry()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method


# virtual methods
.method public onChange(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;Z)V
    .locals 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGameSceneSwitcherChanged: type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", isGameScene = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Window-ProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 536
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->isMatchExitEnverment()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 537
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->delayedExit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 538
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->delayedExit:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 542
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners$7;->delayedExit:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
