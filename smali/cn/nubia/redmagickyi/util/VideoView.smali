.class public Lcn/nubia/redmagickyi/util/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;,
        Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "videoview"


# instance fields
.field private forcePlay:Z

.field private fullScreen:Z

.field private isHaveVoice:Z

.field private mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

.field mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mFrameBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIsSetForgroundWhenPlayComplete:Z

.field private mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnPlayListener:Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceCallback:Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mVideoHeight:I

.field private mVideoPath:Ljava/lang/String;

.field private mVideoWidth:I

.field private videoDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    .line 40
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    .line 41
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceWidth:I

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHeight:I

    .line 43
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoPath:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 45
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    .line 47
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 48
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 49
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mOnPlayListener:Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    .line 50
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceCallback:Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    .line 51
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->isHaveVoice:Z

    .line 53
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mIsSetForgroundWhenPlayComplete:Z

    .line 54
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->forcePlay:Z

    .line 56
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->fullScreen:Z

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mHandler:Landroid/os/Handler;

    .line 228
    new-instance p1, Lcn/nubia/redmagickyi/util/VideoView$6;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/util/VideoView$6;-><init>(Lcn/nubia/redmagickyi/util/VideoView;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/util/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    .line 40
    iput p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    .line 41
    iput p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceWidth:I

    .line 42
    iput p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHeight:I

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoPath:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 45
    iput p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    .line 47
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 48
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 49
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mOnPlayListener:Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    .line 50
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceCallback:Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    .line 51
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->isHaveVoice:Z

    .line 53
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mIsSetForgroundWhenPlayComplete:Z

    .line 54
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->forcePlay:Z

    .line 56
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->fullScreen:Z

    .line 57
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mHandler:Landroid/os/Handler;

    .line 228
    new-instance p2, Lcn/nubia/redmagickyi/util/VideoView$6;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/util/VideoView$6;-><init>(Lcn/nubia/redmagickyi/util/VideoView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mContext:Landroid/content/Context;

    .line 70
    new-instance p1, Lcn/nubia/redmagickyi/util/AudioFocus;

    iget-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0, p3}, Lcn/nubia/redmagickyi/util/AudioFocus;-><init>(Landroid/content/Context;ZLcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    .line 71
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/VideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mOnPlayListener:Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceCallback:Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/util/VideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->videoDuration:I

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/util/VideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/util/VideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1301(Lcn/nubia/redmagickyi/util/VideoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1401(Lcn/nubia/redmagickyi/util/VideoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/VideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/util/VideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/VideoView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mIsSetForgroundWhenPlayComplete:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/util/VideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/util/VideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/util/VideoView;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/util/VideoView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/util/VideoView;)Lcn/nubia/redmagickyi/util/AudioFocus;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    return-object p0
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/util/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/util/VideoView;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method private createMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 7

    .line 347
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 351
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 352
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 358
    :cond_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method private initVideoView()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/VideoView;->reset()V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setFocusableInTouchMode(Z)V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->requestFocus()Z

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    .line 106
    iput v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    return-void
.end method


# virtual methods
.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 338
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/VideoView;->createMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    const/4 p0, 0x3

    invoke-virtual {v0, v1, v2, p0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlayComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getVideoDuration()I

    move-result p0

    return p0

    .line 431
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_1

    .line 432
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoDuration()I
    .locals 0

    .line 438
    iget p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->videoDuration:I

    return p0
.end method

.method public isFullScreen()Z
    .locals 0

    .line 476
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->fullScreen:Z

    return p0
.end method

.method public isPause()Z
    .locals 1

    .line 416
    iget p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlayComplete()Z
    .locals 1

    .line 420
    iget p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    const/4 v0, 0x5

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

    .line 412
    iget p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mute()V
    .locals 1

    .line 362
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 76
    iget v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    .line 77
    iget v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, 0x1

    move p2, p1

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->getDefaultSize(II)I

    move-result p1

    .line 83
    iget v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcn/nubia/redmagickyi/util/VideoView;->getDefaultSize(II)I

    move-result p2

    .line 84
    iget v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoWidth:I

    if-lez v0, :cond_2

    iget v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoHeight:I

    if-lez v1, :cond_2

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/util/VideoView;->fullScreen:Z

    if-nez v2, :cond_2

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-ge v2, v3, :cond_1

    mul-int/2addr v0, p2

    .line 86
    div-int p1, v0, v1

    goto :goto_0

    :cond_1
    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-le v2, v3, :cond_2

    mul-int/2addr v1, p1

    .line 88
    div-int p2, v1, v0

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPixelCopyFinished(I)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getHeight()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 321
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->access$1301(Lcn/nubia/redmagickyi/util/VideoView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 325
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 326
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    :cond_2
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 330
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->access$1401(Lcn/nubia/redmagickyi/util/VideoView;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public openVideo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;IZ)V

    return-void
.end method

.method public openVideo(Ljava/lang/String;IZ)V
    .locals 9

    .line 118
    const-string v0, "open video failed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoview ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoview"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->release()V

    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->videoDuration:I

    .line 124
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/util/VideoView;->forcePlay:Z

    if-eqz v3, :cond_1

    .line 125
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->forcePlay:Z

    move p3, v1

    .line 128
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/util/VideoView;->isHaveVoice:Z

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    .line 129
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/AudioFocus;->registAudioFocus()V

    .line 131
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v3, 0x0

    .line 133
    :try_start_0
    iput-object v3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 134
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 135
    new-instance v4, Lcn/nubia/redmagickyi/util/VideoView$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/util/VideoView$1;-><init>(Lcn/nubia/redmagickyi/util/VideoView;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 146
    iget-object v3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcn/nubia/redmagickyi/util/VideoView$2;

    invoke-direct {v4, p0, p2, p3}, Lcn/nubia/redmagickyi/util/VideoView$2;-><init>(Lcn/nubia/redmagickyi/util/VideoView;IZ)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 166
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Lcn/nubia/redmagickyi/util/VideoView$3;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/util/VideoView$3;-><init>(Lcn/nubia/redmagickyi/util/VideoView;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 180
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Lcn/nubia/redmagickyi/util/VideoView$4;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/util/VideoView$4;-><init>(Lcn/nubia/redmagickyi/util/VideoView;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 196
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Lcn/nubia/redmagickyi/util/VideoView$5;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/util/VideoView$5;-><init>(Lcn/nubia/redmagickyi/util/VideoView;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 208
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 209
    iget-object v3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 211
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 212
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 213
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 214
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->fullScreen:Z

    const/4 p3, 0x2

    if-eqz p1, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-nez p1, :cond_3

    .line 215
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 219
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 220
    iput p3, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    :catch_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    :catch_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    :cond_1
    const/4 v0, 0x4

    .line 395
    iput v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    return-void
.end method

.method public release()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 377
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 380
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->unregistAudioFocus()V

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->isPlayComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 402
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mIsSetForgroundWhenPlayComplete:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setForgroundWhenPlayComplete(Z)V

    .line 405
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->isHaveVoice:Z

    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AudioFocus;->registAudioFocus()V

    :cond_2
    const/4 v0, 0x3

    .line 408
    iput v0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mCurrentState:I

    return-void
.end method

.method public seekToPosition(I)V
    .locals 2

    .line 442
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    int-to-long v0, p1

    const/4 p1, 0x3

    .line 443
    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    :cond_0
    return-void
.end method

.method public setAudioFocusListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mAudioFocus:Lcn/nubia/redmagickyi/util/AudioFocus;

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/AudioFocus;->setListener(Lcn/nubia/redmagickyi/util/AudioFocus$Listener;)V

    :cond_0
    return-void
.end method

.method public setForcePlay(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->forcePlay:Z

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mIsSetForgroundWhenPlayComplete:Z

    return-void
.end method

.method public setForgroundWhenPlayComplete(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 282
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 286
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 290
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 291
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 292
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/VideoView;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 293
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 298
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p1, p0, v1}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    :catch_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->onPixelCopyFinished(I)V

    goto :goto_1

    .line 295
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->onPixelCopyFinished(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/VideoView;->onPixelCopyFinished(I)V

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mIsSetForgroundWhenPlayComplete:Z

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 480
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->fullScreen:Z

    return-void
.end method

.method public setHaveVoice(Z)V
    .locals 0

    .line 462
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->isHaveVoice:Z

    return-void
.end method

.method public setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mOnPlayListener:Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;

    return-void
.end method

.method public setSurfaceCallback(Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mSurfaceCallback:Lcn/nubia/redmagickyi/util/VideoView$SurfaceCallback;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/VideoView;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method public unmute()V
    .locals 1

    .line 368
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 369
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method
