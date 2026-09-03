.class Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;
.super Ljava/lang/Object;
.source "AbstractChatManager.java"

# interfaces
.implements Lcom/zte/feedback/FeedbackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onFeedbackThumbChanged(Landroid/content/Context;ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field final synthetic val$callback:Lcom/zte/feedback/FeedbackCallback;

.field final synthetic val$message:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V
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

    .line 190
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->val$message:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->val$callback:Lcom/zte/feedback/FeedbackCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeedbackCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->onFeedbackResult(Z)V

    return-void
.end method

.method public onFeedbackFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->onFeedbackResult(Z)V

    return-void
.end method

.method public onFeedbackResult(Z)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->val$message:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setFeedbackStatus(I)V

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->val$message:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;->val$callback:Lcom/zte/feedback/FeedbackCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 209
    invoke-interface {p0}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackCompleted()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface {p0}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackFailed()V

    :cond_1
    :goto_0
    return-void
.end method
