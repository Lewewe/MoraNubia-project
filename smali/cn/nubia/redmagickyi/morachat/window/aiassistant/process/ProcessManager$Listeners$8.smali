.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field delayedExit:Ljava/lang/Runnable;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;->delayedExit:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChange(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;Z)V
    .locals 3

    .line 480
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGameSceneSwitcherChanged: type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", isGameScene = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 483
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;->delayedExit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->isPending(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 484
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;->delayedExit:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 487
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Listeners$8;->delayedExit:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
