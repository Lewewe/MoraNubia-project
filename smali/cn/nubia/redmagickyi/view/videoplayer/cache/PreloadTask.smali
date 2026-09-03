.class Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;
.super Ljava/lang/Object;
.source "PreloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreloadTask"


# instance fields
.field private executeCallback:Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;

.field mCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

.field private mIsCanceled:Z

.field private mIsExecuted:Z

.field mRawUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->executeCallback:Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;

    return-void
.end method

.method private start()V
    .locals 13

    .line 62
    const-string v0, "preload end"

    const-string v1, "preload begin"

    const-string v2, "PreloadTask"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 66
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mCacheServer:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mRawUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x1388

    .line 69
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 70
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 71
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v4, 0x2000

    .line 74
    :try_start_2
    new-array v4, v4, [B

    const/4 v5, -0x1

    move v6, v5

    .line 75
    :cond_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v5, :cond_3

    add-int/2addr v6, v7

    .line 78
    iget-boolean v7, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_1

    int-to-long v8, v6

    const-wide/32 v10, 0x4600000

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 79
    :cond_1
    const-string v4, " Byte"

    if-eqz v7, :cond_2

    .line 80
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preload cancel\uff1adata\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preload complete\uff1adata\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :cond_3
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    .line 89
    :goto_2
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preload error reason\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->executeCallback:Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;

    if-eqz v4, :cond_4

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mRawUrl:Ljava/lang/String;

    invoke-interface {v4, p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask$ExecuteCallback;->onPreloadError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_4
    if-eqz v3, :cond_5

    .line 95
    :goto_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 97
    :cond_5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception p0

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_6

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 97
    :cond_6
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    throw p0
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsExecuted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsCanceled:Z

    :cond_0
    return-void
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsExecuted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsExecuted:Z

    .line 109
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public run()V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->start()V

    :cond_0
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsExecuted:Z

    .line 55
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadTask;->mIsCanceled:Z

    return-void
.end method
