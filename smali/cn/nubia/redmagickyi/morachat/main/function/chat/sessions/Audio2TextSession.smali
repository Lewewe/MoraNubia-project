.class public Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;
.super Ljava/lang/Object;
.source "Audio2TextSession.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Audio2TextSession"


# instance fields
.field private mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

.field private mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 46
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->queryBalances()Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->startExecute(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    return-void
.end method

.method private deductAmount(I)V
    .locals 3

    .line 324
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deductAmount tokens={}"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPaymentModelName()Ljava/lang/String;
    .locals 1

    .line 331
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object p0

    invoke-static {}, Lcom/zte/aimodel/utils/ModelSwitchController;->isIsProModel()Z

    move-result v0

    invoke-static {v0}, Lcom/zte/payment/common/PaymentUtils;->getType(Z)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getAIModelConstForPayment(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$stopSession$1(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private queryBalances()Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;
    .locals 10

    .line 296
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "queryBalances start"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->getPaymentModelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zte/payment/BillingServiceManager;->checkBalance(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 300
    const-string v2, "user_logged"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 301
    const-string v3, "billing_status"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 302
    const-string v4, "points"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 303
    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v5, v6, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "queryBalances: isLogin={}, isEnble={}\uff0cpoints={}, time={}ms"

    invoke-static {v4, v1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_0

    .line 305
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0

    :cond_0
    if-nez v3, :cond_1

    .line 308
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(II)V

    return-object v0

    .line 310
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0

    .line 312
    :cond_2
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0
.end method

.method private startExecute(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 8

    .line 139
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "startSession: path={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 144
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "startSession -> BEGIN"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->toRecognizeByAudioFile(Ljava/lang/String;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    new-instance v7, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;)V

    invoke-virtual {p4, v0, v7}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->startASR(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    .line 233
    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "startSession end totalTokens={}"

    invoke-static {p1, p4, p2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->updateMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 3

    monitor-enter p0

    .line 264
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "endExecute reason={}"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopASR()V

    :cond_0
    const/4 p1, 0x1

    if-eqz p3, :cond_2

    .line 270
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 271
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 273
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "endExecute notifyItemRemoved"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0, p3, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    move v0, p1

    goto :goto_0

    .line 278
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "endExecute notifyItemChanged"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0, p3, p1, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    move v0, p4

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 285
    :goto_1
    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0, p2, p1, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 288
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$deductAmount$2$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Audio2TextSession(I)V
    .locals 3

    .line 325
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->getPaymentModelName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_payment_ai_function_alias:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mora Agent"

    invoke-virtual {v0, p1, p0, v2, v1}, Lcom/zte/payment/BillingServiceManager;->deductAmount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$stopSession$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Audio2TextSession(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 243
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 244
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getChatSessionType(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;ZLjava/lang/Runnable;)V
    .locals 10

    .line 50
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "executUserInput"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v3, p0

    move-object v5, p4

    .line 52
    invoke-virtual {p0, p4, v1, v1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    return-void

    :cond_0
    move-object v3, p0

    move-object v5, p4

    .line 55
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    move-object v2, v1

    move v4, p5

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;ZLcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->isAccountLogin(Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V

    return-void
.end method

.method public stopSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 6

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 244
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 245
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "stopSession: user stopList={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 248
    invoke-virtual {p0, p1, v1, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 254
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 255
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->TAG:Ljava/lang/String;

    const-string v4, "stopSession: bot stopList={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 258
    invoke-virtual {p0, p1, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_1

    :cond_1
    return-void
.end method
