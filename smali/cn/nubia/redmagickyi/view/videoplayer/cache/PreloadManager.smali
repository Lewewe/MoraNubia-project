.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;
.super Ljava/lang/Object;
.source "PreloadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager$PreloadQueue;
    }
.end annotation


# static fields
.field public static final PRELOAD_LENGTH:J = 0x4600000L

.field private static final TAG:Ljava/lang/String; = "PreloadManager"

.field public static final TOTAL_PRELOAD_LENGTH:I = 0x1f400000

.field private static preloadManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;",
            "Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mHttpProxyCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

.field private mIsStartPreload:Z

.field private final mPreloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)V
    .locals 10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager$PreloadQueue;

    invoke-direct {v6, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager$PreloadQueue;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;)V

    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "preload-pool-%d"

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mIsStartPreload:Z

    .line 58
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->getProxy(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mHttpProxyCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    return-void
.end method

.method private findPreloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPreloadTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    .line 216
    iget-object v2, v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mRawUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    .line 65
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    if-nez v1, :cond_1

    .line 67
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 69
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private indexOfPreloadTask(Ljava/lang/String;)I
    .locals 2

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 225
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    .line 226
    iget-object v1, v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mRawUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isPreloaded(Ljava/lang/String;)Z
    .locals 6

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mHttpProxyCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v4, 0x400

    cmp-long p0, p0, v4

    if-ltz p0, :cond_0

    return v2

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v3

    .line 156
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mHttpProxyCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getTempCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v0, 0x4600000

    cmp-long p0, p0, v0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    :cond_3
    return v3
.end method

.method public static declared-synchronized release(Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;)V
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->removeAllPreloadTask()V

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized release(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)V
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->removeAllPreloadTask()V

    .line 77
    iget-object v1, v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 78
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->preloadManagers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addPreloadTask(Ljava/lang/String;)V
    .locals 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPreloadTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->findPreloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreloadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->isPreloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->findPreloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;)V

    .line 109
    iput-object p1, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mRawUrl:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mHttpProxyCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    iput-object v3, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mIsStartPreload:Z

    if-eqz p1, :cond_1

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->executeOn(Ljava/util/concurrent/ExecutorService;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addPreloadTaskMoveToFront(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->addPreloadTask(Ljava/lang/String;)V

    return-void
.end method

.method public getPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mHttpProxyCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onPreloadError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public removeAllPreloadTask()V
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeAllPreloadTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 188
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    .line 190
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->cancel()V

    .line 191
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs removeAllPreloadTaskWithout([Ljava/lang/String;)V
    .locals 5

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 198
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 200
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 201
    aget-object v3, p1, v2

    .line 202
    iget-object v4, v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mRawUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->cancel()V

    .line 207
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removePreloadTask(Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removePreloadTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->findPreloadTask(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->cancel()V

    .line 177
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->mPreloadTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
