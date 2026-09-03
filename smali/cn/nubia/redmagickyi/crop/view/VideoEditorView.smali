.class public Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
.super Landroid/view/SurfaceView;
.source "VideoEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCompletionListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioTimeMS:I

.field private mCurrentDegree:I

.field private mCurrentFilter:Ljava/lang/String;

.field private mCurrentState:I

.field private mCurrentTimeMS:I

.field private mDegree:I

.field private mDuration:I

.field private mErrorListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;

.field private mFilterResPath:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;

.field private mIsPause:Z

.field private mIsSourceAudioReplaced:Z

.field private mLsatAuxUri:Landroid/net/Uri;

.field private mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

.field private mMainUri:Landroid/net/Uri;

.field private mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

.field private mOriention:I

.field private mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPlayPos:I

.field mPlayerActivityIsPaused:Z

.field private mPlayerCount:I

.field private mPlayerType:I

.field mPreparedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mScaleMode:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

.field private mScreenSize:Landroid/graphics/Point;

.field mSizeChangedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTailIsNull:Z

.field private mVideoHeadDuration:I

.field private mVideoHeight:I

.field private mVideoLandWidth:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string p1, "VideoEditorView"

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 37
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 38
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    .line 40
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoLandWidth:I

    .line 41
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mTailIsNull:Z

    .line 48
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentTimeMS:I

    .line 49
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentAudioTimeMS:I

    .line 50
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentDegree:I

    .line 51
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mFilterResPath:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentFilter:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayPos:I

    .line 55
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeadDuration:I

    .line 56
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsPause:Z

    .line 57
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsSourceAudioReplaced:Z

    .line 59
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mDegree:I

    .line 70
    sget-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_WideScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScaleMode:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    .line 71
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScreenSize:Landroid/graphics/Point;

    .line 241
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSizeChangedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;

    .line 252
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPreparedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;

    .line 264
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCompletionListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;

    .line 276
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$4;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mInfoListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;

    .line 282
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mErrorListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;

    .line 299
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 486
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerActivityIsPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string p2, "VideoEditorView"

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    const/4 p3, 0x0

    .line 37
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 38
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    .line 40
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoLandWidth:I

    .line 41
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    .line 42
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mTailIsNull:Z

    .line 48
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentTimeMS:I

    .line 49
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentAudioTimeMS:I

    .line 50
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentDegree:I

    .line 51
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mFilterResPath:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentFilter:Ljava/lang/String;

    .line 54
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayPos:I

    .line 55
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeadDuration:I

    .line 56
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsPause:Z

    .line 57
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsSourceAudioReplaced:Z

    .line 59
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mDegree:I

    .line 70
    sget-object p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_WideScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScaleMode:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    .line 71
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScreenSize:Landroid/graphics/Point;

    .line 241
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$1;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSizeChangedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;

    .line 252
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$2;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPreparedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;

    .line 264
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$3;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCompletionListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;

    .line 276
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$4;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$4;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mInfoListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;

    .line 282
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$5;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mErrorListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;

    .line 299
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$6;-><init>(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 486
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerActivityIsPaused:Z

    .line 85
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->openVideo()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->release()V

    return-void
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentTimeMS:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mDuration:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerCount:I

    return p0
.end method

.method static synthetic access$508(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)I
    .locals 2

    .line 30
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerCount:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private getScreenSize()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private initVideoView()V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->reset()V

    .line 157
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 158
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setFocusable(Z)V

    .line 160
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setFocusableInTouchMode(Z)V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->requestFocus()Z

    .line 162
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPendingSubtitleTracks:Ljava/util/Vector;

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-eqz v0, :cond_0

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openVideo()V
    .locals 8

    const-string v0, "Unable to open content: "

    .line 202
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 205
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->release()V

    const/16 v1, 0x64

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 207
    :try_start_0
    new-instance v4, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;-><init>()V

    iput-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    .line 208
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPreparedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnPreparedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;)V

    .line 209
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSizeChangedListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnVideoSizeChangedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 210
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCompletionListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnCompletionListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;)V

    .line 211
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mErrorListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnErrorListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;)V

    .line 212
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mInfoListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setOnInfoListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;)V

    .line 213
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 214
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getRotation(Landroid/content/Context;Landroid/net/Uri;)V

    .line 215
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 216
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setScreenOnWhilePlaying(Z)V

    .line 217
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentFilter:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 218
    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    iget-object v7, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mFilterResPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsSourceAudioReplaced:Z

    if-eqz v4, :cond_2

    .line 221
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {v4, v5, v3}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->unSelectTrack(ZZ)V

    .line 224
    :cond_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->prepareAsync()V

    .line 225
    iput v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 232
    :try_start_1
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    iput v2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 234
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mErrorListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-interface {v0, v2, v1, v3}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :catch_1
    move-exception v4

    .line 227
    :try_start_2
    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    iput v2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mErrorListener:Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-interface {v0, v2, v1, v3}, Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 237
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 238
    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method private release()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->stop()V

    .line 331
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->reset()V

    .line 332
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->release()V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    .line 334
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 336
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p0, :cond_0

    .line 337
    invoke-interface {v1, v0}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    .line 167
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    .line 168
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerType:I

    .line 169
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerCount:I

    .line 170
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    const/16 v0, 0x8

    .line 171
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 455
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 1

    .line 447
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getFrameRate()I
    .locals 0

    .line 541
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/16 p0, 0x1e

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getFrameRate()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPlaySpeed()F
    .locals 0

    .line 567
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getPlaySpeed()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 0

    .line 557
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getPlaySpeedChangeEndTime()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 0

    .line 553
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getPlaySpeedChangeStartTime()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPlayerState()Z
    .locals 0

    .line 439
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsPause:Z

    return p0
.end method

.method public getPlayerType()I
    .locals 0

    .line 526
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayerType:I

    return p0
.end method

.method public getSampleRate()I
    .locals 0

    .line 545
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getSampleRate()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSurfaceHeight()I
    .locals 0

    .line 522
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceHeight:I

    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    .line 518
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mSurfaceWidth:I

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 514
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    return p0
.end method

.method public getVideoRotation()I
    .locals 0

    .line 549
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getRotation()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 510
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    return p0
.end method

.method public getViewHeight()I
    .locals 1

    .line 125
    sget-boolean v0, Lcn/nubia/mediaeditor/utils/Utils;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/mediaeditor/utils/Utils;->getRealSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 129
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public getViewWidth()I
    .locals 1

    .line 136
    sget-boolean v0, Lcn/nubia/mediaeditor/utils/Utils;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/mediaeditor/utils/Utils;->getRealSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 140
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public is4kVideo()Z
    .locals 4

    .line 561
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    const/16 v1, 0x440

    const/16 v2, 0x780

    if-le v0, v2, :cond_0

    iget v3, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    if-gt v3, v1, :cond_1

    :cond_0
    if-le v0, v1, :cond_2

    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    if-le p0, v2, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPauseState()Z
    .locals 1

    .line 478
    iget p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    const/4 v0, 0x4

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

    .line 474
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 355
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/16 v1, 0x4f

    if-lez v0, :cond_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_3

    const/16 v0, 0x55

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_3

    .line 371
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    .line 364
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->onPlayPause()V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScaleMode:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 102
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    if-nez v0, :cond_0

    iget v2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    if-nez v2, :cond_0

    move p1, v1

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getDefaultSize(II)I

    move-result v1

    .line 107
    iget p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getDefaultSize(II)I

    move-result p1

    .line 108
    iget p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoWidth:I

    if-lez p2, :cond_3

    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mVideoHeight:I

    if-lez v0, :cond_3

    mul-int v2, p2, p1

    mul-int v3, v1, v0

    if-ge v2, v3, :cond_1

    mul-int/2addr p2, p1

    .line 110
    div-int v1, p2, v0

    goto :goto_0

    :cond_1
    mul-int v2, p2, p1

    mul-int v3, v1, v0

    if-le v2, v3, :cond_3

    mul-int/2addr v0, v1

    .line 112
    div-int p1, v0, p2

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScreenSize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mScreenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 119
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setMeasuredDimension(II)V

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 424
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setPauseState(Z)V

    .line 425
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setPauseState(Z)V

    .line 420
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->resume()V

    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->onPause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 432
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentTimeMS:I

    .line 433
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentAudioTimeMS:I

    .line 434
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->onPlay()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->pause()V

    :cond_0
    const/4 v0, 0x4

    .line 395
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 396
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    if-eqz p0, :cond_1

    .line 397
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_1
    return-void
.end method

.method public relayout(I)V
    .locals 0

    .line 489
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mDegree:I

    .line 490
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->requestLayout()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsPause:Z

    if-eqz v0, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->resume()V

    :cond_1
    const/4 v0, 0x3

    .line 408
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 409
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    if-eqz p0, :cond_2

    .line 410
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_2
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 468
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public seekTo(IIZ)V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isInPlaybackState()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 463
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAdjustDegree(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentDegree:I

    .line 495
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setAdjustDegree(I)V

    :cond_0
    return-void
.end method

.method public setOnNotifyMediaStateListener(Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    return-void
.end method

.method public setPauseState(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mIsPause:Z

    return-void
.end method

.method public setPlayPos(I)V
    .locals 0

    .line 443
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mPlayPos:I

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 0

    .line 530
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 533
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setPlaySpeed(F)Z

    move-result p0

    return p0
.end method

.method public setScreenOriention(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mOriention:I

    return-void
.end method

.method public setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mFilterResPath:Ljava/lang/String;

    .line 502
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentFilter:Ljava/lang/String;

    .line 503
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 181
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainUri:Landroid/net/Uri;

    .line 192
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public start()V
    .locals 2

    .line 375
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->start()V

    .line 377
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentTimeMS:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->seekTo(IIZ)V

    .line 379
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentDegree:I

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setAdjustDegree(I)V

    :cond_0
    const/4 v0, 0x3

    .line 382
    iput v0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mCurrentState:I

    .line 383
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMediaStateListener:Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;

    if-eqz p0, :cond_1

    .line 384
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_1
    return-void
.end method

.method public stopPlayback()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->release()V

    .line 197
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->reset()V

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 0

    .line 537
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->mMainPlayer:Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->supportPlaySpeedShift()Z

    move-result p0

    :goto_0
    return p0
.end method
