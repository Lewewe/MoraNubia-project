.class public Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;
.super Ljava/lang/Object;
.source "PreloadVideoCacheManager.java"


# static fields
.field private static sharedProxyList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;",
            "Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->sharedProxyList:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCache()Z
    .locals 1

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->createHttpProxyCacheServerBuilder()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->build()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/StorageUtils;->deleteFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->getProxy(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheRoot()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/StorageUtils;->deleteFiles(Ljava/io/File;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static createHttpProxyCacheServerBuilder()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;
    .locals 2

    .line 39
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAllCacheSize()J
    .locals 2

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->createHttpProxyCacheServerBuilder()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->build()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/StorageUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAllCacheSize(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)J
    .locals 2

    .line 56
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->getProxy(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;->getCacheRoot()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/StorageUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static getProxy(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;
    .locals 2

    .line 23
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->sharedProxyList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->sharedProxyList:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->newProxy(Landroid/content/Context;Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private static newProxy(Landroid/content/Context;Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;
    .locals 3

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->createHttpProxyCacheServerBuilder()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    move-result-object v0

    const-wide/32 v1, 0x1f400000

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->maxCacheSize(J)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->cacheRoot:Ljava/io/File;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;->getPreloadFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;

    .line 34
    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorageFactory;->newSourceInfoStorage(Landroid/content/Context;Ljava/io/File;)Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->sourceInfoStorage:Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/sourcestorage/SourceInfoStorage;

    .line 35
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer$Builder;->build()Lcn/nubia/redmagickyi/view/videoplayer/cache/videocache/HttpProxyCacheServer;

    move-result-object p0

    return-object p0
.end method
