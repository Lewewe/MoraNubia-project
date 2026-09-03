.class public Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "LiveCalenderLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;,
        Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;,
        Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$SingleInstance;
    }
.end annotation


# instance fields
.field private final GRAY_SUFFIX:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

.field private liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 41
    const-string v0, "LiveCalenderLoadManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "_gray"

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->GRAY_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->callback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    return-object p0
.end method

.method static synthetic access$2702(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->isCanceled:Z

    return p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
    .locals 1

    .line 49
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$SingleInstance;->instance:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    return-object v0
.end method

.method private onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->callback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 105
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method private onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->callback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->cancel()V

    .line 92
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 2

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    .line 74
    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$200(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    .line 82
    invoke-static {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$300(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCallback(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->callback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;-><init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->liveCalenderLoader:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->setMaxRetryCount(I)V

    return-object p0
.end method
