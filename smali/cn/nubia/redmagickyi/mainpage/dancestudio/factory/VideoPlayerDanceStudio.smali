.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;
.super Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;
.source "VideoPlayerDanceStudio.java"


# static fields
.field private static pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->pool:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->setLoop(Z)V

    return-void
.end method

.method public static findCurrent()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;
    .locals 4

    .line 49
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    monitor-exit v0

    return-object v1

    .line 57
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/view/ViewGroup;)Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;
    .locals 3

    .line 22
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    monitor-enter v0

    .line 23
    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 24
    sget-object p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->pool:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->recycle(Z)V

    return-void
.end method

.method public static recycle(Z)V
    .locals 3

    .line 34
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->release()V

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    .line 44
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->release(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setCurrent(Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;)V
    .locals 4

    .line 62
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    const/4 v3, 0x1

    .line 67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getPlayUrl()Ljava/lang/String;
    .locals 0

    .line 104
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPlayUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;
    .locals 0

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->getInstance(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object p0

    return-object p0
.end method

.method public getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
    .locals 0

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->getInstance()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object p0

    return-object p0
.end method

.method public preload([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 111
    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->isFileUri(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->addPreloadTask(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->reset()V

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->removePreloadTask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
