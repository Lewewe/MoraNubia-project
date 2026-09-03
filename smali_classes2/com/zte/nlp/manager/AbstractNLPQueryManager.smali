.class public abstract Lcom/zte/nlp/manager/AbstractNLPQueryManager;
.super Ljava/lang/Object;
.source "AbstractNLPQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;

.field private confirmContent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private history:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isCanceled:Z

.field private offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

.field private onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "NLPQueryManager"

    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->history:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->confirmContent:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zte/nlp/manager/AbstractNLPQueryManager;Lcom/zte/nlp/model/NLPResponse;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onSuccess(Lcom/zte/nlp/model/NLPResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onFailure()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/nlp/manager/AbstractNLPQueryManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->queryOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onFailure()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    .line 152
    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    .line 153
    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->callback:Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->callback:Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-interface {p0, v0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;->onFailure(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->callback:Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-interface {p0, v0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;->onFailure(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSuccess(Lcom/zte/nlp/model/NLPResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    .line 144
    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    .line 145
    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->callback:Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;

    if-eqz p0, :cond_0

    .line 146
    invoke-interface {p0, p1}, Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;->onSuccess(Lcom/zte/nlp/model/NLPResponse;)V

    :cond_0
    return-void
.end method

.method private query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zte/nlp/manager/AbstractNLPQueryManager$1;-><init>(Lcom/zte/nlp/manager/AbstractNLPQueryManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    .line 94
    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->queryOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private queryOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/zte/nlp/manager/AbstractNLPQueryManager$2;

    invoke-direct {v0, p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager$2;-><init>(Lcom/zte/nlp/manager/AbstractNLPQueryManager;)V

    iput-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    .line 126
    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 131
    :try_start_0
    iput-boolean v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->isCanceled:Z

    .line 132
    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->cancel()V

    .line 134
    iput-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->offlineController:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->cancel()V

    .line 138
    iput-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onlineController:Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract isEnableNLP()Z
.end method

.method public declared-synchronized load(Ljava/lang/String;Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    iput-boolean v0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->isCanceled:Z

    .line 47
    iput-object p2, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->callback:Lcom/zte/nlp/manager/AbstractNLPQueryManager$Callback;

    .line 48
    invoke-virtual {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->isEnableNLP()Z

    move-result p2

    if-nez p2, :cond_0

    .line 49
    const-string p1, "NLPQueryManager"

    const-string p2, "nlp onError by disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 54
    const-string p1, "NLPQueryManager"

    const-string p2, "nlp onError by empty text"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onFailure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 59
    const-string p1, "NLPQueryManager"

    const-string p2, "nlp onError by network offline"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->onFailure()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->history:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->confirmContent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfirmContent(Ljava/lang/String;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->confirmContent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setHistory(Ljava/lang/String;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/nlp/manager/AbstractNLPQueryManager;->history:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
