.class public abstract Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;
.super Ljava/lang/Object;
.source "BaseLruDiskUsage.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;
    }
.end annotation


# instance fields
.field private final workerThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "LruDisk-pool-%d"

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->workerThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->touchInBackground(Ljava/io/File;)V

    return-void
.end method

.method private countTotalSize(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private touchInBackground(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Files;->setLastModifiedNow(Ljava/io/File;)V

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/Files;->getLruListFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->trim(Ljava/util/List;)V

    return-void
.end method

.method private trim(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->countTotalSize(Ljava/util/List;)J

    move-result-wide v0

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 43
    invoke-virtual {p0, v3, v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->accept(Ljava/io/File;JI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    sub-long/2addr v0, v4

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cache file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted because it exceeds cache limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error deleting file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for trimming cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/io/File;JI)Z
.end method

.method public touch(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;->workerThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage$TouchCallable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/BaseLruDiskUsage;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
