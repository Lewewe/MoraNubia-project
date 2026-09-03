.class Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;
.super Ljava/lang/Object;
.source "Pinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;
    }
.end annotation


# static fields
.field private static final PING_REQUEST:Ljava/lang/String; = "ping"

.field private static final PING_RESPONSE:Ljava/lang/String; = "ping ok"


# instance fields
.field private final host:Ljava/lang/String;

.field private final pingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "pinger-pool-%d"

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

    iput-object v9, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 48
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->host:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->port:I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->pingServer()Z

    move-result p0

    return p0
.end method

.method private getDefaultProxies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/net/URI;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getPingUrl()Ljava/lang/String;
    .locals 4

    .line 120
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcn/nubia/redmagickyi/network/NetConfig;->VIDEOVIEW_PROXY_URL:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->host:Ljava/lang/String;

    iget p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->port:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, "ping"

    filled-new-array {v2, p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pingServer()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    const-string v0, "Ping response: `"

    .line 101
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;-><init>(Ljava/lang/String;)V

    .line 104
    :try_start_0
    const-string p0, "ping ok"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-wide/16 v2, 0x0

    .line 105
    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->open(J)V

    .line 106
    array-length v2, p0

    new-array v2, v2, [B

    .line 107
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->read([B)I

    .line 108
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "`, pinged? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->close()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 112
    :catch_0
    :try_start_1
    const-string p0, "Error reading ping response"

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->close()V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;->close()V

    .line 116
    throw p0
.end method


# virtual methods
.method isPingRequest(Ljava/lang/String;)Z
    .locals 0

    .line 91
    const-string p0, "ping"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method ping(II)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 53
    :goto_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkArgument(Z)V

    if-lez p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 54
    :goto_1
    invoke-static {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkArgument(Z)V

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_3

    .line 60
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$PingCallable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    int-to-long v4, p2

    .line 61
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return v1

    .line 68
    :catch_0
    const-string v3, "Error pinging server due to unexpected error"

    invoke-static {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 66
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error pinging server (attempt: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 73
    :cond_3
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Pinger;->getDefaultProxies()Ljava/util/List;

    move-result-object p0

    filled-new-array {v1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 73
    const-string p2, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at AndroidVideoCache/issues/134. Default proxies are: %s"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V

    return v0
.end method

.method responseToPing(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 96
    const-string p1, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    const-string p1, "ping ok"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
