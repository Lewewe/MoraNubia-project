.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameAgent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;
    }
.end annotation


# instance fields
.field private isResponseShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isResponseWaitingAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

.field private workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 583
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseWaitingAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 585
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 586
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$1;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)V

    return-void
.end method


# virtual methods
.method public handleGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 619
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;->ContentProvider:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    if-ne p2, v0, :cond_1

    .line 620
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->isClearQueueAndPlayCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 623
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->removeMessages(I)V

    .line 624
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->access$3100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->access$3200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->access$3100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V

    :goto_0
    return-void
.end method

.method public isHasPendingRemoteQueue()Z
    .locals 0

    .line 615
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->workHandler:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResponseShowNotification()Z
    .locals 0

    .line 601
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isResponseWaitingAsr()Z
    .locals 0

    .line 593
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseWaitingAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isWindowOnlyTTSFromGameAgent()Z
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseWaitingAsr()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 610
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public setIsResponseShowNotification(Z)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setIsResponseWaitingAsr(Z)V
    .locals 0

    .line 589
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isResponseWaitingAsr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
