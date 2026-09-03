.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;
.super Ljava/lang/Object;
.source "Text2TextSession.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

.field final synthetic val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V
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

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountLogin(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->stopSession()V

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 77
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$botMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 83
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    .line 121
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/payment/BillingServiceManager;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->isAccountLogin(Z)V

    :cond_2
    :goto_0
    return-void
.end method
