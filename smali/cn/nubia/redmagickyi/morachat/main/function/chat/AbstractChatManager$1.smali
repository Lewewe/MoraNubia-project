.class Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;
.super Ljava/lang/Object;
.source "AbstractChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->queryMessagesByTimeline(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field final synthetic val$onMessagesQueryListener:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V
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

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->val$onMessagesQueryListener:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getCreateTime()J

    move-result-wide v1

    :goto_0
    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getMessagesByTimeline(JI)Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 166
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
