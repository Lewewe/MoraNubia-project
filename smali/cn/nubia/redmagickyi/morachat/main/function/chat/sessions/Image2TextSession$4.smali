.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;
.super Ljava/lang/Object;
.source "Image2TextSession.java"

# interfaces
.implements Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->doPictureAnalyze(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

.field final synthetic val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
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

    .line 213
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession$4(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 1

    .line 236
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to resolve host"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Software caused connection abort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onSuccess$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession$4(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 6

    .line 217
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z

    move-result p3

    if-nez p3, :cond_1

    .line 222
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setMsg(Ljava/lang/String;)V

    .line 223
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_1
    if-eqz p5, :cond_2

    .line 226
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z

    :cond_2
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 4

    .line 234
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startSession onFailure: result={}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)Z
    .locals 9

    .line 216
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$sb:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v8, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    invoke-virtual {v0, v8}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 229
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
