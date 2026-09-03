.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Analyze"
.end annotation


# instance fields
.field private analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

.field private chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field private isAnalyzing:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 807
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 803
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isAnalyzing:I

    .line 804
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    .line 808
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze$1;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-void
.end method

.method static synthetic access$3900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)V
    .locals 0

    .line 802
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onEndExcute()V

    return-void
.end method

.method static synthetic access$4100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
    .locals 0

    .line 802
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)Z
    .locals 0

    .line 802
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isExcuting()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;
    .locals 0

    .line 802
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    return-object p0
.end method

.method private isExcuting()Z
    .locals 3

    .line 960
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> isExcuting, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isExcuting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isAnalyzing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isAnalyzing:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEndExcute()V
    .locals 3

    .line 944
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> onEndExcute, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 945
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isAnalyzing:I

    .line 946
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->init()V

    return-void
.end method

.method private onPauseExcute()V
    .locals 3

    .line 955
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> onPauseExcute, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 956
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isAnalyzing:I

    return-void
.end method

.method private onStartExcute()V
    .locals 3

    .line 950
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> onStartExcute, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 951
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isAnalyzing:I

    return-void
.end method

.method private startAIModel(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)V
    .locals 6

    .line 898
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> startAIModel, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", analyzeEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isExcuting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isExcuting()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 903
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->getWords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isExcuting()Z

    move-result p1

    if-nez p1, :cond_4

    .line 906
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;Z)V

    goto/16 :goto_1

    .line 910
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$2500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;->access$4000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$ExitRunner;)V

    .line 912
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->STATE_ANALYING:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->setState(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;)V

    .line 913
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->isChatEntry()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$800(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Input;->stop()V

    .line 919
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onStartExcute()V

    .line 920
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;

    .line 921
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->getWords()Ljava/lang/String;

    move-result-object v0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->isAccompanyEntry()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 924
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getPromptForFeatureChatByPicture(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 926
    :cond_3
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getPromptForFeatureChatByText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Analyze -> startChatSession, StateMachine: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->isExcuting()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze$2;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private stopAIModel()V
    .locals 3

    .line 939
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> stopAIModel, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopText2TextSession()V

    return-void
.end method


# virtual methods
.method public handleOnChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ILcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)V
    .locals 3

    .line 856
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> onChatFailed, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", analyzeEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 889
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onEndExcute()V

    .line 892
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto/16 :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 879
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 880
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onEndExcute()V

    goto :goto_0

    .line 882
    :cond_3
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/payment/BillingServiceManager;->startUserLoginActivity()V

    .line 884
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 873
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onEndExcute()V

    .line 875
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_REMOTE:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    .line 860
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onEndExcute()V

    .line 862
    :cond_7
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;

    move-result-object p0

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)V

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 850
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> pause, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onPauseExcute()V

    .line 852
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->stopAIModel()V

    return-void
.end method

.method public start(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)V
    .locals 3

    .line 839
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> start, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", analyzeEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->startAIModel(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 844
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analyze -> stop, StateMachine: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->onEndExcute()V

    .line 846
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager$Analyze;->stopAIModel()V

    return-void
.end method
