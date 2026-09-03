.class public Lcom/zte/feedback/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;
    }
.end annotation


# static fields
.field private static final AIMODEL:Ljava/lang/String; = "aimodel"

.field private static final ANSWER:Ljava/lang/String; = "answer"

.field private static final PKG:Ljava/lang/String; = "pkg"

.field private static final QUESTION:Ljava/lang/String; = "question"

.field private static final SEND_COMPLETED:Ljava/lang/String; = "com.zte.aifeedback.ACTION_SEND_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "FeedbackManager"

.field private static sInstance:Lcom/zte/feedback/FeedbackManager;


# instance fields
.field private feedbackBroadcastReceiverManager:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;-><init>(Lcom/zte/feedback/FeedbackManager;Lcom/zte/feedback/FeedbackManager$1;)V

    iput-object v0, p0, Lcom/zte/feedback/FeedbackManager;->feedbackBroadcastReceiverManager:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;

    return-void
.end method

.method public static getInstance()Lcom/zte/feedback/FeedbackManager;
    .locals 2

    .line 31
    const-class v0, Lcom/zte/aimodel/AIClient;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/zte/feedback/FeedbackManager;->sInstance:Lcom/zte/feedback/FeedbackManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/zte/feedback/FeedbackManager;

    invoke-direct {v1}, Lcom/zte/feedback/FeedbackManager;-><init>()V

    sput-object v1, Lcom/zte/feedback/FeedbackManager;->sInstance:Lcom/zte/feedback/FeedbackManager;

    .line 35
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/zte/feedback/FeedbackManager;->sInstance:Lcom/zte/feedback/FeedbackManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleUserFeedbackCancel(Lcom/zte/feedback/FeedbackCallback;)V
    .locals 1

    .line 59
    const-string p0, "FeedbackManager"

    const-string v0, "handleUserFeedbackCancel"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackCompleted()V

    return-void
.end method

.method public handleUserFeedbackDown(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/zte/feedback/FeedbackCallback;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FeedbackManager"

    const-string v2, "handleUserFeedbackDown context={}"

    invoke-static {v1, v2, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 72
    invoke-interface {p5}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackFailed()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/zte/feedback/FeedbackManager;->feedbackBroadcastReceiverManager:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, p5}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->access$100(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Landroid/content/Context;Lcom/zte/feedback/FeedbackCallback;)Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;

    move-result-object v0

    .line 78
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    const-string v3, "com.zte.userguide"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "com.zte.userguide.aifeedback.action.SEND_AI_FEEDBACK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v3, "question"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string p2, "answer"

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string p2, "aimodel"

    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zte/aimodel/feature/chat/ChatModel;->getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;->getAIModelConstForPayment(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string p2, "pkg"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 85
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    const-string p2, "handleUserFeedbackDown startActivity"

    invoke-static {v1, p2, p1}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_2

    .line 90
    iget-object p0, p0, Lcom/zte/feedback/FeedbackManager;->feedbackBroadcastReceiverManager:Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;

    invoke-static {p0, v0}, Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;->access$200(Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager;Lcom/zte/feedback/FeedbackManager$FeedbackBroadcastReceiverManager$UserFeedbackBroadcastReceiver;)V

    .line 92
    :cond_2
    invoke-interface {p5}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackFailed()V

    :goto_1
    return-void
.end method

.method public handleUserFeedbackUp(Lcom/zte/feedback/FeedbackCallback;)V
    .locals 1

    .line 48
    const-string p0, "FeedbackManager"

    const-string v0, "handleUserFeedbackUp"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lcom/zte/feedback/FeedbackCallback;->onFeedbackCompleted()V

    return-void
.end method
