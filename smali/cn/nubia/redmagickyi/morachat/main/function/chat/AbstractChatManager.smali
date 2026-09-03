.class public abstract Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
.super Ljava/lang/Object;
.source "AbstractChatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;,
        Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$SESSION_TYPE;
    }
.end annotation


# static fields
.field private static final PAGE_LOADING_LIMIT:I = 0x32

.field public static final SESSION_TYPE_AUDIO2TEXT:I = 0x3

.field public static final SESSION_TYPE_IMG2TEXT:I = 0x2

.field public static final SESSION_TYPE_TEXT2TEXT:I = 0x1

.field public static final SESSION_TYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChatManager"


# instance fields
.field private final mAudio2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

.field private final mImage2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

.field private final mText2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 60
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-direct {v0, p1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mText2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    .line 61
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-direct {v0, p1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mImage2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-direct {v0, p1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mAudio2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    .line 63
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method public static getChatSessionType(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isPicAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isFileAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isAudioAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public appendRecord(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataInserted(I)V

    if-eqz p3, :cond_0

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->insertMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public appendRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataUpdated(I)V

    if-eqz p2, :cond_1

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->updateMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataInserted(I)V

    if-eqz p2, :cond_1

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->insertMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public appendRecords(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 85
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataInserted(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataRangeChanged()V

    :goto_0
    if-eqz p3, :cond_1

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->insertMessage(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public appendRecords(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataInserted(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataRangeChanged()V

    :goto_0
    if-eqz p2, :cond_1

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->insertMessage(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public checkEnableStartImage2TextSession(Landroid/content/Context;Lcom/zte/utils/MyRunnable;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mImage2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->checkEnableStartImage2TextSession(Landroid/content/Context;Lcom/zte/utils/MyRunnable;)V

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

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    return-object p0
.end method

.method public abstract onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z
.end method

.method public abstract onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
.end method

.method public onDataInserted(I)V
    .locals 0

    return-void
.end method

.method public onDataRangeChanged()V
    .locals 0

    return-void
.end method

.method public onDataRemoved(I)V
    .locals 0

    return-void
.end method

.method public onDataUpdated(I)V
    .locals 0

    return-void
.end method

.method public onFeedbackThumbChanged(Landroid/content/Context;ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V
    .locals 6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 224
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setFeedbackStatus(I)V

    .line 225
    invoke-virtual {p0, p3, v0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 226
    invoke-static {}, Lcom/zte/feedback/FeedbackManager;->getInstance()Lcom/zte/feedback/FeedbackManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/zte/feedback/FeedbackManager;->handleUserFeedbackCancel(Lcom/zte/feedback/FeedbackCallback;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/zte/feedback/FeedbackManager;->getInstance()Lcom/zte/feedback/FeedbackManager;

    move-result-object v0

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getTriggerCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getModelType()I

    move-result v4

    new-instance v5, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;

    invoke-direct {v5, p0, p3, p4}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/feedback/FeedbackManager;->handleUserFeedbackDown(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/zte/feedback/FeedbackCallback;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setFeedbackStatus(I)V

    .line 219
    invoke-virtual {p0, p3, v0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 220
    invoke-static {}, Lcom/zte/feedback/FeedbackManager;->getInstance()Lcom/zte/feedback/FeedbackManager;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/zte/feedback/FeedbackManager;->handleUserFeedbackUp(Lcom/zte/feedback/FeedbackCallback;)V

    :goto_0
    return-void
.end method

.method public queryMessagesByTimeline(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V
    .locals 2

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryMessagesCountByTimeline(J)I
    .locals 0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getMessagesCountByTimeline(J)I

    move-result p0

    return p0
.end method

.method public removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataRemoved(I)V

    if-eqz p2, :cond_0

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->deleteMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public startAudio2TextSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;ZLjava/lang/Runnable;)V
    .locals 7

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mAudio2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public startImage2TextSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V
    .locals 6

    .line 268
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mImage2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->startSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public startText2TextSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mText2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startText2TextSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mText2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAudio2TextSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mAudio2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->stopSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    return-void
.end method

.method public stopImage2TextSession()V
    .locals 0

    .line 272
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mImage2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->stopSession()V

    return-void
.end method

.method public stopText2TextSession()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mText2TextSession:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->stopSession()V

    return-void
.end method

.method public updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 124
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onDataUpdated(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->updateMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_1
    return-void
.end method
