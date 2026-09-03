.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;
.super Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;
.source "VideoPlayerDynamic.java"


# static fields
.field private static pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->pool:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->setLoop(Z)V

    return-void
.end method

.method public static findCurrent()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;
    .locals 4

    .line 53
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    monitor-exit v0

    return-object v1

    .line 61
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

.method public static obtain(Landroid/view/ViewGroup;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;
    .locals 3

    .line 26
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 28
    sget-object p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->pool:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->recycle(Z)V

    return-void
.end method

.method public static recycle(Z)V
    .locals 3

    .line 38
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->release(Z)V

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->release(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)V

    .line 49
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

.method private release(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->release()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->release()V

    .line 117
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    .line 119
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->release()V

    .line 123
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz p1, :cond_3

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setCurrent(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;)V
    .locals 4

    .line 66
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    const/4 v3, 0x1

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 73
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
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

    .line 131
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPlayUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;
    .locals 0

    .line 91
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->getInstance(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object p0

    return-object p0
.end method

.method public getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public preload([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 138
    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->isFileUri(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->addPreloadTask(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->release()V

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    return-void
.end method

.method public setTextureView(Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->setTextureView(Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;)V

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    .line 98
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setScaleType(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 100
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setScaleType(I)V

    :goto_0
    return-void
.end method
