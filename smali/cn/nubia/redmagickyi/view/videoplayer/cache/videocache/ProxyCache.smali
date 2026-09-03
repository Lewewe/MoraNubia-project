.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;
.super Ljava/lang/Object;
.source "ProxyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;
    }
.end annotation


# static fields
.field private static final MAX_READ_SOURCE_ATTEMPTS:I = 0x1


# instance fields
.field private final cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

.field private hasData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile percentsAvailable:I

.field private final readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

.field private volatile sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

.field private final stopLock:Ljava/lang/Object;

.field private volatile stopped:Z

.field private final wc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->wc:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->hasData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    .line 35
    invoke-static {p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->readSource()V

    return-void
.end method

.method private checkReadSourceErrorsCount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 59
    new-instance p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading source "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private closeSource()V
    .locals 4

    .line 174
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;->close()V
    :try_end_0
    .catch Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing source "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private isStopped()Z
    .locals 1

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopped:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private notifyNewCacheDataAvailable(JJ)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onCacheAvailable(JJ)V

    .line 103
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->hasData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->wc:Ljava/lang/Object;

    monitor-enter p1

    .line 106
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->wc:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 107
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onSourceRead()V
    .locals 1

    const/16 v0, 0x64

    .line 156
    iput v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    .line 157
    iget v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    return-void
.end method

.method private readSource()V
    .locals 8

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    .line 128
    :try_start_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->available()J

    move-result-wide v2

    .line 129
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-interface {v4, v2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;->open(J)V

    .line 130
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-interface {v4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;->length()J

    move-result-wide v0

    const/16 v4, 0x2000

    .line 131
    new-array v4, v4, [B

    .line 133
    :goto_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-interface {v5, v4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 134
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->closeSource()V

    .line 150
    invoke-direct {p0, v2, v3, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    return-void

    .line 138
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v7, v4, v5}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->append([BI)V

    .line 139
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 141
    :try_start_3
    invoke-direct {p0, v2, v3, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 139
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 143
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->tryComplete()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onSourceRead()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    .line 146
    :try_start_6
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 147
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 149
    :goto_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->closeSource()V

    .line 150
    invoke-direct {p0, v2, v3, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    return-void

    :catchall_2
    move-exception v4

    .line 149
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->closeSource()V

    .line 150
    invoke-direct {p0, v2, v3, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    .line 151
    throw v4
.end method

.method private declared-synchronized readSourceAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopped:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->setName(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$SourceReaderRunnable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->available()J

    move-result-wide v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-interface {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 163
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->complete()V

    .line 165
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private waitForSourceData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->wc:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->hasData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 91
    :try_start_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->wc:Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    :try_start_2
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    const-string v2, "Waiting source data is interrupted!"

    invoke-direct {v1, v2, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->hasData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method protected onCacheAvailable(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 113
    :goto_0
    iget p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ltz v0, :cond_2

    if-eqz p2, :cond_2

    .line 116
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    .line 118
    :cond_2
    iput p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    return-void
.end method

.method protected onCachePercentsAvailableChanged(I)V
    .locals 0

    return-void
.end method

.method protected final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 181
    instance-of p0, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/InterruptedProxyCacheException;

    if-eqz p0, :cond_0

    .line 183
    const-string p0, "ProxyCache is interrupted"

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    const-string p0, "ProxyCache error"

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public read([BJI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 40
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheUtils;->assertBuffer([BJI)V

    .line 42
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->available()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopped:Z

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->readSourceAsync()V

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->waitForSourceData()V

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->checkReadSourceErrorsCount()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->read([BJI)I

    move-result p1

    .line 48
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->isCompleted()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    const/16 p3, 0x64

    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 49
    iput p3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->percentsAvailable:I

    .line 50
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    :cond_1
    return p1
.end method

.method public shutdown()V
    .locals 3

    const-string v0, "Shutdown proxy for "

    .line 64
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 67
    :try_start_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->stopped:Z

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->sourceReaderThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;->close()V
    :try_end_1
    .catch Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    :try_start_2
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;->onError(Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
