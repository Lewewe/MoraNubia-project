.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;
.super Ljava/lang/Object;
.source "Image2TextSession.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->startSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$isThePictureFromUser:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$uploadFile:Lcom/zte/oss/entry/UploadFile;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Ljava/lang/String;Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$uploadFile:Lcom/zte/oss/entry/UploadFile;

    iput-boolean p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$isThePictureFromUser:Z

    iput-object p6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountLogin(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->stopSession()V

    .line 94
    new-instance p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 95
    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 96
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$imagePath:Ljava/lang/String;

    const-string v4, "chat_img:"

    invoke-virtual {p1, v3, v4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 99
    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    .line 100
    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 101
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;-><init>()V

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setReceivedMsgEntry(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;)V

    .line 102
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setTriggerCmd(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 104
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$200(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;

    invoke-direct {v1, p0, v3, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    .line 143
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/payment/BillingServiceManager;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->isAccountLogin(Z)V

    :cond_2
    :goto_0
    return-void
.end method
