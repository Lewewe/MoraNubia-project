.class public Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;
.super Ljava/lang/Object;
.source "Text2TextSession.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Text2TextSession"


# instance fields
.field private aimodelSource:I

.field private mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field private mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimodel/AIClient;->getDefaultAIModelSourceChat()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->aimodelSource:I

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 43
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    .line 44
    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_REDMAGICKYI:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-ne p1, p2, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object p1

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->aimodelSource:I

    invoke-virtual {p1, p0}, Lcom/zte/aimodel/AIClient;->ofChat(I)Lcom/zte/aimodel/feature/chat/FeatureChat;

    move-result-object p0

    invoke-static {}, Lcom/zte/aimodel/utils/ModelSwitchController;->isIsProModel()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/aimodel/feature/chat/FeatureChat;->clearHistory(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Z)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->queryBalances(Z)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->startExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    return-void
.end method

.method private deductAmount(II)V
    .locals 3

    .line 281
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deductAmount tokens={}"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPaymentModelName(I)Ljava/lang/String;
    .locals 0

    .line 288
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getAIModelConstForPayment(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$stopSession$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queryBalances(Z)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;
    .locals 9

    .line 253
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "queryBalances start"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v2

    invoke-static {p1}, Lcom/zte/payment/common/PaymentUtils;->getType(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->getPaymentModelName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zte/payment/BillingServiceManager;->checkBalance(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 257
    const-string p1, "user_logged"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 258
    const-string v2, "billing_status"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 259
    const-string v3, "points"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 260
    sget-object v3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v4, v5, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "queryBalances: isLogin={}, isEnble={}\uff0cpoints={}, time={}ms"

    invoke-static {v3, v1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 262
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    .line 265
    new-instance p1, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, -0x1

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(II)V

    return-object p1

    .line 267
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0

    .line 269
    :cond_2
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0
.end method

.method private startExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 5

    .line 153
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "startSession: cmd={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-static {p3}, Lcom/zte/payment/common/PaymentUtils;->getType(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setModelType(I)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isPicAttachment()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getPromptForFeatureChatByPicture(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object v2

    iget v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->aimodelSource:I

    invoke-virtual {v2, v4}, Lcom/zte/aimodel/AIClient;->ofChat(I)Lcom/zte/aimodel/feature/chat/FeatureChat;

    move-result-object v2

    new-instance v4, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

    invoke-direct {v4, p0, p2, v1, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v2, v0, v3, p3, v4}, Lcom/zte/aimodel/feature/chat/FeatureChat;->chatByText(Ljava/lang/String;ZZLcom/zte/aimodel/feature/chat/FeatureChat$IChatResponseCallback;)I

    move-result p1

    .line 192
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setTokens(I)V

    .line 193
    sget-object p3, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "startSession end totalTokens={}"

    invoke-static {p3, v1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->updateMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    if-lez p1, :cond_1

    .line 196
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getModelType()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->deductAmount(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 4

    monitor-enter p0

    .line 224
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "endExecute reason={}"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 227
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 228
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 230
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v3, "endExecute notifyItemRemoved"

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v2, p2, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    move v2, v1

    goto :goto_0

    .line 235
    :cond_0
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v3, "endExecute notifyItemChanged"

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v2, p2, v1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    move v0, p3

    .line 242
    :cond_2
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0, p1, v1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$deductAmount$2$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession(II)V
    .locals 2

    .line 282
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v0

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->getPaymentModelName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_payment_ai_function_alias:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Mora Agent"

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/zte/payment/BillingServiceManager;->deductAmount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$stopSession$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 204
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getChatSessionType(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V
    .locals 2

    .line 64
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "executUserInput"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p0, p2, p2, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    return-void

    .line 69
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->isAccountLogin(Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V

    return-void
.end method

.method public startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    .line 51
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x3

    .line 52
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 54
    new-instance v2, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v3, 0x2

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    .line 55
    invoke-virtual {v2, p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 56
    new-instance p2, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    invoke-direct {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;-><init>()V

    invoke-virtual {v2, p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setReceivedMsgEntry(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;)V

    .line 57
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setTriggerCmd(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 60
    invoke-virtual {p0, p1, v0, v2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopSession()V
    .locals 6

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 204
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 205
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "stopSession: user stopList={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 208
    invoke-virtual {p0, v1, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 214
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 215
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->TAG:Ljava/lang/String;

    const-string v4, "stopSession: bot stopList={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 218
    invoke-virtual {p0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_1

    :cond_1
    return-void
.end method
