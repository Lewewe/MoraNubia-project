.class public Lcom/zte/aigc/utils/task/ZteExecutor;
.super Ljava/lang/Object;
.source "ZteExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;
    }
.end annotation


# instance fields
.field private mCorePoolSize:I

.field private mKeepAliveTime:J

.field private mMaximumPoolSize:I

.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(IIJ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mCorePoolSize:I

    .line 21
    iput p2, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mMaximumPoolSize:I

    .line 22
    iput-wide p3, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mKeepAliveTime:J

    return-void
.end method

.method synthetic constructor <init>(IIJLcom/zte/aigc/utils/task/ZteExecutor$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJ)V

    return-void
.end method

.method public static getDownloadPool()Lcom/zte/aigc/utils/task/ZteExecutor;
    .locals 1

    .line 78
    sget-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sDownloadPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-object v0
.end method

.method public static getImageDownloadPool()Lcom/zte/aigc/utils/task/ZteExecutor;
    .locals 1

    .line 90
    sget-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sImageDownloadPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-object v0
.end method

.method public static getLongPool()Lcom/zte/aigc/utils/task/ZteExecutor;
    .locals 1

    .line 82
    sget-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sLongPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-object v0
.end method

.method public static getShortPool()Lcom/zte/aigc/utils/task/ZteExecutor;
    .locals 1

    .line 86
    sget-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sShortPool:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-object v0
.end method

.method public static getSinglePool()Lcom/zte/aigc/utils/task/ZteExecutor;
    .locals 1

    .line 94
    sget-object v0, Lcom/zte/aigc/utils/task/ZteExecutor$InnerClass;->sSinglePool:Lcom/zte/aigc/utils/task/ZteExecutor;

    return-object v0
.end method

.method private init()V
    .locals 10

    .line 48
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mCorePoolSize:I

    iget v2, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mMaximumPoolSize:I

    iget-wide v3, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mKeepAliveTime:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static newSinglePool()Lcom/zte/aigc/utils/task/ZteExecutor;
    .locals 4

    .line 98
    new-instance v0, Lcom/zte/aigc/utils/task/ZteExecutor;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/zte/aigc/utils/task/ZteExecutor;-><init>(IIJ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 66
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 29
    const-string p0, "execute Runnable is null"

    invoke-static {p0}, Lcom/zte/aigc/utils/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/zte/aigc/utils/task/ZteExecutor;->init()V

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/zte/aigc/utils/task/ZteExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
