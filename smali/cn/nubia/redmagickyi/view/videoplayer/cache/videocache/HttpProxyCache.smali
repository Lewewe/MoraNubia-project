.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;
.super Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;
.source "HttpProxyCache.java"


# static fields
.field private static final NO_CACHE_BARRIER:F = 0.2f


# instance fields
.field private final cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

.field private listener:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;

.field private final source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCache;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Source;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Cache;)V

    .line 30
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 103
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isUseCache(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 54
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->available()J

    move-result-wide v5

    if-eqz v2, :cond_2

    .line 56
    iget-boolean p0, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->partial:Z

    if-eqz p0, :cond_2

    iget-wide p0, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->rangeOffset:J

    long-to-float p0, p0

    long-to-float p1, v5

    long-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    return v3
.end method

.method private newResponseHeaders(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->getMime()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 62
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->available()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->length()J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v6

    .line 64
    :goto_1
    iget-boolean v7, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->partial:Z

    if-eqz v7, :cond_2

    iget-wide v7, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->rangeOffset:J

    sub-long v7, v3, v7

    goto :goto_2

    :cond_2
    move-wide v7, v3

    :goto_2
    if-eqz v5, :cond_3

    .line 65
    iget-boolean v9, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->partial:Z

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    move v2, v6

    .line 66
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-boolean v9, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->partial:Z

    if-eqz v9, :cond_4

    const-string v9, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_4

    :cond_4
    const-string v9, "HTTP/1.1 200 OK\n"

    :goto_4
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "Accept-Ranges: bytes\n"

    .line 68
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 69
    const-string v9, ""

    if-eqz v5, :cond_5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Content-Length: %d\n"

    invoke-direct {p0, v7, v5}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v9

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_6

    .line 70
    iget-wide v6, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->rangeOffset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v6, 0x1

    sub-long v6, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {p0, v2, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    move-object p1, v9

    :goto_6
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v1, :cond_7

    .line 71
    const-string v1, "Content-Type: %s\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_7
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private responseWithCache(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 77
    new-array v1, v0, [B

    .line 79
    :goto_0
    invoke-virtual {p0, v1, p2, p3, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->read([BJI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private responseWithoutCache(Ljava/io/OutputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;)V

    long-to-int p0, p2

    int-to-long p2, p0

    .line 89
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->open(J)V

    const/16 p0, 0x2000

    .line 90
    new-array p0, p0, [B

    .line 92
    :goto_0
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x0

    .line 93
    invoke-virtual {p1, p0, p3, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->close()V

    .line 99
    throw p0
.end method


# virtual methods
.method protected onCachePercentsAvailableChanged(I)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->listener:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->cache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

    iget-object v1, v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;->file:Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->source:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public processRequest(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->newResponseHeaders(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;)Ljava/lang/String;

    move-result-object p2

    .line 41
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-wide v1, p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->rangeOffset:J

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->isUseCache(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->responseWithCache(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->responseWithoutCache(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method

.method public registerCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->listener:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;

    return-void
.end method
