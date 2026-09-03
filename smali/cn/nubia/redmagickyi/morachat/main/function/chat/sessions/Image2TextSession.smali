.class public Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;
.super Ljava/lang/Object;
.source "Image2TextSession.java"


# static fields
.field private static TAG:Ljava/lang/String; = "Image2TextSession"


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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimodel/AIClient;->getDefaultAIModelSourcePictureAnalyze()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->aimodelSource:I

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 45
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->queryBalances()Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/oss/entry/UploadFile;Z)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->startExecute(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/oss/entry/UploadFile;Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->doPictureAnalyze(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Z)V

    return-void
.end method

.method private deductAmount(I)V
    .locals 3

    .line 334
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deductAmount tokens={}"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doPictureAnalyze(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Z)V
    .locals 2

    .line 198
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 202
    sget-object p4, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string p5, "startSession file upload FAILED"

    invoke-static {p4, p5}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p4

    new-instance p5, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {p4, p5}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v0, "startSession -> file upload SUCCESS"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-static {}, Lcom/zte/aimodel/AIClient;->getInstance()Lcom/zte/aimodel/AIClient;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->aimodelSource:I

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/AIClient;->ofPictureAnalyze(I)Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$4;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {v0, p4, p5, v1}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze;->analyze(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I

    move-result p1

    .line 244
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setTokens(I)V

    .line 245
    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "startSession end totalTokens={}"

    invoke-static {p2, p5, p4}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mScene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->updateMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    if-lez p1, :cond_2

    .line 248
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->deductAmount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getPaymentModelName()Ljava/lang/String;
    .locals 0

    .line 341
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->getAIModelConstForPayment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$stopSession$2(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p0

    const/4 v0, 0x3

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

    .line 306
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "queryBalances start"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->getPaymentModelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zte/payment/BillingServiceManager;->checkBalance(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 310
    const-string v2, "user_logged"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 311
    const-string v3, "billing_status"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 312
    const-string v4, "points"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 313
    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

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

    .line 315
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0

    :cond_0
    if-nez v3, :cond_1

    .line 318
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(II)V

    return-object v0

    .line 320
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0

    .line 322
    :cond_2
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;-><init>(I)V

    return-object p0
.end method

.method private startExecute(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/oss/entry/UploadFile;Z)V
    .locals 9

    .line 174
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v0

    .line 175
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "startSession: path={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;->supportedLocalFile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p4, v0}, Lcom/zte/oss/entry/UploadFile;->getFile(Ljava/lang/String;)Lcom/zte/oss/entry/UploadFile;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 183
    invoke-virtual {p4}, Lcom/zte/oss/entry/UploadFile;->getFile()Ljava/io/File;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 184
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    .line 186
    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->doPictureAnalyze(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Z)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/zte/oss/UpLoadFileController;->getInstance()Lcom/zte/oss/UpLoadFileController;

    move-result-object v1

    invoke-virtual {p4, v0}, Lcom/zte/oss/entry/UploadFile;->getFile(Ljava/lang/String;)Lcom/zte/oss/entry/UploadFile;

    move-result-object p4

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    invoke-virtual {v1, p1, p4, v2, v0}, Lcom/zte/oss/UpLoadFileController;->doUploadFileRequest(Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;Lcom/zte/oss/entry/CloudToken;Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkEnableStartImage2TextSession(Landroid/content/Context;Lcom/zte/utils/MyRunnable;)V
    .locals 1

    .line 49
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Lcom/zte/utils/MyRunnable;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->isAccountLogin(Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V

    return-void
.end method

.method public declared-synchronized endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 3

    monitor-enter p0

    .line 277
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "endExecute reason={}"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 281
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 283
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "endExecute notifyItemRemoved"

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v1, p2, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    move v1, v0

    goto :goto_0

    .line 288
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "endExecute notifyItemChanged"

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v1, p2, v0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 295
    :goto_1
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 296
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v1, p1, v0, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$deductAmount$3$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession(I)V
    .locals 3

    .line 335
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->getPaymentModelName()Ljava/lang/String;

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

.method synthetic lambda$doPictureAnalyze$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0

    .line 204
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 205
    invoke-virtual {p0, p2, p3, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 207
    invoke-virtual {p0, p2, p3, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$stopSession$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Image2TextSession(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 257
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getChatSessionType(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V
    .locals 9

    .line 82
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v1, "executUserInput"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p0, p2, p2, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    return-void

    .line 87
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object v0

    new-instance v8, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Ljava/lang/String;Landroid/content/Context;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v8}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->isAccountLogin(Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V

    return-void
.end method

.method public stopSession()V
    .locals 6

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 257
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 258
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v2, "stopSession: user stopList={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 261
    invoke-virtual {p0, v1, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->mChatManager:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 267
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 268
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->TAG:Ljava/lang/String;

    const-string v4, "stopSession: bot stopList={}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    .line 271
    invoke-virtual {p0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_1

    :cond_1
    return-void
.end method
