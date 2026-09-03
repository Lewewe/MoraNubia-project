.class public final Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients$UiListenerHandler;
    }
.end annotation


# instance fields
.field private final clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

.field private final uiCacheListener:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    .line 35
    new-instance p2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients$UiListenerHandler;

    invoke-direct {p2, p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients$UiListenerHandler;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->uiCacheListener:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;

    return-void
.end method

.method private declared-synchronized finishProcessRequest()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->shutdown()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private newHttpProxyCache()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v2, v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v3, v3, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->headerInjector:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/headers/HeaderInjector;)V

    .line 83
    new-instance v1, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->generateCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->config:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;

    iget-object v3, v3, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/Config;->diskUsage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;-><init>(Ljava/io/File;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/DiskUsage;)V

    .line 84
    new-instance v2, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    invoke-direct {v2, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpUrlSource;Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/file/FileCache;)V

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->uiCacheListener:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;

    invoke-virtual {v2, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->registerCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V

    return-object v2
.end method

.method private declared-synchronized startProcessRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->newHttpProxyCache()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getClientsCount()I
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public processRequest(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->startProcessRequest()V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->processRequest(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/GetRequest;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->finishProcessRequest()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->finishProcessRequest()V

    .line 45
    throw p1
.end method

.method public registerCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->registerCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;->shutdown()V

    .line 72
    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->proxyCache:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCache;

    .line 74
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public unregisterCacheListener(Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/CacheListener;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
