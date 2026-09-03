.class public Lcn/nubia/redmagickyi/util/ZTETimer;
.super Ljava/lang/Object;
.source "ZTETimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;,
        Lcn/nubia/redmagickyi/util/ZTETimer$PoolType;
    }
.end annotation


# static fields
.field public static final TYPE_POOL_CACHED:I = 0x3

.field public static final TYPE_POOL_FIXED:I = 0x1

.field public static final TYPE_POOL_SCHEDULED:I = 0x0

.field public static final TYPE_POOL_SINGLE:I = 0x2


# instance fields
.field private corePoolSize:I

.field private deamon:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private name:Ljava/lang/Object;

.field private poolType:I

.field private priority:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->corePoolSize:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->priority:Ljava/lang/Integer;

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->deamon:Z

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->poolType:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->corePoolSize:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->priority:Ljava/lang/Integer;

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->deamon:Z

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->poolType:I

    return-void
.end method

.method private declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 10

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->name:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 69
    :try_start_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->name:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catch_0
    :try_start_2
    const-string v0, "ZTETimer"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->name:Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_0
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->name:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-pool-%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->namingPattern(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->priority(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->deamon:Z

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->daemon(Z)Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory$Builder;->build()Lcn/nubia/redmagickyi/util/ZTETimer$BasicThreadFactory;

    move-result-object v9

    .line 75
    iget v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->poolType:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 87
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget v1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->corePoolSize:I

    invoke-direct {v0, v1, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 83
    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 80
    :cond_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 77
    :cond_3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v4, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->corePoolSize:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v5, 0x0

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 91
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 143
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 145
    :goto_2
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 146
    throw v1
.end method

.method public isInterrupted()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTerminated()Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 1

    .line 114
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->priority:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->priority:Ljava/lang/Integer;

    :cond_0
    const-wide/16 v0, 0x0

    .line 103
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .locals 7

    .line 130
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public setCorePoolSize(I)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->corePoolSize:I

    return-object p0
.end method

.method public setDeamon(Z)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->deamon:Z

    return-object p0
.end method

.method public setName(Ljava/lang/Object;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->name:Ljava/lang/Object;

    return-object p0
.end method

.method public setPriority(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/ZTETimer;->priority:Ljava/lang/Integer;

    return-object p0
.end method
