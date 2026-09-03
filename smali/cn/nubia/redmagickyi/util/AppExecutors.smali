.class public Lcn/nubia/redmagickyi/util/AppExecutors;
.super Ljava/lang/Object;
.source "AppExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;,
        Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppExecutors"

.field private static mAppExecutors:Lcn/nubia/redmagickyi/util/AppExecutors;


# instance fields
.field private mAsyncThread:Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

.field private mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mMainThread:Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

.field private mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 19

    .line 58
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Lcn/nubia/redmagickyi/util/AppExecutors$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcn/nubia/redmagickyi/util/AppExecutors$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    new-instance v18, Lcn/nubia/redmagickyi/util/AppExecutors$$ExternalSyntheticLambda1;

    invoke-direct/range {v18 .. v18}, Lcn/nubia/redmagickyi/util/AppExecutors$$ExternalSyntheticLambda1;-><init>()V

    const/16 v11, 0x8

    const/16 v12, 0x8

    const-wide/16 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v1, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;-><init>()V

    move-object/from16 v3, p0

    .line 58
    invoke-direct {v3, v9, v0, v1, v2}, Lcn/nubia/redmagickyi/util/AppExecutors;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/ThreadPoolExecutor;Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/ThreadPoolExecutor;Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    .line 53
    iput-object p4, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/util/AppExecutors;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/util/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/util/AppExecutors;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcn/nubia/redmagickyi/util/AppExecutors;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/AppExecutors;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/util/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/util/AppExecutors;

    .line 46
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/util/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/util/AppExecutors;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " rejected from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppExecutors"

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " rejected from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppExecutors"

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asyncThread()Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    return-object p0
.end method

.method public diskIO()Ljava/util/concurrent/Executor;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    return-object p0
.end method

.method public networkIO()Ljava/util/concurrent/Executor;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcn/nubia/redmagickyi/util/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/util/AppExecutors;

    .line 89
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 93
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :goto_1
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 96
    throw v1

    .line 98
    :cond_0
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 100
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :goto_3
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 102
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 104
    :goto_4
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 105
    throw v1

    .line 107
    :cond_1
    :goto_5
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    if-eqz v1, :cond_2

    .line 109
    :try_start_4
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->shutdownNow()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 113
    :goto_6
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    .line 111
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 113
    :goto_7
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    .line 114
    throw v1

    .line 116
    :cond_2
    :goto_8
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    if-eqz v1, :cond_3

    .line 118
    :try_start_6
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;->shutdownNow()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 122
    :goto_9
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    goto :goto_b

    :catchall_3
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    .line 120
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    .line 122
    :goto_a
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/util/AppExecutors$AsyncThreadExecutor;

    .line 123
    throw v1

    :cond_3
    :goto_b
    return-void
.end method
