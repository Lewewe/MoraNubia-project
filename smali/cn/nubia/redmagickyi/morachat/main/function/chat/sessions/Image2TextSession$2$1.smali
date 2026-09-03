.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;
.super Ljava/lang/Object;
.source "Image2TextSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->isAccountLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

.field final synthetic val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession$2$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    const/4 v0, 0x7

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$run$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession$2$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 127
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    const/4 v0, 0x6

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$run$2$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession$2$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object v0

    .line 110
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startChat balanceStatus={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget v0, v0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object v5, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$uploadFile:Lcom/zte/oss/entry/UploadFile;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-boolean v6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$isThePictureFromUser:Z

    invoke-static/range {v1 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$300(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/oss/entry/UploadFile;Z)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
