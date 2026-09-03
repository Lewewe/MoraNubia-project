.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->startAIModel(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

.field final synthetic val$analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

.field final synthetic val$wordsOriginal:Ljava/lang/String;

.field final synthetic val$wordsWithPrompt:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1196
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$wordsOriginal:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$wordsWithPrompt:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 2

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analyze -> nlpFailed, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;Lcom/zte/aivoice/code/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/zte/nlp/model/NLPResponse;)V
    .locals 5

    .line 1199
    invoke-virtual {p1}, Lcom/zte/nlp/model/NLPResponse;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/nlp/util/Domain;->isGameAssistDomain(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ", isExcuting: "

    const-string v2, ", analyzeEntry: "

    const-string v3, "Window-ProcessManager"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/zte/nlp/model/NLPResponse;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/nlp/util/Domain;->isConfirmDomain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    invoke-virtual {p1}, Lcom/zte/nlp/model/NLPResponse;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/nlp/util/Domain;->isChatDomain(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1244
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Analyze -> startChatSession, StateMachine: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1201
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Analyze -> startGameAssistSession, StateMachine: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/StateMachine;->print()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;Lcom/zte/nlp/model/NLPResponse;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->ofChat(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;)V

    :cond_2
    :goto_1
    return-void
.end method
