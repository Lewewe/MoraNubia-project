.class public Lcn/nubia/mediaeditor/codec/Decoder;
.super Lcn/nubia/mediaeditor/codec/DataOutput;
.source "Decoder.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;
    }
.end annotation


# static fields
.field private static final MAX_INPUT_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "Decoder"


# instance fields
.field private isEndFrame:Z

.field private mAdjustHeight:I

.field private mAdjustSize:I

.field private mAdjustWidth:I

.field private mAlignedAdjustSize:I

.field private mAlignedHeight:I

.field private mAlignedWidth:I

.field private mBuffSize:I

.field private mDecodFinishFrameCount:I

.field private mDecodWaitFrameCount:I

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderFormat:Landroid/media/MediaFormat;

.field private mDecoderType:I

.field private mEndChangePos:J

.field private mHeight:I

.field private mIFramePts:J

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

.field private mInsertFrame:I

.field private mIsAlignment:Z

.field private mIsEnd:Z

.field private mIsIterpllation:Z

.field private mLock:Ljava/lang/Object;

.field private mMimeType:Ljava/lang/String;

.field private mOriSize:I

.field private mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

.field private mRotateDegree:I

.field private mSkipCount:I

.field private mStartChangePos:J

.field private mTextFilterMode:Z

.field private mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

.field private mVideoFilterMode:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/DataOutput;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    .line 32
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 34
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->isEndFrame:Z

    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsAlignment:Z

    .line 36
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoFilterMode:Z

    .line 37
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    .line 38
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsIterpllation:Z

    .line 40
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mLock:Ljava/lang/Object;

    .line 41
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    .line 42
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    const-wide/16 v2, -0x1

    .line 43
    iput-wide v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIFramePts:J

    .line 44
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 45
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mRotateDegree:I

    .line 46
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderType:I

    .line 47
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    .line 48
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    .line 49
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    .line 50
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    .line 51
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    .line 52
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedHeight:I

    .line 53
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOriSize:I

    .line 54
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mBuffSize:I

    .line 55
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustSize:I

    .line 56
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedAdjustSize:I

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mStartChangePos:J

    .line 58
    iput-wide v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mEndChangePos:J

    const/16 v1, 0x8

    .line 59
    iput v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mSkipCount:I

    .line 60
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInsertFrame:I

    .line 61
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mImSlomoVideo:Z

    .line 64
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    .line 65
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Lcn/nubia/mediaeditor/codec/Decoder;->prepare(Landroid/media/MediaFormat;)V

    .line 67
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 68
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    .line 70
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderFormat:Landroid/media/MediaFormat;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    .line 71
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOriSize:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/mediaeditor/codec/Decoder;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->startDecode()V

    return-void
.end method

.method private adjustAvcVideoSize()V
    .locals 3

    .line 76
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 78
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    goto :goto_0

    .line 80
    :cond_0
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    .line 82
    :goto_0
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 84
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    goto :goto_1

    .line 86
    :cond_1
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    .line 88
    :goto_1
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    mul-int v2, v0, v1

    iput v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustSize:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 89
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mBuffSize:I

    return-void
.end method

.method private adjustHevcVideoSize()V
    .locals 2

    .line 93
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    rem-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    .line 95
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    goto :goto_0

    .line 97
    :cond_0
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    .line 99
    :goto_0
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    rem-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedHeight:I

    goto :goto_1

    .line 103
    :cond_1
    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedHeight:I

    .line 105
    :goto_1
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedAdjustSize:I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Decoder"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private copyHevc([B[B)V
    .locals 9

    .line 231
    iget-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsAlignment:Z

    if-eqz v0, :cond_0

    .line 232
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustSize:I

    .line 233
    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    .line 234
    iget v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    goto :goto_0

    .line 236
    :cond_0
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOriSize:I

    .line 237
    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    .line 238
    iget v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_1

    mul-int v6, v4, v1

    add-int/2addr v6, v5

    .line 243
    iget v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 246
    :goto_3
    div-int/lit8 v5, v2, 0x2

    if-ge v4, v5, :cond_4

    move v5, v3

    :goto_4
    if-ge v5, v1, :cond_3

    mul-int v6, v4, v1

    add-int/2addr v6, v0

    add-int/2addr v6, v5

    .line 248
    iget v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedAdjustSize:I

    iget v8, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAlignedWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private decodeData()V
    .locals 2

    .line 503
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->queueInputBuffer()V

    .line 505
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->isEndFrame:Z

    invoke-direct {p0, v0, v1}, Lcn/nubia/mediaeditor/codec/Decoder;->drainDecoder(Landroid/media/MediaCodec;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->decoderExceptionPrcess()V

    :cond_0
    :goto_0
    return-void
.end method

.method private decoderExceptionPrcess()V
    .locals 2

    .line 513
    const-string v0, "Decoder"

    const-string v1, "decoder exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    invoke-interface {v0}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputError()V

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    .line 516
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private drainDecoder(Landroid/media/MediaCodec;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 255
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v1, 0x0

    .line 256
    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 257
    iget-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-eqz v2, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p2, :cond_2

    .line 260
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 261
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_2
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 266
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 267
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    .line 268
    invoke-direct {p0, v0}, Lcn/nubia/mediaeditor/codec/Decoder;->notifyOutputFormatChanged(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 269
    :cond_4
    const-string v2, "Decoder"

    if-gez v1, :cond_5

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_5
    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIFramePts:J

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_6

    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    iget v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    if-ge v3, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 277
    iput v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    .line 278
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 282
    :cond_6
    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mImSlomoVideo:Z

    if-eqz v3, :cond_8

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_8

    .line 283
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mStartChangePos:J

    cmp-long v3, v5, v7

    if-gtz v3, :cond_7

    .line 284
    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    iget v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mSkipCount:I

    rem-int v5, v3, v5

    if-eqz v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 285
    iput v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    .line 286
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 287
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 290
    :cond_7
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mEndChangePos:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_8

    .line 291
    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    iget v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mSkipCount:I

    rem-int v5, v3, v5

    if-eqz v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 292
    iput v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    .line 293
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 300
    :cond_8
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    const-string v5, "video/hevc"

    if-eqz v3, :cond_e

    .line 301
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 302
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    .line 303
    iget-object v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-virtual {v7}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropWidth()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 304
    invoke-virtual {v8}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropHeight()I

    move-result v8

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    .line 305
    iget-object v8, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-virtual {v8}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropWidth()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 306
    invoke-virtual {v9}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropHeight()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    .line 307
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v9, :cond_a

    .line 308
    iget-object v9, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-direct {p0, v3, v6}, Lcn/nubia/mediaeditor/codec/Decoder;->copyHevc([B[B)V

    .line 312
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->crop(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 313
    invoke-virtual {v5}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropWidth()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 314
    invoke-virtual {v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    .line 312
    invoke-static {v3, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 316
    :cond_9
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->crop(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 317
    invoke-virtual {v5}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropWidth()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 318
    invoke-virtual {v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    .line 316
    invoke-static {v3, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :cond_a
    :goto_1
    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoFilterMode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v3, :cond_c

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_c

    .line 322
    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v3, :cond_b

    .line 323
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 325
    :cond_b
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 328
    :cond_c
    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v3, :cond_d

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_d

    .line 329
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2

    .line 331
    :cond_d
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 334
    :goto_2
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_22

    .line 335
    iget-object v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-virtual {v5}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropWidth()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 336
    invoke-virtual {v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_8

    .line 339
    :cond_e
    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mRotateDegree:I

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_6

    .line 364
    :cond_f
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v6, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mBuffSize:I

    if-lt v3, v6, :cond_16

    iget-boolean v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsAlignment:Z

    if-nez v3, :cond_10

    goto/16 :goto_4

    .line 396
    :cond_10
    new-array v3, v6, [B

    .line 397
    new-array v6, v6, [B

    .line 398
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_12

    .line 399
    iget-object v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 400
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v5, v5, [B

    .line 401
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-direct {p0, v5, v6}, Lcn/nubia/mediaeditor/codec/Decoder;->copyHevc([B[B)V

    goto :goto_3

    .line 404
    :cond_11
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 407
    :goto_3
    iget v9, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    iget v10, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    iget v11, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderType:I

    iget v12, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mRotateDegree:I

    move-object v7, v3

    move-object v8, v6

    invoke-static/range {v7 .. v12}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->ImageRotate([B[BIIII)V

    .line 412
    :cond_12
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoFilterMode:Z

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v5, :cond_14

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_14

    .line 414
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v5, :cond_13

    .line 416
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 418
    :cond_13
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 421
    :cond_14
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v5, :cond_15

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_15

    .line 423
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 425
    :cond_15
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 365
    :cond_16
    :goto_4
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 366
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v12, v6, [B

    .line 367
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_18

    .line 368
    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 369
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 370
    invoke-direct {p0, v3, v12}, Lcn/nubia/mediaeditor/codec/Decoder;->copyHevc([B[B)V

    goto :goto_5

    .line 372
    :cond_17
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 375
    :goto_5
    iget v8, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    iget v9, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    iget v10, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderType:I

    iget v11, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mRotateDegree:I

    move-object v6, v3

    move-object v7, v12

    invoke-static/range {v6 .. v11}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->ImageRotate([B[BIIII)V

    .line 379
    :cond_18
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoFilterMode:Z

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v5, :cond_1a

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1a

    .line 381
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v5, :cond_19

    .line 383
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 385
    :cond_19
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_8

    .line 388
    :cond_1a
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v5, :cond_1b

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_1b

    .line 390
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 392
    :cond_1b
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 340
    :cond_1c
    :goto_6
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 341
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    .line 342
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v7, :cond_1e

    .line 343
    iget-object v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 344
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 345
    invoke-direct {p0, v6, v3}, Lcn/nubia/mediaeditor/codec/Decoder;->copyHevc([B[B)V

    goto :goto_7

    .line 347
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 350
    :cond_1e
    :goto_7
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoFilterMode:Z

    if-eqz v5, :cond_20

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v5, :cond_20

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_20

    .line 351
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v5, :cond_1f

    .line 352
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 354
    :cond_1f
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 357
    :cond_20
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    if-eqz v5, :cond_21

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v5, :cond_21

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_21

    .line 358
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_8

    .line 360
    :cond_21
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    :cond_22
    :goto_8
    if-eqz v3, :cond_28

    .line 437
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_23

    .line 438
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 440
    :cond_23
    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsIterpllation:Z

    if-eqz v5, :cond_24

    iget-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mImSlomoVideo:Z

    if-eqz v5, :cond_24

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mStartChangePos:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_24

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mEndChangePos:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_24

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_24

    move v5, v4

    .line 445
    :goto_9
    iget v6, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInsertFrame:I

    if-ge v5, v6, :cond_24

    .line 446
    invoke-direct {p0, v3, v0}, Lcn/nubia/mediaeditor/codec/Decoder;->notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 449
    :cond_24
    invoke-direct {p0, v3, v0}, Lcn/nubia/mediaeditor/codec/Decoder;->notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 450
    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    .line 451
    invoke-virtual {p1, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 452
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_26

    if-nez p2, :cond_25

    .line 454
    const-string p1, "reached end of stream unexpectedly"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 456
    :cond_25
    const-string p1, "end of stream reached"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_a
    iput-boolean v5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    .line 459
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->notifyOutputComplete()V

    goto :goto_b

    .line 462
    :cond_26
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    const-string v1, "video/"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_27
    :goto_b
    return-void

    .line 433
    :cond_28
    const-string p0, "decodedData is null "

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "encoderOutputBuffer "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 191
    new-instance v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;

    invoke-direct {v0}, Lcn/nubia/mediaeditor/editor/common/AVFrame;-><init>()V

    .line 192
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    .line 193
    iput-object p2, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 194
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 195
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz p1, :cond_0

    .line 196
    iget p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    :cond_0
    return-void
.end method

.method private declared-synchronized notifyOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
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

    .line 480
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_0

    .line 481
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    const-string v1, "Decoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz p0, :cond_0

    .line 497
    invoke-interface {p0, p1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private prepare(Landroid/media/MediaFormat;)V
    .locals 8

    const-string v0, "decoderName :"

    .line 110
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 111
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 112
    invoke-virtual {v1, p1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v3, "mime"

    const/4 v4, 0x0

    const-string v5, "Decoder"

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "KEY_MIME :mime"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    return-void

    .line 126
    :cond_1
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v2

    .line 128
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move v6, v2

    .line 131
    :catch_1
    const-string v0, "create decoder fail"

    if-eqz v6, :cond_2

    .line 132
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->release()V

    .line 133
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    .line 135
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 143
    :catch_2
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private queueInputBuffer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_1

    .line 207
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;

    .line 208
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 210
    iget-object v2, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->data:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v1, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 214
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object p0, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v6, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object p0, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 217
    :cond_0
    const-string v1, "Decoder"

    const-string v2, "EOS recevied in fillInputBufferInner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v1, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v0, v0, Lcn/nubia/mediaeditor/editor/common/AVFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->isEndFrame:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private startDecode()V
    .locals 2

    .line 520
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 523
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->isEncoderBufferUpperLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0xa

    .line 526
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 527
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->decodeData()V

    .line 529
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 531
    :cond_1
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->decodeData()V

    .line 533
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    .line 581
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 584
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 586
    :cond_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public getCropHeight()I
    .locals 0

    .line 185
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropHeight()I

    move-result p0

    return p0
.end method

.method public getCropWidth()I
    .locals 0

    .line 181
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->getCropWidth()I

    move-result p0

    return p0
.end method

.method public isBufferUpperLimit(I)Z
    .locals 1

    .line 547
    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    iget p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

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

    .line 472
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodFinishFrameCount:I

    iget v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecodWaitFrameCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 555
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 556
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 557
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 558
    invoke-direct {p0, p1, p2}, Lcn/nubia/mediaeditor/codec/Decoder;->fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public prepareVideoTrim(IIZLandroid/graphics/RectF;I)V
    .locals 7

    .line 156
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsAlignment:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->adjustAvcVideoSize()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->adjustHevcVideoSize()V

    .line 163
    :cond_1
    :try_start_0
    iput p5, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mRotateDegree:I

    .line 164
    iput p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoderType:I

    if-eqz p3, :cond_3

    .line 166
    iget-boolean p3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsAlignment:Z

    if-eqz p3, :cond_2

    .line 167
    new-instance p3, Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    iget v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustWidth:I

    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mAdjustHeight:I

    move-object v0, p3

    move v1, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;-><init>(IIIILandroid/graphics/RectF;I)V

    iput-object p3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    goto :goto_0

    .line 170
    :cond_2
    new-instance p3, Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    iget v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mWidth:I

    iget v3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mHeight:I

    move-object v0, p3

    move v1, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;-><init>(IIIILandroid/graphics/RectF;I)V

    iput-object p3, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 590
    const-string v0, "Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseDecoder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 591
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsEnd:Z

    .line 592
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 595
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 596
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 597
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    .line 603
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    iput-object v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mVideoCrop:Lcn/nubia/mediaeditor/editor/common/YuvCroper;

    .line 605
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mInputQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p0, :cond_1

    .line 606
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 603
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setAlignmentFlag(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIsAlignment:Z

    return-void
.end method

.method public setNextIFramePts(J)V
    .locals 0

    .line 476
    iput-wide p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mIFramePts:J

    return-void
.end method

.method public setOutputListener(Lcn/nubia/mediaeditor/editor/common/OutputListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mOutputListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    return-void
.end method

.method public setTextFilterMode(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mTextFilterMode:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    const-string v1, "Decoder"

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Decoder start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :try_start_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/Decoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    :catch_0
    const-string v0, "decoder start fail"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->decoderExceptionPrcess()V

    .line 571
    :goto_0
    new-instance v0, Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;-><init>(Lcn/nubia/mediaeditor/codec/Decoder;Lcn/nubia/mediaeditor/codec/Decoder$1;)V

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;->start()V

    goto :goto_1

    .line 573
    :cond_0
    const-string v0, "decoder is null,do not start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->decoderExceptionPrcess()V

    :goto_1
    return-void
.end method
