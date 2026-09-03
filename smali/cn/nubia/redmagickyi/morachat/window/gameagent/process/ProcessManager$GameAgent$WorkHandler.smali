.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;
.super Landroid/os/Handler;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_WORK:I


# instance fields
.field private pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 636
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    .line 637
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 635
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 633
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 633
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->handleGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 633
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V

    return-void
.end method

.method private handleGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameAgent -> handleGameAssistRemoteResponse, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ChatResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$3300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/main/function/nlp/NLPQueryManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$3300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/main/function/nlp/NLPQueryManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getHistory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/nlp/NLPQueryManager;->setHistory(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$3300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/main/function/nlp/NLPQueryManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->isConfirmContent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getOutput()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/nlp/NLPQueryManager;->setConfirmContent(Ljava/lang/String;)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->isShowNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->setIsResponseShowNotification(Z)V

    .line 718
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->isWaitingAsr()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->setIsResponseWaitingAsr(Z)V

    goto :goto_1

    .line 721
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->setIsResponseWaitingAsr(Z)V

    .line 724
    :cond_3
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;

    move-result-object p0

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->createByGameAgentResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Wakeup;->handleMessage(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    return-void
.end method

.method private pendingGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameAgent -> pendingGameAssistRemoteResponse, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ChatResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 704
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x0

    .line 705
    iput p2, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x1

    .line 706
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 707
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 645
    const-string v0, "GameAgent -> handleMessage gameagent with check"

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 648
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 649
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-eqz v4, :cond_9

    .line 653
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    :goto_1
    move v2, v3

    goto/16 :goto_2

    .line 656
    :cond_3
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 659
    :cond_4
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$2700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isAccompanyEntry()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 667
    :cond_5
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 669
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;->isAccompanyEntry()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 675
    :cond_6
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityMotionPlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 681
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GameAgent -> handleMessage gameagent with check, listeners.isScreenOn(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Listeners;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", input.isExcuting(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Input;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", output.isExcuting(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", analyze.isExcuting(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    iget-object v4, v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GameAgent -> handleMessage gameagent with check, isEnableHandle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length of pendingQueue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isNewAdd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    .line 683
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->pendingRemoteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_8

    .line 686
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->handleGameAssistRemoteResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    :cond_8
    :goto_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent;->isHasPendingRemoteQueue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->removeMessages(I)V

    .line 694
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$GameAgent$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_4
    return-void
.end method
