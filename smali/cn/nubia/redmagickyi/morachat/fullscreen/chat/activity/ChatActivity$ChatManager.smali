.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;
    }
.end annotation


# instance fields
.field private audio2TextRetryManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

.field private chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field private isExistHistoryData:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1152
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)V
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->stopChat()V

    return-void
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->audio2TextRetryManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    return-object p0
.end method

.method static synthetic access$3900(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-object p0
.end method

.method private checkHistoryData()V
    .locals 3

    .line 1376
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->queryMessagesCountByTimeline(J)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1377
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->isExistHistoryData:Z

    if-eqz v0, :cond_1

    .line 1379
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>()V

    .line 1380
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageType(I)V

    .line 1381
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, v1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    :cond_1
    return-void
.end method

.method private stopChat()V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopText2TextSession()V

    .line 1432
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopImage2TextSession()V

    .line 1433
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->access$4000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopAudio2TextSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    return-void
.end method


# virtual methods
.method public appendRecord(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 0

    .line 1415
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    return-void
.end method

.method public appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 0

    .line 1411
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    return-void
.end method

.method public appendRecords(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 1407
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecords(ILjava/util/List;Z)V

    return-void
.end method

.method public appendRecords(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 1403
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->appendRecords(Ljava/util/List;Z)V

    return-void
.end method

.method public getRecordList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 1372
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;
    .locals 2

    .line 1158
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->audio2TextRetryManager:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    .line 1159
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    .line 1363
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->checkHistoryData()V

    return-object p0
.end method

.method public isExistHistory()Z
    .locals 0

    .line 1386
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->isExistHistoryData:Z

    return p0
.end method

.method public onFeedbackThumbChanged(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V
    .locals 1

    .line 1427
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onFeedbackThumbChanged(Landroid/content/Context;ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V

    return-void
.end method

.method public queryHistory(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->queryMessagesByTimeline(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 1368
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AppExecutors;->release()V

    return-void
.end method

.method public removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 0

    .line 1423
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    return-void
.end method

.method public startChat(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    return v3

    .line 1457
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->stopChat()V

    .line 1458
    new-instance v8, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const-string v1, ""

    invoke-direct {v8, v2, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    .line 1459
    invoke-virtual {v8, v5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v3

    const-string v6, "chat_audio:"

    invoke-virtual {v8, v3, v6}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    new-instance v9, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {v9, v4, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    .line 1463
    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 1464
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;-><init>()V

    invoke-virtual {v9, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setReceivedMsgEntry(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;)V

    .line 1465
    invoke-virtual {v9}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 1466
    invoke-virtual {v9}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setTriggerCmd(Ljava/lang/String;)V

    .line 1468
    iget-object v6, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object v7

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->access$4000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;)Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v12, p3

    invoke-virtual/range {v6 .. v12}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startAudio2TextSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;ZLjava/lang/Runnable;)V

    return v2

    .line 1443
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->stopChat()V

    .line 1444
    iget-object v12, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/zte/oss/entry/UploadFile;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$3;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)V

    invoke-direct {v15, v3, v1}, Lcom/zte/oss/entry/UploadFile;-><init>(ILcom/zte/oss/entry/UploadFile$FileGetter;)V

    const/16 v16, 0x1

    move-object/from16 v17, p3

    invoke-virtual/range {v12 .. v17}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startImage2TextSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V

    return v2

    .line 1439
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->stopChat()V

    .line 1440
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v1, v0, v3, v4}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startText2TextSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return v2
.end method

.method public updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V
    .locals 0

    .line 1419
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->chatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    return-void
.end method
