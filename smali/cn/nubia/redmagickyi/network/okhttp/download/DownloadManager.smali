.class public Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final M_POOL_SIZE:I = 0xa

.field private static manager:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;


# instance fields
.field private mClient:Lokhttp3/OkHttpClient;

.field private mCurrentTaskList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFutureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->initOkhttpClient()V

    const/16 v0, 0xa

    .line 52
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mFutureMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mCurrentTaskList:Ljava/util/Map;

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->manager:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->manager:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    .line 37
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->manager:Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init()V
    .locals 0

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;

    return-void
.end method

.method private initOkhttpClient()V
    .locals 4

    .line 61
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 62
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 64
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private isDownloadComplete(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 4

    .line 74
    sget-boolean v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->enableHttpConnection:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->isDownloading(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->cancel(Z)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->setClient(Lokhttp3/OkHttpClient;)V

    .line 82
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->setDownloadStatus(I)V

    .line 84
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getId()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mCurrentTaskList:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mFutureMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public cancel(Ljava/lang/String;Z)V
    .locals 2

    .line 139
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mCurrentTaskList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mFutureMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public getAllDownloadTasks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mCurrentTaskList:Ljava/util/Map;

    return-object p0
.end method

.method public getDownloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;
    .locals 0

    .line 168
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mCurrentTaskList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    return-object p0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->pause()V

    :cond_0
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->addDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    :cond_0
    return-void
.end method

.method public updateDownloadTask(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownloadManager;->mCurrentTaskList:Ljava/util/Map;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
