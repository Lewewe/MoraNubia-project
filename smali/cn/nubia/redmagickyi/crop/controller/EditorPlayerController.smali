.class public Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;
.super Lcn/nubia/redmagickyi/crop/base/BaseController;
.source "EditorPlayerController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditorPlayerController"


# instance fields
.field private mContext:Landroid/content/Context;

.field mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

.field private mIsPrepared:Z

.field private mListener:Lcn/nubia/redmagickyi/crop/base/FragmentListener;

.field private mUri:Landroid/net/Uri;

.field private mVideoEditorHelper:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

.field private mVideoSaveUri:Landroid/net/Uri;

.field private mView:Lcn/nubia/redmagickyi/crop/view/EditorView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/net/Uri;Landroid/net/Uri;Lcn/nubia/redmagickyi/crop/base/FragmentListener;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseController;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorHelper:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    .line 42
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mUri:Landroid/net/Uri;

    .line 43
    iput-object p4, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoSaveUri:Landroid/net/Uri;

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mContext:Landroid/content/Context;

    .line 45
    iput-object p5, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mListener:Lcn/nubia/redmagickyi/crop/base/FragmentListener;

    .line 46
    new-instance p3, Lcn/nubia/redmagickyi/crop/view/EditorView;

    iget-object p4, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mUri:Landroid/net/Uri;

    invoke-direct {p3, p1, p4, p2, p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    .line 47
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mContext:Landroid/content/Context;

    check-cast p1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getVideoView()Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 48
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->init()V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->relayout()V

    .line 50
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/EditorView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->initEditorParmas()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method private init()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->setMediaNotify()V

    return-void
.end method

.method private initEditorParmas()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getVideoRotation()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRotation:I

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getFrameRate()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getDuration()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSampleRate()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mSampleRate:I

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    const-wide/32 v1, 0xf4240

    iput-wide v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameInterval:J

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v2, v0

    iput v2, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    :cond_1
    return-void
.end method

.method private releaseVideoTrim()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorHelper:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->release()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorHelper:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    :cond_0
    return-void
.end method

.method private setMediaNotify()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    new-instance v1, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController$1;-><init>(Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;)V

    .line 108
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setOnNotifyMediaStateListener(Lcn/nubia/redmagickyi/crop/view/MediaState$OnNotifyMediaStateListener;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->release()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public getBaseView()Lcn/nubia/redmagickyi/crop/base/BaseView;
    .locals 0

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    return-object p0
.end method

.method public getInfo()Lcn/nubia/redmagickyi/crop/VideoEditorInfo;
    .locals 0

    .line 196
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    return-object p0
.end method

.method public isLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPrepared()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mIsPrepared:Z

    return p0
.end method

.method public onFinish()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mListener:Lcn/nubia/redmagickyi/crop/base/FragmentListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentListener;->onFinish()V

    return-void
.end method

.method public onPlayPause()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mContext:Landroid/content/Context;

    check-cast p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getVideoView()Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->onPlayPause()V

    return-void
.end method

.method public onSetAreaCrop(Z)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    return-void
.end method

.method public onSetVideoCropArea(Landroid/graphics/RectF;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mCurrentCropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onTrim(IILandroid/view/View;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->onPause()V

    .line 215
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->trimVideo(IILandroid/view/View;)V

    return-void
.end method

.method public relayout()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->reLayout()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 200
    const-string v0, "EditorPlayerController"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-super {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->release()V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->stopPlayback()V

    .line 203
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->releaseVideoTrim()V

    .line 204
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onFinish(Z)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mView:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->show()V

    return-void
.end method

.method public trimVideo(IILandroid/view/View;)V
    .locals 8

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    int-to-long v1, p1

    iput-wide v1, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    .line 221
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    int-to-long v0, p2

    iput-wide v0, p1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    .line 222
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->releaseVideoTrim()V

    .line 223
    new-instance p1, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoSaveUri:Landroid/net/Uri;

    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcn/nubia/redmagickyi/crop/VideoEditorInfo;Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/controller/EditorPlayerController;->mVideoEditorHelper:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    .line 224
    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->startEditVideo(Landroid/view/View;)V

    return-void
.end method
