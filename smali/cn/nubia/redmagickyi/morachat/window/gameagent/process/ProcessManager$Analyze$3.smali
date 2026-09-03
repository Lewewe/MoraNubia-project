.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$3;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$wordsWithPrompt:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;Ljava/lang/StringBuilder;)V
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

    .line 1272
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$3;->val$wordsWithPrompt:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->access$4600(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$3;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->access$1900(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Analyze$3;->val$wordsWithPrompt:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startText2TextSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
