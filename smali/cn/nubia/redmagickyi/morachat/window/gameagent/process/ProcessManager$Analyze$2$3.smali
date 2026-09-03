.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->onFailure(Lcom/zte/aivoice/code/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

.field final synthetic val$errorCode:Lcom/zte/aivoice/code/ErrorCode;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1257
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->val$errorCode:Lcom/zte/aivoice/code/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1260
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->val$errorCode:Lcom/zte/aivoice/code/ErrorCode;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    if-ne v0, v1, :cond_0

    .line 1261
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$analyzeEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getWords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->ERR_NETWORK:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getEmoCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->val$errorCode:Lcom/zte/aivoice/code/ErrorCode;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne v0, v1, :cond_1

    .line 1264
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$4600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2$3;->this$2:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$2;->val$wordsWithPrompt:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startText2TextSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
