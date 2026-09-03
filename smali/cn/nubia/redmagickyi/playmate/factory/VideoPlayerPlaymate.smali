.class public Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;
.super Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;
.source "VideoPlayerPlaymate.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->setLoop(Z)V

    return-void
.end method

.method public static recycle()V
    .locals 1

    .line 17
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->getInstance()Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    return-void
.end method


# virtual methods
.method public getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;
    .locals 0

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->getInstance()Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->getInstance(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object p0

    return-object p0
.end method

.method public getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
    .locals 0

    .line 27
    new-instance p0, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;-><init>()V

    return-object p0
.end method

.method public preload([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 60
    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isFileUri(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

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

    .line 43
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->release()V

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->recycle()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->reset()V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->removePreloadTask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTextureView(Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->setTextureView(Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;)V

    const/4 p0, 0x5

    .line 38
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setScaleType(I)V

    return-void
.end method
