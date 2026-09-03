.class public Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;
.super Ljava/lang/Object;
.source "AndroidVideoEditor.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/common/Generator;
.implements Lcn/nubia/mediaeditor/editor/common/OutputListener;
.implements Lcn/nubia/mediaeditor/editor/common/CodecListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;,
        Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;
    }
.end annotation


# static fields
.field private static final MAXIMAGEFPE:I = 0x5a

.field private static final M_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AndroidVideoAddMedia"

.field private static final U_SEC:J = 0xf4240L


# instance fields
.field private mAudioCodecRender:Lcn/nubia/mediaeditor/codec/CodecRender;

.field private mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

.field private mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

.field private mAudioEncoderStart:Ljava/lang/Thread;

.field private mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

.field private mAudioPrevPts:J

.field private mCancelFlag:Z

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

.field private mIsTimeLapse:Z

.field private mIsVideoNeedEncode:Z

.field private mMaxDuration:J

.field private mMimeType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxTracks:I

.field private mOnCompleteListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;

.field private mOnErrorListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;

.field private mOnProgressListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnProgressListener;

.field private mOutputPath:Ljava/lang/String;

.field private mStopLock:Ljava/lang/Object;

.field private mVideoCodecRender:Lcn/nubia/mediaeditor/codec/CodecRender;

.field private mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

.field private mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

.field private mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

.field private mVideoEncoderStart:Ljava/lang/Thread;

.field private mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoPrevPts:J

.field private mWriteLock:Ljava/lang/Object;

.field private mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/redmagickyi/crop/VideoEditorInfo;)V
    .locals 6

    .line 69
    const-string v0, "AndroidVideoAddMedia"

    .line 0
    const-string v1, "startms "

    const-string v2, "isQcom "

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 41
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    .line 42
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    .line 43
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 44
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    .line 45
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 46
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 47
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    .line 48
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    .line 49
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOutputPath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 50
    iput-wide v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMaxDuration:J

    .line 51
    iput-wide v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPrevPts:J

    .line 52
    iput-wide v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioPrevPts:J

    const/4 v4, 0x0

    .line 53
    iput v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    .line 58
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 59
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoderStart:Ljava/lang/Thread;

    .line 60
    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    .line 63
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    .line 64
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsTimeLapse:Z

    .line 65
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsVideoNeedEncode:Z

    .line 67
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriteLock:Ljava/lang/Object;

    .line 68
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mStopLock:Ljava/lang/Object;

    .line 71
    :try_start_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    .line 74
    invoke-static {p2}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->getParamSet(Ljava/lang/String;)Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isQcomParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p2

    .line 76
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isMTKParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p3

    .line 77
    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isTimeLapseTrimSupport(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsTimeLapse:Z

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " isMtk "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mIsTimeLapse"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsTimeLapse:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " Build.Board "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 79
    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string p2, "mt"

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsTimeLapse:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    const/16 p2, 0x37

    if-ge p1, p2, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsVideoNeedEncode:Z

    .line 88
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsVideoNeedEncode:Z

    if-eqz p1, :cond_3

    .line 89
    const-string p1, "VideoEditorSource "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance p1, Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcn/nubia/mediaeditor/local/VideoEditorSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    goto :goto_0

    .line 92
    :cond_3
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsTimeLapse:Z

    .line 93
    const-string p1, "VideoLocalSource "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Lcn/nubia/mediaeditor/local/VideoLocalSource;

    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcn/nubia/mediaeditor/local/VideoLocalSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    .line 96
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide p2, p2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " endms "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide p2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/AudioLocalSource;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->releaseAudio()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsVideoNeedEncode:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoEditorSource;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoLocalSource;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    return-object p0
.end method

.method private releaseAudio()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->stop()V

    .line 454
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 457
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Decoder;->release()V

    .line 459
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 462
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Encoder;->release()V

    .line 464
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    :cond_2
    return-void
.end method

.method private setAudioDecoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1, p0}, Lcn/nubia/mediaeditor/codec/CodecRender;->setDecoder(Lcn/nubia/mediaeditor/codec/DataOutput;)V

    :cond_0
    return-void
.end method

.method private setAudioEncoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lcn/nubia/mediaeditor/codec/Encoder;->setRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V

    :cond_0
    return-void
.end method

.method private setVideoDecoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V
    .locals 0

    .line 469
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p1, p0}, Lcn/nubia/mediaeditor/codec/CodecRender;->setDecoder(Lcn/nubia/mediaeditor/codec/DataOutput;)V

    :cond_0
    return-void
.end method

.method private setVideoEncoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lcn/nubia/mediaeditor/codec/Encoder;->setRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 2

    .line 275
    const-string v0, "AndroidVideoAddMedia"

    const-string v1, "cancel editor "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 277
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    .line 278
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 280
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    throw p0
.end method

.method public getAudioFormat()Landroid/media/MediaFormat;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsVideoNeedEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->getFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public gettime()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMaxDuration:J

    return-wide v0
.end method

.method public isEmptyOfInputQueue()Z
    .locals 4

    .line 559
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz v3, :cond_1

    .line 561
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/Encoder;->isEmptyOfInputQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->isEmptyOfInputQueue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 562
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz p0, :cond_2

    .line 563
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->isEmptyOfInputQueue()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_2
    if-eqz v1, :cond_3

    .line 565
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/Encoder;->isEmptyOfInputQueue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 567
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEncoderBufferUpperLimit(I)Z
    .locals 0

    .line 553
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    invoke-virtual {p0, p1}, Lcn/nubia/mediaeditor/codec/Encoder;->isBufferUpperLimit(I)Z

    move-result p0

    return p0
.end method

.method public isMuxerStarted()Z
    .locals 0

    .line 545
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    if-eqz p0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->isMuxerStarted()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 5

    .line 523
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->isMuxerStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "audio/"

    .line 525
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioPrevPts:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    const-string v1, "video/"

    .line 526
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPrevPts:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 527
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioPrevPts:J

    goto :goto_0

    .line 529
    :cond_2
    const-string v1, "video/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPrevPts:J

    .line 532
    :cond_3
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 534
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 0

    .line 516
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    if-eqz p0, :cond_0

    .line 517
    invoke-virtual {p0, p1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutputError()V
    .locals 2

    .line 539
    const-string v0, "AndroidVideoAddMedia"

    const-string v1, " encoder error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOnErrorListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;->onError(I)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onOutputFormatChanged  format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoAddMedia"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    invoke-virtual {p0, p1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public setAudioParams()V
    .locals 9

    .line 411
    const-string v0, "sample-rate"

    :try_start_0
    new-instance v1, Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioPath:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/mediaeditor/local/AudioLocalSource;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 413
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->isNeedToDecoder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    new-instance v1, Lcn/nubia/mediaeditor/codec/AudioParams;

    invoke-direct {v1}, Lcn/nubia/mediaeditor/codec/AudioParams;-><init>()V

    .line 415
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v2

    if-nez v2, :cond_0

    .line 417
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOnErrorListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;->onError(I)V

    return-void

    .line 420
    :cond_0
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/codec/AudioParams;->setaudioSampleRate(I)V

    .line 421
    new-instance v2, Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/mediaeditor/codec/Decoder;-><init>(Landroid/media/MediaFormat;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 422
    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-virtual {v3, v2, p0}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setDataListener(Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;Lcn/nubia/mediaeditor/editor/common/OutputListener;)V

    .line 423
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/mediaeditor/codec/AudioParams;->setaudioSampleRate(I)V

    .line 424
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/mediaeditor/codec/AudioParams;->setChannelCount(I)V

    .line 425
    new-instance v0, Lcn/nubia/mediaeditor/codec/Encoder;

    invoke-direct {v0, v1}, Lcn/nubia/mediaeditor/codec/Encoder;-><init>(Lcn/nubia/mediaeditor/codec/AudioParams;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    .line 426
    new-instance v0, Lcn/nubia/mediaeditor/codec/CodecRender;

    invoke-direct {v0}, Lcn/nubia/mediaeditor/codec/CodecRender;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioCodecRender:Lcn/nubia/mediaeditor/codec/CodecRender;

    .line 427
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setAudioDecoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V

    .line 428
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioCodecRender:Lcn/nubia/mediaeditor/codec/CodecRender;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setAudioEncoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setDataListener(Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;Lcn/nubia/mediaeditor/editor/common/OutputListener;)V

    .line 432
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioMode:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setAudioMode(I)V

    .line 433
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setTrimType(I)V

    .line 434
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v3, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v7, v0

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setAudioTrimParmas(JJJ)V

    .line 436
    iget v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 444
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->releaseAudio()V

    .line 445
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 440
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->releaseAudio()V

    .line 441
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 442
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 0

    .line 498
    iput-wide p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMaxDuration:J

    return-void
.end method

.method public setOnCompleteListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOnCompleteListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOnErrorListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;

    return-void
.end method

.method public setOutputPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOutputPath:Ljava/lang/String;

    .line 123
    new-instance p1, Lcn/nubia/mediaeditor/editor/MuxerWriter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOutputPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    return-void
.end method

.method public setSaveOriginalAudio()V
    .locals 9

    .line 387
    :try_start_0
    new-instance v0, Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0, v1, p0}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setDataListener(Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;Lcn/nubia/mediaeditor/editor/common/OutputListener;)V

    .line 389
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAudioMode:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setAudioMode(I)V

    .line 390
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setTrimType(I)V

    .line 391
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v3, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v5, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v7, v0

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setAudioTrimParmas(JJJ)V

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mSampleRate:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->setSampleRate(I)V

    .line 393
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getAudioFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->releaseAudio()V

    .line 403
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 404
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 398
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->releaseAudio()V

    .line 399
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 400
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVideoParams()V
    .locals 19

    move-object/from16 v0, p0

    .line 289
    const-string v1, "video/hevc"

    const-string v2, "mt"

    .line 0
    const-string v3, " mInfo.isAreaCrop "

    .line 292
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 293
    const-string v5, "frame-rate"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 294
    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-static {v6}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->getParamSet(Ljava/lang/String;)Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    move-result-object v6

    .line 295
    invoke-static {v6}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isQcomParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result v6

    .line 297
    const-string v7, "color-format"

    const/16 v8, 0x15

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 300
    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "AndroidVideoAddMedia"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_2

    .line 302
    :try_start_1
    iget-object v7, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoPath:Ljava/lang/String;

    invoke-static {v7}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->getParamSet(Ljava/lang/String;)Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;

    move-result-object v7

    .line 303
    invoke-static {v7}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isMTKHighProfileParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 304
    const-string v12, " isMtkHigh "

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    .line 307
    :goto_0
    invoke-static {v7}, Lcn/nubia/redmagickyi/crop/util/ParamSetUtils;->isMTKSlowMotionParamSet(Lcn/nubia/redmagickyi/crop/util/ParamSetUtils$ParamSet;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    const-string v7, " isMtkSlow "

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    goto :goto_1

    :cond_1
    move v7, v10

    move v14, v11

    goto :goto_2

    :cond_2
    move v7, v10

    :goto_1
    move v12, v7

    move v14, v12

    .line 313
    :goto_2
    new-instance v13, Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-direct {v13, v4}, Lcn/nubia/mediaeditor/codec/Decoder;-><init>(Landroid/media/MediaFormat;)V

    iput-object v13, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 314
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-boolean v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " mInfo.mAdjustRotation= "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v13, v13, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_4

    .line 315
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v3

    const-string v6, "659"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 318
    :cond_3
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v3, v10}, Lcn/nubia/mediaeditor/codec/Decoder;->setAlignmentFlag(Z)V

    goto :goto_4

    .line 316
    :cond_4
    :goto_3
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v3, v11}, Lcn/nubia/mediaeditor/codec/Decoder;->setAlignmentFlag(Z)V

    .line 321
    :goto_4
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-boolean v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    const/16 v6, 0x10e

    if-eqz v3, :cond_9

    .line 322
    iget-object v13, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRotation:I

    iget-object v15, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-boolean v15, v15, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    iget-object v10, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v10, v10, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mCurrentCropArea:Landroid/graphics/RectF;

    iget-object v8, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v8, v8, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    move/from16 v16, v15

    const/16 v11, 0x5a

    move v15, v3

    move-object/from16 v17, v10

    move/from16 v18, v8

    invoke-virtual/range {v13 .. v18}, Lcn/nubia/mediaeditor/codec/Decoder;->prepareVideoTrim(IIZLandroid/graphics/RectF;I)V

    .line 323
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v3}, Lcn/nubia/mediaeditor/codec/Decoder;->getCropWidth()I

    move-result v3

    const/16 v8, 0xa0

    if-lt v3, v8, :cond_8

    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v3}, Lcn/nubia/mediaeditor/codec/Decoder;->getCropHeight()I

    move-result v3

    if-ge v3, v8, :cond_5

    goto :goto_6

    .line 328
    :cond_5
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    if-eq v3, v11, :cond_7

    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    if-ne v3, v6, :cond_6

    goto :goto_5

    .line 332
    :cond_6
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/Decoder;->getCropWidth()I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 333
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/Decoder;->getCropHeight()I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    goto/16 :goto_8

    .line 329
    :cond_7
    :goto_5
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/Decoder;->getCropHeight()I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 330
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/Decoder;->getCropWidth()I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    goto :goto_8

    .line 324
    :cond_8
    :goto_6
    const-string v1, " video size too small"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOnErrorListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;->onError(I)V

    return-void

    :cond_9
    const/16 v11, 0x5a

    .line 336
    iget-object v13, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v15, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRotation:I

    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-boolean v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->isAreaCrop:Z

    iget-object v8, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v8, v8, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    const/16 v17, 0x0

    move/from16 v16, v3

    move/from16 v18, v8

    invoke-virtual/range {v13 .. v18}, Lcn/nubia/mediaeditor/codec/Decoder;->prepareVideoTrim(IIZLandroid/graphics/RectF;I)V

    .line 337
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v8, "width"

    const-string v9, "height"

    if-eq v3, v11, :cond_b

    :try_start_2
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mAdjustRotation:I

    if-ne v3, v6, :cond_a

    goto :goto_7

    .line 341
    :cond_a
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 342
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    goto :goto_8

    .line 338
    :cond_b
    :goto_7
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    .line 339
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->getVideoFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    .line 345
    :goto_8
    const-string v3, "mime"

    invoke-virtual {v4, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    new-instance v4, Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-direct {v4}, Lcn/nubia/mediaeditor/codec/VideoParams;-><init>()V

    .line 347
    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v6, v6, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v4, v6}, Lcn/nubia/mediaeditor/codec/VideoParams;->setFps(I)V

    .line 348
    iget-object v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v6, v6, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoWidth:I

    iget-object v8, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v8, v8, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mVideoHeight:I

    invoke-virtual {v4, v6, v8}, Lcn/nubia/mediaeditor/codec/VideoParams;->setSize(II)V

    .line 349
    iget-boolean v6, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsTimeLapse:Z

    if-nez v6, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 350
    invoke-virtual {v4, v1}, Lcn/nubia/mediaeditor/codec/VideoParams;->setMimeType(Ljava/lang/String;)V

    :cond_c
    const/16 v1, 0x15

    .line 352
    invoke-virtual {v4, v1}, Lcn/nubia/mediaeditor/codec/VideoParams;->setColorFormat(I)V

    .line 353
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 354
    invoke-virtual {v4, v7}, Lcn/nubia/mediaeditor/codec/VideoParams;->setMtkSlowFlag(Z)V

    .line 355
    invoke-virtual {v4, v12}, Lcn/nubia/mediaeditor/codec/VideoParams;->setMtkHighFlag(Z)V

    .line 357
    :cond_d
    invoke-virtual {v4, v12}, Lcn/nubia/mediaeditor/codec/VideoParams;->setMtkHighFlag(Z)V

    .line 359
    new-instance v1, Lcn/nubia/mediaeditor/codec/Encoder;

    invoke-direct {v1, v4}, Lcn/nubia/mediaeditor/codec/Encoder;-><init>(Lcn/nubia/mediaeditor/codec/VideoParams;)V

    iput-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    const/4 v2, 0x0

    .line 360
    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/codec/Encoder;->setEncoderEndFlag(Z)V

    .line 361
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameInterval:J

    int-to-long v4, v5

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcn/nubia/mediaeditor/codec/Encoder;->setFrameInterval(J)V

    .line 362
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mIsVideoNeedEncode:Z

    if-eqz v1, :cond_e

    .line 363
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v1, v2, v0, v0}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->setDataListener(Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;Lcn/nubia/mediaeditor/editor/common/OutputListener;Lcn/nubia/mediaeditor/editor/common/CodecListener;)V

    .line 364
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v4, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v6, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v8, v1

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->setVideoTrimParmas(JJJ)V

    .line 365
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->setFps(I)V

    .line 366
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->setTrimType(I)V

    goto :goto_9

    .line 368
    :cond_e
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-virtual {v1, v2, v0, v0}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->setDataListener(Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;Lcn/nubia/mediaeditor/editor/common/OutputListener;Lcn/nubia/mediaeditor/editor/common/CodecListener;)V

    .line 369
    iget-object v3, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v4, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget-wide v6, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mDuration:I

    int-to-long v8, v1

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->setVideoTrimParmas(JJJ)V

    .line 370
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameRate:I

    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->setFps(I)V

    .line 371
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    iget-object v2, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v2, v2, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    invoke-virtual {v1, v2}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->setTrimType(I)V

    .line 373
    :goto_9
    new-instance v1, Lcn/nubia/mediaeditor/codec/CodecRender;

    invoke-direct {v1}, Lcn/nubia/mediaeditor/codec/CodecRender;-><init>()V

    iput-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoCodecRender:Lcn/nubia/mediaeditor/codec/CodecRender;

    .line 374
    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setVideoDecoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V

    .line 375
    iget-object v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoCodecRender:Lcn/nubia/mediaeditor/codec/CodecRender;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->setVideoEncoderRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V

    .line 376
    iget v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a

    :catch_1
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public startEdit()V
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startEdit"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMaxDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoAddMedia"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_1

    .line 130
    iget v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMuxTracks:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->setMuxTracks(I)V

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mInfo:Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    iget v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mRotation:I

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->setOrientation(I)V

    .line 132
    iget-wide v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMaxDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->setMaxDuration(J)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mOnCompleteListener:Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;

    invoke-virtual {v0, v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->setOnCompleteListener(Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {v0, p0}, Lcn/nubia/mediaeditor/codec/Encoder;->setOutputListener(Lcn/nubia/mediaeditor/editor/common/OutputListener;)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    if-nez v1, :cond_3

    .line 143
    invoke-virtual {v0, p0}, Lcn/nubia/mediaeditor/codec/Encoder;->setOutputListener(Lcn/nubia/mediaeditor/editor/common/OutputListener;)V

    .line 145
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mCancelFlag:Z

    if-nez v0, :cond_4

    .line 146
    new-instance v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;-><init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoderStart:Ljava/lang/Thread;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    new-instance v0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;-><init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoderStart:Ljava/lang/Thread;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->stop()V

    .line 236
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioLocalSource:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 238
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->stop()V

    .line 240
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEditorSource:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    .line 243
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->stop()V

    .line 245
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoLocalSource:Lcn/nubia/mediaeditor/local/VideoLocalSource;

    .line 247
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/Decoder;->release()V

    .line 249
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 251
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    if-eqz v1, :cond_4

    .line 252
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/Decoder;->release()V

    .line 253
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoDecoder:Lcn/nubia/mediaeditor/codec/Decoder;

    .line 255
    :cond_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/Encoder;->release()V

    .line 257
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mVideoEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    .line 259
    :cond_5
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    if-eqz v1, :cond_6

    .line 260
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/Encoder;->release()V

    .line 261
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mAudioEncoder:Lcn/nubia/mediaeditor/codec/Encoder;

    .line 263
    :cond_6
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    if-eqz v1, :cond_7

    .line 264
    invoke-virtual {v1}, Lcn/nubia/mediaeditor/editor/MuxerWriter;->stop()V

    .line 265
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mWriter:Lcn/nubia/mediaeditor/editor/MuxerWriter;

    .line 267
    :cond_7
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 269
    iput-object v2, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->mMimeType:Ljava/util/ArrayList;

    .line 271
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
