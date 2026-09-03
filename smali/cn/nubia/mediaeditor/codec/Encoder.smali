.class public Lcn/nubia/mediaeditor/codec/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/mediaeditor/codec/Encoder$EncoderTask;
    }
.end annotation


# static fields
.field public static final MAX_INPUT_QUEUE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Encoder"


# instance fields
.field private isEndFrame:Z

.field private isFirstFrame:Z

.field private mAlignVideoHeight:I

.field private mAlignVideoWidth:I

.field private mAudioParams:Lcn/nubia/mediaeditor/codec/AudioParams;

.field private mAudioPts:J

.field private mEncodFinishFrameCount:I

.field private mEncodWaitFrameCount:I

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderEndFlag:Z

.field private mEndChangePos:J

.field private mFameInterval:J

.field private mImSlomoVideo:Z

.field private mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/mediaeditor/editor/common/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLock:Ljava/lang/Object;

.field private mMimeType:Ljava/lang/String;

.field private mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

.field private mPresentationTimeUs:J

.field private mRender:Lcn/nubia/mediaeditor/codec/CodecRender;

.field private mSkipCount:I

.field private mStartChangePos:J

.field private mSurface:Landroid/view/Surface;

.field private mVideoFrameSize:I

.field private mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

.field private mVideoPts:J


# direct methods
.method public constructor <init>(Lcn/nubia/mediaeditor/codec/AudioParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 30
    iput-wide v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mFameInterval:J

    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isFirstFrame:Z

    .line 40
    iput-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isEndFrame:Z

    const-wide/16 v3, 0x0

    .line 41
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    .line 42
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoPts:J

    .line 43
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mStartChangePos:J

    .line 44
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEndChangePos:J

    .line 47
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioPts:J

    .line 49
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    .line 50
    iput v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    .line 51
    iput v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    const/16 v3, 0x8

    .line 52
    iput v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSkipCount:I

    .line 53
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoderEndFlag:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mImSlomoVideo:Z

    .line 75
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioParams:Lcn/nubia/mediaeditor/codec/AudioParams;

    .line 76
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/AudioParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/AudioParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    .line 79
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/AudioParams;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    const-string p1, "Encoder"

    const-string v0, "create Encoder fail"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->init()V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/mediaeditor/codec/VideoParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 30
    iput-wide v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mFameInterval:J

    const/4 v2, 0x1

    .line 39
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isFirstFrame:Z

    .line 40
    iput-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isEndFrame:Z

    const-wide/16 v3, 0x0

    .line 41
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    .line 42
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoPts:J

    .line 43
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mStartChangePos:J

    .line 44
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEndChangePos:J

    .line 47
    iput-wide v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioPts:J

    .line 49
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    .line 50
    iput v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    .line 51
    iput v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    const/16 v3, 0x8

    .line 52
    iput v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSkipCount:I

    .line 53
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoderEndFlag:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mImSlomoVideo:Z

    .line 57
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    .line 58
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v3}, Lcn/nubia/mediaeditor/codec/VideoParams;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoFrameSize:I

    .line 60
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->calculateVideoAlignSize()V

    .line 61
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->calculateVideoAlignSize()V

    .line 62
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    .line 63
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object p1

    .line 64
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getMtkHighFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "recorder"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getMtkSlowFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "enc-nonRefP"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 70
    :cond_1
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 71
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/mediaeditor/codec/Encoder;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->startEncode()V

    return-void
.end method

.method private calculateVideoAlignSize()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/VideoParams;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoWidth:I

    .line 197
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 199
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoWidth:I

    .line 202
    :cond_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/VideoParams;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoHeight:I

    .line 203
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 205
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoHeight:I

    :cond_1
    return-void
.end method

.method private drainEncoder(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 264
    const-string v0, "Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending EOS to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 268
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 273
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 275
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_1
    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 277
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 278
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, -0x1

    if-ne v2, v1, :cond_4

    .line 281
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_f

    .line 282
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    .line 285
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_3
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_4
    const/4 v1, -0x2

    if-ne v2, v1, :cond_5

    .line 291
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_2
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 293
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    iget-wide v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 295
    invoke-direct {p0, v0}, Lcn/nubia/mediaeditor/codec/Encoder;->notifyOutputFormatChanged(Landroid/media/MediaFormat;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 293
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    if-gez v2, :cond_6

    .line 298
    const-string v0, "Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_6
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 301
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_4
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 304
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 305
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 310
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 311
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 313
    :cond_7
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    .line 314
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 317
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 318
    iget-wide v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 319
    iget-wide v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    iget-wide v8, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mFameInterval:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    .line 320
    invoke-direct {p0, v1, v0}, Lcn/nubia/mediaeditor/codec/Encoder;->notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 321
    :cond_8
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 322
    iget-wide v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioPts:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 323
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->getMuxFlags()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 324
    iget-wide v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioPts:J

    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioParams:Lcn/nubia/mediaeditor/codec/AudioParams;

    .line 325
    invoke-virtual {v3}, Lcn/nubia/mediaeditor/codec/AudioParams;->getSampleRate()I

    move-result v3

    int-to-long v8, v3

    const-wide/32 v10, 0x3d090000

    div-long/2addr v10, v8

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAudioPts:J

    .line 327
    :cond_9
    invoke-direct {p0, v1, v0}, Lcn/nubia/mediaeditor/codec/Encoder;->notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 329
    :cond_a
    :goto_1
    iget v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    .line 333
    :cond_b
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_5
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 335
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 336
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    if-nez p1, :cond_c

    .line 338
    const-string p1, "Encoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reached end of stream unexpectedly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    :cond_c
    const-string p1, "Encoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end of stream reached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoderEndFlag:Z

    if-eqz p1, :cond_d

    .line 343
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->notifyOutputComplete()V

    .line 345
    :cond_d
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 348
    :cond_e
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    const-string v1, "video/"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string p1, "Encoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " encoder data is over "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_3
    return-void

    :catchall_2
    move-exception p0

    .line 335
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 307
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "encoderOutputBuffer "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3
    move-exception p0

    .line 304
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 277
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0
.end method

.method private encodeData()V
    .locals 2

    .line 386
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->queueInputBuffer()V

    .line 388
    iget-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isEndFrame:Z

    invoke-direct {p0, v0}, Lcn/nubia/mediaeditor/codec/Encoder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 392
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    invoke-interface {p0}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputError()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getMuxFlags()Z
    .locals 0

    .line 381
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    invoke-interface {p0}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->isMuxerStarted()Z

    move-result p0

    return p0
.end method

.method private init()V
    .locals 1

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private declared-synchronized notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyOutputComplete()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v1, "Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz p0, :cond_0

    .line 376
    invoke-interface {p0, p1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private queueInputBuffer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isFirstFrame:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->getMuxFlags()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    const/4 v1, 0x0

    .line 216
    iput-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isFirstFrame:Z

    .line 217
    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;

    .line 218
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 222
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    array-length v4, v4

    iget v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoFrameSize:I

    if-le v4, v6, :cond_3

    .line 226
    iget v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoWidth:I

    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/VideoParams;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    :goto_0
    if-ge v1, v4, :cond_1

    .line 228
    iget-object v6, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    iget-object v7, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v7}, Lcn/nubia/mediaeditor/codec/VideoParams;->getWidth()I

    move-result v7

    invoke-virtual {v3, v6, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 227
    iget v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoWidth:I

    add-int/2addr v1, v6

    goto :goto_0

    .line 231
    :cond_1
    iget v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoHeight:I

    iget v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoWidth:I

    mul-int/2addr v1, v4

    .line 232
    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/VideoParams;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    :goto_1
    if-ge v1, v4, :cond_2

    .line 234
    iget-object v6, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    iget-object v7, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    invoke-virtual {v7}, Lcn/nubia/mediaeditor/codec/VideoParams;->getWidth()I

    move-result v7

    invoke-virtual {v3, v6, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 233
    iget v6, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mAlignVideoWidth:I

    add-int/2addr v1, v6

    goto :goto_1

    .line 236
    :cond_2
    iget v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoFrameSize:I

    goto :goto_2

    .line 239
    :cond_3
    iget-object v1, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    iget-object v1, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2
    move v7, v1

    .line 243
    iget-object v1, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_4

    iget-object v1, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    .line 245
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object p0, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    .line 249
    :cond_4
    const-string v1, "Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EOS received in fillInputBufferInner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, v2, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x4

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    .line 255
    iput-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isEndFrame:Z

    .line 258
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startEncode()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 399
    iget-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->isEndFrame:Z

    invoke-direct {p0, v1}, Lcn/nubia/mediaeditor/codec/Encoder;->drainEncoder(Z)V

    .line 401
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 402
    :goto_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 405
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->encodeData()V

    .line 410
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    .line 401
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 442
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 445
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 447
    :cond_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public errorInput()V
    .locals 0

    .line 475
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    invoke-interface {p0}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputError()V

    return-void
.end method

.method public fillInputBuffer(Z)V
    .locals 1

    .line 148
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    .line 150
    invoke-virtual {p0, p1}, Lcn/nubia/mediaeditor/codec/Encoder;->fillInputBufferInner(Z)V

    return-void
.end method

.method public fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 155
    :goto_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x14

    .line 157
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;

    invoke-direct {v0}, Lcn/nubia/mediaeditor/editor/common/AVFrame;-><init>()V

    .line 163
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    .line 164
    iput-object p2, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 165
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 166
    iget p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    return-void
.end method

.method public fillInputBufferInner(Z)V
    .locals 2

    .line 184
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcn/nubia/mediaeditor/codec/Encoder;->drainEncoder(Z)V

    .line 188
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getParams()Lcn/nubia/mediaeditor/codec/VideoParams;
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 175
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getVideoPts()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    return-wide v0
.end method

.method public isBufferUpperLimit(I)Z
    .locals 1

    .line 140
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    iget p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    add-int/2addr p0, p1

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyOfInputQueue()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mIsEnd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 452
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 454
    const-string v1, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :try_start_1
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 457
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 458
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 460
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 462
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    .line 463
    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 465
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    .line 468
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    :catchall_0
    move-exception p0

    .line 468
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public resetEncoderFrameCount()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodWaitFrameCount:I

    .line 172
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncodFinishFrameCount:I

    return-void
.end method

.method public setEncoderEndFlag(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoderEndFlag:Z

    return-void
.end method

.method public setFrameInterval(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mFameInterval:J

    return-void
.end method

.method public setOutputListener(Lcn/nubia/mediaeditor/editor/common/OutputListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    return-void
.end method

.method public setRender(Lcn/nubia/mediaeditor/codec/CodecRender;)V
    .locals 1

    .line 96
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mRender:Lcn/nubia/mediaeditor/codec/CodecRender;

    .line 97
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Lcn/nubia/mediaeditor/codec/CodecRender;->setFiller(Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;)V

    :cond_0
    return-void
.end method

.method public setRender(Lcn/nubia/mediaeditor/codec/ImageRender;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1, p0}, Lcn/nubia/mediaeditor/codec/ImageRender;->setFiller(Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mVideoParams:Lcn/nubia/mediaeditor/codec/VideoParams;

    .line 107
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/VideoParams;->getColorFormat()I

    move-result v0

    const v1, 0x7f000789

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    .line 110
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->getParams()Lcn/nubia/mediaeditor/codec/VideoParams;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/mediaeditor/codec/VideoParams;->getWidth()I

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/Encoder;->getParams()Lcn/nubia/mediaeditor/codec/VideoParams;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/VideoParams;->getHeight()I

    move-result p0

    .line 112
    invoke-virtual {p1, v0, v1, p0}, Lcn/nubia/mediaeditor/codec/ImageRender;->createInputSurface(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public setVideoPts(J)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mPresentationTimeUs:J

    return-void
.end method

.method public start()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 426
    const-string v1, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Encoder start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catch_0
    :try_start_2
    const-string v1, "Encoder"

    const-string v2, "Encoder start fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    invoke-interface {v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputError()V

    .line 434
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Encoder;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcn/nubia/mediaeditor/codec/Encoder$EncoderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/mediaeditor/codec/Encoder$EncoderTask;-><init>(Lcn/nubia/mediaeditor/codec/Encoder;Lcn/nubia/mediaeditor/codec/Encoder$1;)V

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Encoder$EncoderTask;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 434
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
