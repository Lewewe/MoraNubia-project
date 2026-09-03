.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;,
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;,
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;
    }
.end annotation


# static fields
.field private static final PROXY_HOST:Ljava/lang/String; = "127.0.0.1"


# instance fields
.field private final clientsLock:Ljava/lang/Object;

.field private final clientsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

.field private final port:I

.field private final serverSocket:Ljava/net/ServerSocket;

.field private final socketProcessor:Ljava/util/concurrent/ExecutorService;

.field private final waitConnectionThread:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->access$000(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;)V

    return-void
.end method

.method private constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;)V
    .locals 11

    .line 74
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v3, "proload-cache-pool-%d"

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/16 v3, 0x8

    const/16 v4, 0x8

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    .line 77
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 78
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    .line 79
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->port:I

    .line 80
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/IgnoreHostProxySelector;->install(Ljava/lang/String;I)V

    .line 81
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->waitConnectionThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 83
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$WaitRequestsRunnable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 84
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 87
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Error starting local proxy server"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->waitForRequest()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->processSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private appendToProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 185
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcn/nubia/redmagickyi/network/NetConfig;->VIDEOVIEW_PROXY_URL:Ljava/lang/String;

    iget p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->port:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "127.0.0.1"

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private closeSocket(Ljava/net/Socket;)V
    .locals 2

    .line 305
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private closeSocketInput(Ljava/net/Socket;)V
    .locals 2

    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 287
    :catch_1
    const-string p0, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private closeSocketOutput(Ljava/net/Socket;)V
    .locals 0

    .line 295
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result p0

    if-nez p0, :cond_0

    .line 296
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    const-string p0, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getClientsCount()I
    .locals 3

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    .line 267
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->getClientsCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 269
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 314
    const-string p0, "HttpProxyCacheServer error"

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method private processSocket(Ljava/net/Socket;)V
    .locals 4

    .line 235
    const-string v0, "Opened connections: "

    .line 0
    const-string v1, "Request to cache proxy:"

    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->read(Ljava/io/InputStream;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V

    .line 237
    iget-object v1, v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    move-result-object v1

    .line 239
    invoke-virtual {v1, v2, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->processRequest(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 245
    :try_start_1
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :catch_1
    :try_start_2
    const-string v1, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getClientsCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 247
    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getClientsCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V

    .line 249
    throw v1
.end method

.method private releaseSocket(Ljava/net/Socket;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->closeSocketInput(Ljava/net/Socket;)V

    .line 275
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->closeSocketOutput(Ljava/net/Socket;)V

    .line 276
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private shutdownClients()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    .line 215
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->shutdown()V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private touchFileSafely(Ljava/io/File;)V
    .locals 1

    .line 206
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Error touching file "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private waitForRequest()V
    .locals 3

    .line 223
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept new socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->debug(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$SocketProcessorRunnable;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->cacheRoot:Ljava/io/File;

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCacheRoot()Ljava/io/File;
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->cacheRoot:Ljava/io/File;

    return-object p0
.end method

.method public getClients(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    if-nez v1, :cond_0

    .line 256
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    invoke-direct {v1, p1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;-><init>(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;)V

    .line 257
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProxyUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->touchFileSafely(Ljava/io/File;)V

    .line 120
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->appendToProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTempCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->cacheRoot:Ljava/io/File;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->fileNameGenerator:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".download"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1

    .line 163
    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public registerCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;Ljava/lang/String;)V
    .locals 1

    .line 126
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->registerCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V
    :try_end_0
    .catch Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 131
    :catch_0
    :try_start_1
    const-string p0, "Error registering cache listener"

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->warn(Ljava/lang/String;)V

    .line 133
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shutdown()V
    .locals 3

    .line 168
    const-string v0, "Shutdown proxy server"

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->info(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->shutdownClients()V

    .line 172
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v0, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;->release()V

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->waitConnectionThread:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V
    .locals 2

    .line 148
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    .line 151
    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->unregisterCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V

    goto :goto_0

    .line 153
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

.method public unregisterCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;Ljava/lang/String;)V
    .locals 1

    .line 137
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->unregisterCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V
    :try_end_0
    .catch Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 142
    :catch_0
    :try_start_1
    const-string p0, "Error registering cache listener"

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Logger;->warn(Ljava/lang/String;)V

    .line 144
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
