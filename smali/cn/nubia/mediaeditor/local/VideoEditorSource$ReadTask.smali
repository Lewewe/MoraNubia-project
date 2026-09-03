.class public Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;
.super Ljava/lang/Object;
.source "VideoEditorSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/mediaeditor/local/VideoEditorSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;


# direct methods
.method public constructor <init>(Lcn/nubia/mediaeditor/local/VideoEditorSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 51
    iget-object v0, p1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object p1, p1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-static {p1}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->access$000(Lcn/nubia/mediaeditor/local/VideoEditorSource;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->access$100(Lcn/nubia/mediaeditor/local/VideoEditorSource;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 57
    :goto_0
    invoke-direct {p0}, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->selectTrack()V

    return-void
.end method

.method private selectTrack()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 63
    iget-object v2, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v2, v2, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 65
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 67
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iput-object v2, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mFormat:Landroid/media/MediaFormat;

    .line 68
    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/high16 v0, 0x200000

    .line 76
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mTrimType:I

    const-string v2, "read EOS break"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "VideoEditorSource"

    const/4 v6, 0x0

    if-nez v1, :cond_5

    .line 78
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v7, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mStartMs:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mStartMs:J

    invoke-virtual {v1, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 82
    :cond_0
    const-string v1, "start read video"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-boolean v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    if-eqz v1, :cond_d

    .line 84
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    const/16 v4, 0x14

    .line 85
    invoke-interface {v1, v4}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->isBufferUpperLimit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v7, 0x32

    .line 87
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 92
    iget-object v4, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 93
    iget-object v4, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 94
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 96
    :try_start_0
    iget-object v4, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 100
    :goto_1
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 101
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iget-object v4, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v9, v4, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mEndMs:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    iget-object v4, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v4, v4, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    invoke-interface {v4, v0, v1}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 102
    :cond_3
    :goto_2
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 104
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 105
    iget-object v2, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v2, v2, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    invoke-interface {v2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 107
    :goto_3
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-boolean v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mCodecListener:Lcn/nubia/mediaeditor/editor/common/CodecListener;

    .line 108
    invoke-interface {v0}, Lcn/nubia/mediaeditor/editor/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 110
    :cond_4
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iput-boolean v6, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    .line 111
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_d

    .line 112
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 120
    :cond_5
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mTrimType:I

    if-ne v1, v4, :cond_d

    move v1, v6

    .line 122
    :goto_4
    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-boolean v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    if-eqz v7, :cond_d

    .line 123
    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    const/16 v8, 0x32

    .line 124
    invoke-interface {v7, v8}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->isBufferUpperLimit(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 125
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v7, 0x14

    .line 126
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    .line 129
    :cond_6
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 131
    iget-object v8, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 132
    iget-object v8, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 133
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 135
    :try_start_1
    iget-object v8, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v8

    .line 137
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_5
    if-nez v1, :cond_9

    .line 139
    iget-object v8, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 140
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v10, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v10, v10, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mStartMs:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_9

    .line 142
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v8, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mEndMs:J

    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v10, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mVideoDuration:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_7

    .line 143
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mEndMs:J

    invoke-virtual {v1, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "mEndMs = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mEndMs:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 146
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto/16 :goto_4

    .line 149
    :cond_7
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 150
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 151
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    invoke-interface {v1, v0, v7}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 153
    :goto_6
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-boolean v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mCodecListener:Lcn/nubia/mediaeditor/editor/common/CodecListener;

    .line 154
    invoke-interface {v0}, Lcn/nubia/mediaeditor/editor/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    .line 156
    :cond_8
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iput-boolean v6, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    .line 157
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    goto :goto_9

    .line 164
    :cond_9
    iget v8, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v8, :cond_b

    iget-object v8, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 165
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v10, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-wide v10, v10, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mVideoDuration:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    goto :goto_7

    .line 180
    :cond_a
    iget-object v8, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v8, v8, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    invoke-interface {v8, v0, v7}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 182
    iget-object v7, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v7, v7, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_4

    .line 166
    :cond_b
    :goto_7
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput v6, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 168
    iput v3, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 169
    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    invoke-interface {v1, v0, v7}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 171
    :goto_8
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-boolean v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mCodecListener:Lcn/nubia/mediaeditor/editor/common/CodecListener;

    .line 172
    invoke-interface {v0}, Lcn/nubia/mediaeditor/editor/common/CodecListener;->isEmptyOfInputQueue()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    .line 174
    :cond_c
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iput-boolean v6, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mIsReading:Z

    .line 175
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    if-eqz v0, :cond_d

    .line 176
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v0, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    iget-object v1, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object v1, v1, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mMimetype:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    .line 185
    :cond_d
    :goto_9
    const-string v0, "**** release Extractor ****"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mDecoderDataListener:Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    .line 187
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iput-object v1, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mListener:Lcn/nubia/mediaeditor/editor/common/OutputListener;

    .line 188
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iput-object v1, v0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mCodecListener:Lcn/nubia/mediaeditor/editor/common/CodecListener;

    .line 189
    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/VideoEditorSource;

    iget-object p0, p0, Lcn/nubia/mediaeditor/local/VideoEditorSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method
