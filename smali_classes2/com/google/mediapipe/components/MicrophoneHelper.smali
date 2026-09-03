.class public Lcom/google/mediapipe/components/MicrophoneHelper;
.super Ljava/lang/Object;
.source "MicrophoneHelper.java"

# interfaces
.implements Lcom/google/mediapipe/components/AudioDataProducer;


# static fields
.field private static final AUDIO_ENCODING:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x1

.field private static final BUFFER_SIZE_MULTIPLIER:I = 0x2

.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final DEFAULT_READ_INTERVAL_MICROS:J = 0x2710L

.field private static final MICROS_PER_SECOND:J = 0xf4240L

.field private static final NANOS_PER_MICROS:J = 0x3e8L

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "MicrophoneHelper"

.field private static final UNINITIALIZED_TIMESTAMP:J = -0x8000000000000000L


# instance fields
.field private audioFormat:Landroid/media/AudioFormat;

.field private audioPacketBufferSize:I

.field private audioRecord:Landroid/media/AudioRecord;

.field private audioRecordBufferSize:I

.field private final bytesPerFrame:I

.field private final channelConfig:I

.field private final consumers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/mediapipe/components/AudioDataConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private initialTimestampNanos:J

.field private final minBufferSize:I

.field private readIntervalMicros:J

.field private recording:Z

.field private recordingThread:Ljava/lang/Thread;

.field private final sampleRateInHz:I

.field private startRecordingTimestampNanos:J


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleRateInHz",
            "channelConfig"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 71
    iput-wide v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->readIntervalMicros:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 79
    iput-wide v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->initialTimestampNanos:J

    .line 81
    iput-wide v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->startRecordingTimestampNanos:J

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 109
    iput p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->sampleRateInHz:I

    .line 110
    iput p2, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->channelConfig:I

    const/16 v0, 0xc

    const/4 v1, 0x2

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, v1

    .line 114
    iput v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->bytesPerFrame:I

    .line 118
    invoke-static {p1, p2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->minBufferSize:I

    .line 121
    iget-wide p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->readIntervalMicros:J

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/components/MicrophoneHelper;->updateBufferSizes(J)V

    return-void
.end method

.method private getAudioRecordTimestamp()Landroid/media/AudioTimestamp;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 296
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audioRecord.getTimestamp failed with status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MicrophoneHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getTimestampNanos(J)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framePosition"
        }
    .end annotation

    .line 278
    iget-wide v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->startRecordingTimestampNanos:J

    .line 279
    invoke-direct {p0}, Lcom/google/mediapipe/components/MicrophoneHelper;->getAudioRecordTimestamp()Landroid/media/AudioTimestamp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 281
    iget-wide v0, v2, Landroid/media/AudioTimestamp;->framePosition:J

    .line 282
    iget-wide v2, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    move-wide v4, v0

    move-wide v0, v2

    move-wide v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    sub-long/2addr p1, v2

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr p1, v2

    .line 286
    iget p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->sampleRateInHz:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private readAudioPacket(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioPacket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 233
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, v1

    .line 242
    iget-object v3, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    .line 243
    invoke-virtual {v3, p1, v2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v2

    if-gtz v2, :cond_3

    const/4 p0, -0x3

    if-eq v2, p0, :cond_2

    const/4 p0, -0x2

    if-eq v2, p0, :cond_1

    const/4 p0, -0x6

    if-ne v2, p0, :cond_0

    .line 255
    const-string p0, "ERROR_DEAD_OBJECT"

    goto :goto_1

    .line 254
    :cond_0
    const-string p0, "ERROR"

    goto :goto_1

    .line 253
    :cond_1
    const-string p0, "ERROR_BAD_VALUE"

    goto :goto_1

    .line 251
    :cond_2
    const-string p0, "ERROR_INVALID_OPERATION"

    .line 257
    :goto_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "AudioRecord.read(...) failed due to "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/2addr v1, v2

    .line 262
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 265
    :cond_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private setupAudioRecord()V
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecord("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecordBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicrophoneHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    .line 153
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v2, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->sampleRateInHz:I

    .line 154
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v2, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->channelConfig:I

    .line 155
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioFormat:Landroid/media/AudioFormat;

    .line 157
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v0, v2}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioFormat:Landroid/media/AudioFormat;

    .line 160
    invoke-virtual {v0, v3}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    iget v3, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecordBufferSize:I

    .line 161
    invoke-virtual {v0, v3}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    .line 163
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 164
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 165
    const-string p0, "AudioRecord could not open."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/mediapipe/components/MicrophoneHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/components/MicrophoneHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/components/MicrophoneHelper;)V

    const-string v2, "microphoneHelperRecordingThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recordingThread:Ljava/lang/Thread;

    return-void
.end method

.method private updateBufferSizes(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "micros"
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->bytesPerFrame:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->sampleRateInHz:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double p1, p1

    mul-double/2addr v0, p1

    const-wide p1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, p1

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioPacketBufferSize:I

    .line 145
    iget p2, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->minBufferSize:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecordBufferSize:I

    return-void
.end method


# virtual methods
.method public addAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 409
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-boolean v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method public getAudioPacketBufferSize()I
    .locals 0

    .line 317
    iget p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioPacketBufferSize:I

    return p0
.end method

.method public getAudioRecordBufferSize()I
    .locals 0

    .line 310
    iget p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecordBufferSize:I

    return p0
.end method

.method synthetic lambda$setupAudioRecord$0$com-google-mediapipe-components-MicrophoneHelper()V
    .locals 10

    .line 0
    const/16 v0, -0x10

    .line 172
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->startRecordingTimestampNanos:J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 179
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    if-nez v3, :cond_1

    goto :goto_2

    .line 185
    :cond_1
    iget v3, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioPacketBufferSize:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 187
    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/mediapipe/components/MicrophoneHelper;->readAudioPacket(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v2

    .line 201
    invoke-direct {p0, v4, v5}, Lcom/google/mediapipe/components/MicrophoneHelper;->getTimestampNanos(J)J

    move-result-wide v4

    if-nez v2, :cond_2

    .line 202
    iget-wide v6, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->initialTimestampNanos:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    sub-long v0, v4, v6

    :cond_2
    sub-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    .line 205
    div-long/2addr v4, v6

    .line 209
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget v7, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->bytesPerFrame:I

    div-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 215
    iget-boolean v6, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    if-eqz v6, :cond_0

    .line 216
    iget-object v6, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mediapipe/components/AudioDataConsumer;

    .line 217
    iget-object v8, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioFormat:Landroid/media/AudioFormat;

    invoke-interface {v7, v3, v4, v5, v8}, Lcom/google/mediapipe/components/AudioDataConsumer;->onNewAudioData(Ljava/nio/ByteBuffer;JLandroid/media/AudioFormat;)V

    goto :goto_1

    :catch_0
    move-exception v3

    .line 191
    const-string v4, "MicrophoneHelper"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public removeAllAudioConsumers()V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public removeAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 413
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 405
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->consumers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInitialTimestampNanos(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialTimestampNanos"
        }
    .end annotation

    .line 329
    iput-wide p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->initialTimestampNanos:J

    return-void
.end method

.method public setReadIntervalMicros(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "micros"
        }
    .end annotation

    .line 131
    iput-wide p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->readIntervalMicros:J

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/components/MicrophoneHelper;->updateBufferSizes(J)V

    return-void
.end method

.method public startMicrophone()V
    .locals 3

    .line 337
    iget-boolean v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/google/mediapipe/components/MicrophoneHelper;->setupAudioRecord()V

    .line 342
    iget-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 343
    iget-object v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "MicrophoneHelper"

    if-eq v0, v1, :cond_1

    .line 344
    const-string v0, "AudioRecord couldn\'t start recording."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    .line 350
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recordingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 352
    const-string p0, "AudioRecord is recording audio."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMicrophone()V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/google/mediapipe/components/MicrophoneHelper;->stopMicrophoneWithoutCleanup()V

    .line 360
    invoke-virtual {p0}, Lcom/google/mediapipe/components/MicrophoneHelper;->cleanup()V

    .line 361
    const-string p0, "MicrophoneHelper"

    const-string v0, "AudioRecord stopped recording audio."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMicrophoneWithoutCleanup()V
    .locals 3

    .line 368
    const-string v0, "MicrophoneHelper"

    iget-object v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-boolean v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 373
    iput-boolean v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recording:Z

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->recordingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 379
    const-string v2, "Exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 383
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    .line 384
    const-string p0, "AudioRecord.stop() didn\'t run properly."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
