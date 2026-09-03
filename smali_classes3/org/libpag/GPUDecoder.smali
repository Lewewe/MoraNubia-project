.class public Lorg/libpag/GPUDecoder;
.super Ljava/lang/Object;
.source "GPUDecoder.java"


# static fields
.field private static final DECODER_THREAD_MAX_COUNT:I = 0xa

.field private static final END_OF_STREAM:I = -0x3

.field private static final ERROR:I = -0x2

.field private static final INIT_DECODER_TIMEOUT_MS:I = 0x7d0

.field private static final SUCCESS:I = 0x0

.field private static final TIMEOUT_US:I = 0x3e8

.field private static final TRY_AGAIN_LATER:I = -0x1

.field private static final decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private decoder:Landroid/media/MediaCodec;

.field private disableFlush:Z

.field private lastOutputBufferIndex:I

.field private outputSurface:Landroid/view/Surface;

.field private released:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/libpag/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/libpag/GPUDecoder;->outputSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lorg/libpag/GPUDecoder;->disableFlush:Z

    .line 119
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/libpag/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lorg/libpag/GPUDecoder;->released:Z

    return-void
.end method

.method private static Create(Landroid/view/Surface;)Lorg/libpag/GPUDecoder;
    .locals 1

    .line 26
    invoke-static {}, Lorg/libpag/GPUDecoder;->forceSoftwareDecoder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lorg/libpag/GPUDecoder;

    invoke-direct {v0}, Lorg/libpag/GPUDecoder;-><init>()V

    .line 30
    iput-object p0, v0, Lorg/libpag/GPUDecoder;->outputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$000(Lorg/libpag/GPUDecoder;)Landroid/view/Surface;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/libpag/GPUDecoder;->outputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 16
    sget-object v0, Lorg/libpag/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/libpag/GPUDecoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$202(Lorg/libpag/GPUDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method private dequeueInputBuffer()I
    .locals 2

    .line 133
    :try_start_0
    iget-object p0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private dequeueOutputBuffer()I
    .locals 3

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    iget-object p0, p0, Lorg/libpag/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static forceSoftwareDecoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 143
    :try_start_0
    iget-object p0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private initDecoder(Landroid/media/MediaFormat;)Z
    .locals 8

    .line 62
    sget-object v0, Lorg/libpag/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    return v3

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "libpag_GPUDecoder_init_decoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Lorg/libpag/SynchronizeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/libpag/SynchronizeHandler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    .line 69
    new-array v4, v2, [Landroid/media/MediaCodec;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 70
    new-instance v5, Lorg/libpag/GPUDecoder$1;

    invoke-direct {v5, p0, p1, v4}, Lorg/libpag/GPUDecoder$1;-><init>(Lorg/libpag/GPUDecoder;Landroid/media/MediaFormat;[Landroid/media/MediaCodec;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v5, v6, v7}, Lorg/libpag/SynchronizeHandler;->runSync(Lorg/libpag/SynchronizeHandler$TimeoutRunnable;J)Z

    move-result p1

    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    if-eqz p1, :cond_1

    .line 113
    aget-object p1, v4, v3

    iput-object p1, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_1

    move v3, v2

    :cond_1
    return v3
.end method

.method private onConfigure(Landroid/media/MediaFormat;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/libpag/GPUDecoder;->outputSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lorg/libpag/GPUDecoder;->initDecoder(Landroid/media/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method private onDecodeFrame()I
    .locals 2

    .line 207
    invoke-direct {p0}, Lorg/libpag/GPUDecoder;->releaseOutputBuffer()V

    .line 209
    :try_start_0
    invoke-direct {p0}, Lorg/libpag/GPUDecoder;->dequeueOutputBuffer()I

    move-result v0

    .line 210
    iget-object v1, p0, Lorg/libpag/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    .line 212
    iput v0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    if-ltz v0, :cond_2

    .line 217
    iput v0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_2
    iget p0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x2

    return p0
.end method

.method private onEndOfStream()I
    .locals 7

    .line 198
    invoke-direct {p0}, Lorg/libpag/GPUDecoder;->dequeueInputBuffer()I

    move-result v1

    if-ltz v1, :cond_0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 200
    invoke-direct/range {v0 .. v6}, Lorg/libpag/GPUDecoder;->queueInputBuffer(IIIJI)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private onFlush()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lorg/libpag/GPUDecoder;->disableFlush:Z

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 232
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/libpag/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private onRelease()V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lorg/libpag/GPUDecoder;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lorg/libpag/GPUDecoder;->released:Z

    .line 259
    invoke-direct {p0}, Lorg/libpag/GPUDecoder;->releaseOutputBuffer()V

    .line 260
    invoke-direct {p0}, Lorg/libpag/GPUDecoder;->releaseDecoder()V

    return-void
.end method

.method private onRenderFrame()Z
    .locals 4

    .line 244
    iget v0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x1

    .line 245
    invoke-direct {p0, v0, v3}, Lorg/libpag/GPUDecoder;->releaseOutputBuffer(IZ)I

    move-result v0

    .line 246
    iput v2, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    if-nez v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method private onSendBytes(Ljava/nio/ByteBuffer;J)I
    .locals 7

    .line 183
    invoke-direct {p0}, Lorg/libpag/GPUDecoder;->dequeueInputBuffer()I

    move-result v1

    if-ltz v1, :cond_1

    .line 185
    invoke-direct {p0, v1}, Lorg/libpag/GPUDecoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/libpag/GPUDecoder;->queueInputBuffer(IIIJI)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private presentationTime()J
    .locals 2

    .line 240
    iget-object p0, p0, Lorg/libpag/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    return-wide v0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 7

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lorg/libpag/GPUDecoder;->disableFlush:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x2

    return p0
.end method

.method private releaseAsync(Ljava/lang/Runnable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    sget-object v0, Lorg/libpag/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 291
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "libpag_GPUDecoder_release_decoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 294
    new-instance v2, Lorg/libpag/GPUDecoder$3;

    invoke-direct {v2, p0, p1, v0}, Lorg/libpag/GPUDecoder$3;-><init>(Lorg/libpag/GPUDecoder;Ljava/lang/Runnable;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Lorg/libpag/GPUDecoder$2;

    invoke-direct {v0, p0}, Lorg/libpag/GPUDecoder$2;-><init>(Lorg/libpag/GPUDecoder;)V

    invoke-direct {p0, v0}, Lorg/libpag/GPUDecoder;->releaseAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private releaseOutputBuffer(IZ)I
    .locals 0

    .line 174
    :try_start_0
    iget-object p0, p0, Lorg/libpag/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x2

    return p0
.end method

.method private releaseOutputBuffer()V
    .locals 3

    .line 166
    iget v0, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, v0, v2}, Lorg/libpag/GPUDecoder;->releaseOutputBuffer(IZ)I

    .line 168
    iput v1, p0, Lorg/libpag/GPUDecoder;->lastOutputBufferIndex:I

    :cond_0
    return-void
.end method
