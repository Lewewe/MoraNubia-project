.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;
.super Ljava/lang/Object;
.source "Audio2TextSession.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

.field final synthetic val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$shouldStopSession:Z

.field final synthetic val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field final synthetic val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;ZLcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$shouldStopSession:Z

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountLogin(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 60
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$shouldStopSession:Z

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->stopSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 108
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/payment/BillingServiceManager;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->isAccountLogin(Z)V

    :cond_3
    :goto_0
    return-void
.end method
