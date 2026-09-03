.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;
.super Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

.field final synthetic val$this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 648
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->val$this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    return-void
.end method


# virtual methods
.method public onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z
    .locals 2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 657
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 658
    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 659
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    const/4 p5, 0x2

    invoke-virtual {p3, p5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    const/4 p3, 0x1

    .line 660
    invoke-virtual {p0, p2, p3, p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 662
    :cond_0
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    move-result-object p3

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, "_"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p3

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    move-result-object p2

    .line 663
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Analyze -> onChatCompleted, StateMachine: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", outputEntry: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Window-ProcessManager"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;->access$2900(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;)V

    .line 665
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Output;->start(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)V

    :cond_1
    return p1
.end method

.method public onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 0

    .line 651
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;->access$600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Analyze;->handleOnChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ILcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)V

    return-void
.end method
