.class public Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;
.super Ljava/lang/Object;
.source "AudioLocalSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/mediaeditor/local/AudioLocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTask"
.end annotation


# instance fields
.field private mExtractor:Landroid/media/MediaExtractor;

.field private packet:[B

.field packetLen:I

.field final synthetic this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;


# direct methods
.method public constructor <init>(Lcn/nubia/mediaeditor/local/AudioLocalSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 140
    new-array v1, v0, [B

    iput-object v1, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->packet:[B

    .line 141
    iput v0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->packetLen:I

    .line 144
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 145
    invoke-static {p1}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->selectTrack()V

    return-void
.end method

.method private muteDate()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->packet:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x7

    .line 167
    aput-byte v2, v0, v1

    const/16 v1, 0x50

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 168
    aput-byte v1, v0, v2

    .line 169
    iget p0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->packetLen:I

    shr-int/lit8 v1, p0, 0xb

    const/16 v2, 0x80

    add-int/2addr v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0x7ff

    shr-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 170
    aput-byte v1, v0, v2

    and-int/lit8 p0, p0, 0x7

    const/4 v1, 0x5

    shl-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1f

    int-to-byte p0, p0

    .line 171
    aput-byte p0, v0, v1

    const/4 p0, 0x6

    const/4 v1, -0x4

    .line 172
    aput-byte v1, v0, p0

    return-void
.end method

.method private selectTrack()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    iget-object v2, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 153
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 155
    iget-object p0, p0, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {p0, v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$102(Lcn/nubia/mediaeditor/local/AudioLocalSource;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

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
    .locals 25

    move-object/from16 v1, p0

    const/16 v2, 0x4000

    .line 176
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 177
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 178
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 184
    :try_start_0
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "AudioLocalSource"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-nez v6, :cond_2

    :try_start_1
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 185
    :goto_0
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 186
    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v6

    invoke-interface {v6}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->isMuxerStarted()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->muteDate()V

    .line 189
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v2, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 190
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 191
    iput v10, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 192
    iput-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 194
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 195
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v6

    iget-object v11, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 196
    invoke-static {v11}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v11

    .line 195
    invoke-interface {v6, v2, v4, v11}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 199
    :cond_1
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    .line 200
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    const/4 v6, 0x7

    .line 202
    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 203
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->packet:[B

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "headPresentationTimeUs ="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-wide v11, v8

    :goto_1
    move-wide v13, v11

    .line 209
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 210
    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$700(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v15

    cmp-long v6, v15, v8

    if-lez v6, :cond_3

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 211
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$700(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_3
    move v6, v10

    const-wide/16 v8, 0x0

    .line 215
    :goto_2
    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$800(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 216
    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 217
    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$900(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 218
    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$900(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    move-result-object v15

    const/16 v5, 0x64

    invoke-interface {v15, v5}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->isBufferUpperLimit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v18, 0xa

    .line 220
    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v18, v2

    move v15, v6

    move v2, v10

    move-object v10, v7

    goto/16 :goto_9

    .line 223
    :cond_4
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 224
    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v3, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    iput v15, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 226
    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    move-wide/from16 v19, v11

    .line 227
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 228
    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v10

    if-gez v10, :cond_5

    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v10

    move-wide/from16 v21, v8

    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v10, v8

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1100(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v8

    cmp-long v8, v10, v8

    if-gtz v8, :cond_6

    goto :goto_3

    :cond_5
    move-wide/from16 v21, v8

    :goto_3
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 229
    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v8

    if-ltz v8, :cond_7

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v8

    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v8, v10

    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 230
    :cond_6
    const-string v2, "need decode read EOS break"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 231
    iput v2, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x4

    .line 232
    iput v4, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 233
    iget-object v4, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v4, v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$802(Lcn/nubia/mediaeditor/local/AudioLocalSource;Z)Z

    .line 234
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$900(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 235
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$900(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_c

    .line 241
    :cond_7
    iget v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v8, :cond_8

    .line 242
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    move-wide/from16 v11, v19

    invoke-static {v5, v11, v12}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1014(Lcn/nubia/mediaeditor/local/AudioLocalSource;J)J

    .line 243
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    .line 246
    :cond_8
    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 247
    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$900(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$800(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 248
    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$900(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    move-result-object v10

    invoke-interface {v10, v3, v5}, Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;->onDecoderDataCopy(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_9
    :goto_4
    move-object/from16 v18, v2

    move v15, v6

    move-object v10, v7

    move-wide v11, v8

    move-wide/from16 v8, v21

    const-wide/16 v16, 0x0

    goto/16 :goto_b

    :cond_a
    move-wide/from16 v21, v8

    .line 253
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 254
    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v5

    invoke-interface {v5}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->isMuxerStarted()Z

    move-result v5

    if-nez v5, :cond_b

    :goto_5
    move-object/from16 v18, v2

    move v15, v6

    move-object v10, v7

    move-wide/from16 v8, v21

    const/4 v2, 0x0

    goto/16 :goto_9

    .line 256
    :cond_b
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v5

    if-gez v5, :cond_f

    .line 257
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 258
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 260
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v8

    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 261
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    add-long v8, v8, v19

    iput-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 263
    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1100(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    cmp-long v8, v8, v19

    if-lez v8, :cond_d

    const/4 v8, 0x0

    .line 264
    iput v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 265
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 266
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    .line 268
    :cond_c
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$802(Lcn/nubia/mediaeditor/local/AudioLocalSource;Z)Z

    goto/16 :goto_c

    .line 271
    :cond_d
    iget v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v8, :cond_e

    .line 272
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5, v11, v12}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1002(Lcn/nubia/mediaeditor/local/AudioLocalSource;J)J

    .line 273
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    .line 276
    :cond_e
    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 277
    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 278
    iget-object v10, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v10}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v10

    iget-object v11, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 279
    invoke-static {v11}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v11

    .line 278
    invoke-interface {v10, v3, v5, v11}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 283
    :cond_f
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v8

    const-wide/16 v15, 0x0

    cmp-long v5, v8, v15

    if-lez v5, :cond_11

    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 284
    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 285
    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v8

    cmp-long v5, v11, v8

    if-gez v5, :cond_11

    .line 286
    iput-wide v11, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v11, v13

    .line 288
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 289
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v5

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 291
    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v8

    .line 289
    invoke-interface {v5, v2, v4, v8}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    :cond_10
    :goto_6
    move-wide/from16 v8, v21

    :goto_7
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 295
    :cond_11
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 296
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    iput v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 298
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 299
    iput v9, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 300
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v8

    if-nez v8, :cond_15

    .line 301
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v8

    if-nez v8, :cond_13

    .line 302
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v23

    add-long v19, v19, v23

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$700(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v23

    cmp-long v8, v19, v23

    if-gez v8, :cond_12

    .line 303
    iput-wide v11, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_8

    .line 305
    :cond_12
    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    add-long v19, v19, v11

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 307
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v23

    add-long v19, v19, v23

    iget-object v8, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 308
    invoke-static {v8}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$700(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v23

    sub-long v9, v19, v23

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 310
    :cond_13
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v9

    const/4 v8, 0x1

    if-ne v9, v8, :cond_14

    if-nez v6, :cond_14

    .line 312
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 313
    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    add-long v9, v9, v19

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 314
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    add-long v9, v9, v19

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 315
    :cond_14
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v9

    const/4 v8, 0x1

    if-ne v9, v8, :cond_16

    if-eqz v6, :cond_16

    .line 317
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 318
    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    add-long v9, v9, v19

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 319
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    add-long v9, v9, v19

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 320
    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    sub-long v9, v9, v19

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_8

    .line 322
    :cond_15
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_16

    .line 323
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    .line 324
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    add-long v9, v9, v19

    iput-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 327
    :cond_16
    :goto_8
    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    cmp-long v9, v9, v19

    if-lez v9, :cond_18

    const/4 v9, 0x0

    .line 328
    iput v9, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 329
    const-string v2, "local audio read EOS break"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 331
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputComplete(Ljava/lang/String;)V

    .line 333
    :cond_17
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$802(Lcn/nubia/mediaeditor/local/AudioLocalSource;Z)Z

    goto/16 :goto_c

    .line 336
    :cond_18
    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$600(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v9

    const/4 v8, 0x1

    if-ne v9, v8, :cond_1a

    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 337
    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$200(Lcn/nubia/mediaeditor/local/AudioLocalSource;)I

    move-result v9

    if-nez v9, :cond_1a

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 338
    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$700(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v19

    iget-object v15, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 339
    invoke-static {v15}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1300(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v23

    add-long v19, v19, v23

    cmp-long v9, v9, v19

    if-lez v9, :cond_1a

    if-nez v6, :cond_1a

    .line 341
    const-string v5, "start second half trim"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEndMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 344
    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1100(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v5}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v5

    iget-object v9, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1100(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-gtz v5, :cond_19

    .line 346
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v9

    const/4 v6, 0x1

    invoke-virtual {v5, v9, v10, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_6

    :cond_19
    const/4 v6, 0x1

    goto/16 :goto_6

    .line 352
    :cond_1a
    iget v8, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v8, :cond_1b

    .line 353
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    move-wide/from16 v8, v21

    invoke-static {v5, v8, v9}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1014(Lcn/nubia/mediaeditor/local/AudioLocalSource;J)J

    .line 354
    iget-object v5, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v18, v2

    move v15, v6

    move-object v10, v7

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_9
    move-object v7, v10

    move v6, v15

    move v10, v2

    move-object/from16 v2, v18

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v18, v2

    move v15, v6

    move-object v10, v7

    move-wide/from16 v8, v21

    const/4 v2, 0x0

    .line 357
    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v6

    if-eqz v6, :cond_1e

    iget-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x0

    cmp-long v6, v6, v16

    if-nez v6, :cond_1c

    cmp-long v6, v8, v16

    if-eqz v6, :cond_1d

    :cond_1c
    iget-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 358
    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$1000(Lcn/nubia/mediaeditor/local/AudioLocalSource;)J

    move-result-wide v20

    add-long v20, v20, v8

    cmp-long v2, v6, v20

    if-lez v2, :cond_1f

    .line 360
    :cond_1d
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v2

    iget-object v6, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    .line 361
    invoke-static {v6}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$500(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Ljava/lang/String;

    move-result-object v6

    .line 360
    invoke-interface {v2, v3, v5, v6}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_a

    :cond_1e
    const-wide/16 v16, 0x0

    .line 363
    :cond_1f
    :goto_a
    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 367
    :goto_b
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v10

    move v6, v15

    move-object/from16 v2, v18

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 371
    :try_start_2
    iget-object v3, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$400(Lcn/nubia/mediaeditor/local/AudioLocalSource;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/mediaeditor/editor/common/OutputListener;->onOutputError()V

    .line 372
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    :cond_20
    :goto_c
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$902(Lcn/nubia/mediaeditor/local/AudioLocalSource;Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    .line 375
    iget-object v2, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v2, v3}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$402(Lcn/nubia/mediaeditor/local/AudioLocalSource;Lcn/nubia/mediaeditor/editor/common/OutputListener;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    .line 376
    iget-object v1, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return-void

    .line 374
    :goto_d
    iget-object v3, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$902(Lcn/nubia/mediaeditor/local/AudioLocalSource;Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;)Lcn/nubia/mediaeditor/editor/common/DecoderDataListener;

    .line 375
    iget-object v3, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->this$0:Lcn/nubia/mediaeditor/local/AudioLocalSource;

    invoke-static {v3, v4}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->access$402(Lcn/nubia/mediaeditor/local/AudioLocalSource;Lcn/nubia/mediaeditor/editor/common/OutputListener;)Lcn/nubia/mediaeditor/editor/common/OutputListener;

    .line 376
    iget-object v1, v1, Lcn/nubia/mediaeditor/local/AudioLocalSource$ReadTask;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 377
    throw v2
.end method
