.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;
.super Ljava/lang/Object;
.source "Text2TextSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->isAccountLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession$1$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    const/4 v0, 0x7

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$run$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession$1$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    const/4 v0, 0x6

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$run$2$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession$1$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 86
    invoke-static {}, Lcom/zte/aimodel/utils/ModelSwitchController;->isIsProModel()Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Z)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object v1

    .line 88
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startChat balanceStatus={}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget v1, v1, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 92
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-static {v1, v2, p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->access$300(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v2, v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
