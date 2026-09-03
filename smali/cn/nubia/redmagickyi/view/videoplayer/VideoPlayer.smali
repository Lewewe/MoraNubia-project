.class public Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;,
        Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final ASSETS_PROTOCOL:Ljava/lang/String; = "Assets://"

.field protected static final TAG:Ljava/lang/String; = "VideoPlayer"


# instance fields
.field protected assetManager:Landroid/content/res/AssetManager;

.field protected audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

.field private causeErrorRunnable:Ljava/lang/Runnable;

.field protected context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field protected isEnableAudioFocus:Z

.field protected isHaveVoice:Z

.field private isNeedResumeWhenAttachToWindow:Z

.field protected isPrepareing:Z

.field protected loop:Z

.field protected mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

.field protected onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

.field protected prePause:Z

.field private refreshProgressRunnable:Ljava/lang/Runnable;

.field protected seekPosition:Ljava/lang/Long;

.field protected state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

.field protected textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->IDLE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    .line 42
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->loop:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isEnableAudioFocus:Z

    const/4 v2, 0x0

    .line 46
    iput-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    .line 48
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedResumeWhenAttachToWindow:Z

    .line 303
    new-instance v3, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$6;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$6;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    iput-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->refreshProgressRunnable:Ljava/lang/Runnable;

    .line 310
    new-instance v3, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$7;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$7;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    iput-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->causeErrorRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    .line 52
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isEnableAudioFocus:Z

    if-eqz v3, :cond_0

    .line 53
    new-instance v3, Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-direct {v3, p1, v0, v2}, Lcn/nubia/redmagickyi/util/AudioFocus;-><init>(Landroid/content/Context;ZLcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    iput-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    .line 55
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->assetManager:Landroid/content/res/AssetManager;

    .line 57
    new-instance p1, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    .line 58
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setLooping(Z)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$1;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$2;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 92
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$3;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$4;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$5;-><init>(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 132
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->createTextureView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->reset(Z)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->refreshProgress()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->stopRefreshProgress()V

    return-void
.end method

.method private createTextureView(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 147
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->setTextureView(Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;)V

    :cond_0
    return-void
.end method

.method public static isFileUri(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 277
    :try_start_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private isNeedNetworkCheck()Z
    .locals 2

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isFileUri(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->getPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isFileUri(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshProgress()V
    .locals 5

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->seekPosition:Ljava/lang/Long;

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-nez v0, :cond_1

    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getDuration()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onProgressUpdate(JJ)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->refreshProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->refreshProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private reset(Z)V
    .locals 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reset url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz p1, :cond_1

    .line 186
    invoke-interface {p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onReset()V

    .line 187
    iput-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    .line 189
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->clearSurface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "error on clear surface, reason: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->reset()V

    .line 197
    :cond_2
    sget-object p1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->IDLE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    .line 200
    iput-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->seekPosition:Ljava/lang/Long;

    return-void
.end method

.method private saveSeekProgressPosition(J)V
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->setCurrentPosition(J)V

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->saveProgress(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;)V

    :cond_1
    return-void
.end method

.method private stopRefreshProgress()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->refreshProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearProgress()V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->clearProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exchangeProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getSavedProgress(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->saveProgress(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;)V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 5

    .line 498
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->seekPosition:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    .line 500
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 505
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-nez p0, :cond_2

    move-wide v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->getCurrentPosition()I

    move-result p0

    int-to-long v3, p0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 508
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 5

    .line 486
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->getTotalDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 490
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    if-eqz v0, :cond_1

    .line 491
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 493
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->getDuration()I

    move-result p0

    int-to-long v1, p0

    :goto_1
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isFileUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->addPreloadTaskMoveToFront(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->getPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->getSavedProgress(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSavedProgress(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->getSavedProgress(Ljava/lang/String;)Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 0

    .line 512
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getState()Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;
    .locals 0

    .line 481
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    return-object p0
.end method

.method public isComplete()Z
    .locals 1

    .line 389
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->COMPLETE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaused()Z
    .locals 1

    .line 381
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 385
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachToWindow()V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedResumeWhenAttachToWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedResumeWhenAttachToWindow:Z

    .line 476
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->resume()Z

    :cond_0
    return-void
.end method

.method public onDetachFromWindow()V
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->loop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedResumeWhenAttachToWindow:Z

    .line 469
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->pause()Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedResumeWhenAttachToWindow:Z

    :goto_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onError what:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  extra:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->stopRefreshProgress()V

    .line 454
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->causeErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->causeErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 458
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->causeErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->causeErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 542
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->causeErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()Z
    .locals 5

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pause url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prePause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->saveProgress()V

    const/4 v0, 0x0

    .line 396
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setKeepScreenOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setKeepScreenOn false error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    if-nez v1, :cond_2

    .line 403
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    goto :goto_2

    .line 404
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-eqz v1, :cond_3

    .line 405
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    .line 406
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->pause()V

    .line 408
    :cond_3
    :goto_2
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    .line 412
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz p0, :cond_5

    .line 413
    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onPause()V

    :cond_5
    return v3
.end method

.method public prepare()V
    .locals 12

    .line 241
    const-string v0, "Assets://"

    const-string v1, "VideoPlayer"

    .line 0
    const-string v2, "prepare url: "

    .line 241
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0, v4, v5, v5}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    .line 246
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-nez v3, :cond_1

    return-void

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPlayUrl()Ljava/lang/String;

    move-result-object v3

    .line 250
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    iget-object v7, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setRawUrl(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 252
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->assetManager:Landroid/content/res/AssetManager;

    const-string v7, ""

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 253
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->prepareAsync()V

    .line 258
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    goto :goto_1

    :cond_3
    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, v4, v5, v5}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    :goto_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->release()V

    .line 434
    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    .line 436
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->release()V

    .line 440
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    .line 443
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->getInstance()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->release()V

    .line 444
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->removeAllPreloadTask()V

    .line 446
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getPreloadManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;->release(Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadManager;)V

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->reset(Z)V

    return-void
.end method

.method public resume()Z
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->start()Z

    move-result p0

    return p0
.end method

.method public saveProgress()V
    .locals 7

    .line 546
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne v0, v1, :cond_2

    .line 547
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->getRawUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 549
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveProgress, url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoPlayer"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getProgressManagerFactory()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;

    move-result-object v4

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    new-instance v5, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    invoke-direct {v5, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;-><init>(JJ)V

    invoke-virtual {v4, p0, v5}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressManager;->saveProgress(Ljava/lang/String;Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;)V

    :cond_2
    return-void
.end method

.method public seekTo(F)V
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seekToPercent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getDuration() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->seekTo(J)V

    return-void
.end method

.method public seekTo(J)V
    .locals 5

    const-string v0, "seekTo "

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    :try_start_0
    const-string v3, "VideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 221
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0, v1, v2, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void

    .line 209
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->seekPosition:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->saveSeekProgressPosition(J)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, p2, v3}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->seekTo(JI)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getDuration()J

    move-result-wide v3

    invoke-interface {v0, p1, p2, v3, v4}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onProgressUpdate(JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 219
    :catch_0
    :try_start_2
    invoke-virtual {p0, v1, v2, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 222
    :goto_0
    invoke-virtual {p0, v1, v2, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_3
    return-void

    .line 221
    :goto_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 222
    invoke-virtual {p0, v1, v2, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    .line 224
    :cond_4
    throw p1
.end method

.method public setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz p0, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->setListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    :cond_0
    return-void
.end method

.method public setEnableAudioFocus(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isEnableAudioFocus:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    :cond_0
    return-void
.end method

.method public setHaveVoice(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isHaveVoice:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->loop:Z

    return-void
.end method

.method public setOnStateChangeListener(Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    return-void
.end method

.method public setTextureView(Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->attachToPlayer(Landroid/media/MediaPlayer;)V

    .line 164
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 165
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    if-eqz v1, :cond_0

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 169
    :cond_0
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 171
    :cond_1
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 172
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    .line 519
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()Z
    .locals 6

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->url:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isNeedNetworkCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0, v2, v3, v3}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    return v3

    .line 339
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->COMPLETE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    return v3

    .line 340
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz v0, :cond_4

    .line 341
    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onBuffering()V

    :cond_4
    const/4 v0, 0x1

    .line 344
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->textureView:Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;

    if-eqz v2, :cond_5

    .line 345
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/view/videoplayer/render/TextureRenderView;->setKeepScreenOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setKeepScreenOn true error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_5
    :goto_2
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->prePause:Z

    .line 351
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isPrepareing:Z

    if-nez v1, :cond_9

    .line 352
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 353
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-eqz v2, :cond_6

    .line 354
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->start()V

    .line 356
    :cond_6
    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PLAYING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 357
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->isHaveVoice:Z

    if-eqz v3, :cond_7

    .line 358
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    .line 359
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/AudioFocus;->registAudioFocus()V

    .line 362
    :cond_7
    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-eq v1, v2, :cond_8

    sget-object v2, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PAUSE:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    if-ne v1, v2, :cond_a

    .line 363
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 365
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->seekTo(J)V

    goto :goto_3

    .line 369
    :cond_9
    sget-object v1, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->PREPAREING:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    :cond_a
    :goto_3
    return v0
.end method

.method public stop()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->onStateChangeListener:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;->onStop()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->mediaPlayer:Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/videoplayer/AndroidMediaPlayer;->stop()V

    .line 425
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;->STOP:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->state:Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$State;

    .line 426
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer;->audioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz p0, :cond_2

    .line 427
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    :cond_2
    return-void
.end method
