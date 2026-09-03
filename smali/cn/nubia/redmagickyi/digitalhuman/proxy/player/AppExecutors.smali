.class Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;,
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppExecutors"

.field private static mAppExecutors:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;


# instance fields
.field private mAsyncThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

.field private mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mMainThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

.field private mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 19

    .line 237
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 239
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$1;

    invoke-direct {v8}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$1;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 247
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    new-instance v18, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$2;

    invoke-direct/range {v18 .. v18}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$2;-><init>()V

    const/16 v11, 0x8

    const/16 v12, 0x8

    const-wide/16 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;-><init>()V

    move-object/from16 v3, p0

    .line 237
    invoke-direct {v3, v9, v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/ThreadPoolExecutor;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/ThreadPoolExecutor;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 230
    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 231
    iput-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    .line 232
    iput-object p4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;

    .line 225
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public asyncThread()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;
    .locals 0

    .line 272
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

    return-object p0
.end method

.method public diskIO()Ljava/util/concurrent/Executor;
    .locals 0

    .line 260
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public mainThread()Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;
    .locals 0

    .line 268
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    return-object p0
.end method

.method public networkIO()Ljava/util/concurrent/Executor;
    .locals 0

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 277
    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAppExecutors:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;

    .line 278
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 282
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :goto_1
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mDiskIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 285
    throw v1

    .line 287
    :cond_0
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    .line 289
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    :goto_3
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 291
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 293
    :goto_4
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mNetworkIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 294
    throw v1

    .line 296
    :cond_1
    :goto_5
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    if-eqz v1, :cond_2

    .line 298
    :try_start_4
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;->shutdownNow()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 302
    :goto_6
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    .line 300
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 302
    :goto_7
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mMainThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$MainThreadExecutor;

    .line 303
    throw v1

    .line 305
    :cond_2
    :goto_8
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

    if-eqz v1, :cond_3

    .line 307
    :try_start_6
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;->shutdownNow()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 311
    :goto_9
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

    goto :goto_b

    :catchall_3
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    .line 309
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    .line 311
    :goto_a
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors;->mAsyncThread:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/AppExecutors$AsyncThreadExecutor;

    .line 312
    throw v1

    :cond_3
    :goto_b
    return-void
.end method
