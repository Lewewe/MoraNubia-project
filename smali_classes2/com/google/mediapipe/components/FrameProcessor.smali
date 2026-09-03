.class public Lcom/google/mediapipe/components/FrameProcessor;
.super Ljava/lang/Object;
.source "FrameProcessor.java"

# interfaces
.implements Lcom/google/mediapipe/components/TextureFrameProcessor;
.implements Lcom/google/mediapipe/components/AudioDataProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;,
        Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODING:I = 0x2

.field private static final BYTES_PER_MONO_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FrameProcessor"


# instance fields
.field private addFrameListener:Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;

.field private asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

.field private audioConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/components/AudioDataConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private audioInputStream:Ljava/lang/String;

.field private audioOutputStream:Ljava/lang/String;

.field private audioSampleRate:D

.field private mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

.field private numAudioChannels:I

.field private packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private useImage:Z

.field private videoConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/components/TextureFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private videoInputStream:Ljava/lang/String;

.field private videoInputStreamCpu:Ljava/lang/String;

.field private videoOutputStream:Ljava/lang/String;

.field private videoSurfaceOutput:Lcom/google/mediapipe/framework/SurfaceOutput;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parentNativeContext",
            "graphName",
            "inputStream",
            "outputStream"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->numAudioChannels:I

    .line 76
    iput-boolean v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->useImage:Z

    .line 96
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/google/mediapipe/components/FrameProcessor;->initializeGraphAndPacketCreator(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/google/mediapipe/components/FrameProcessor;->addVideoStreams(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    const-string p1, "FrameProcessor"

    const-string p2, "MediaPipe error: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "graphName"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->numAudioChannels:I

    .line 76
    iput-boolean v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->useImage:Z

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/components/FrameProcessor;->initializeGraphAndPacketCreator(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphConfig"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->numAudioChannels:I

    .line 76
    iput-boolean v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->useImage:Z

    .line 120
    invoke-direct {p0, p1}, Lcom/google/mediapipe/components/FrameProcessor;->initializeGraphAndPacketCreator(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/mediapipe/components/FrameProcessor;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/components/FrameProcessor;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    return-object p0
.end method

.method private initializeGraphAndPacketCreator(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "graphName"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->getAssetBytes(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph([B)V

    .line 146
    :goto_0
    new-instance p1, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    iget-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-void
.end method

.method private initializeGraphAndPacketCreator(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphConfig"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 156
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    .line 157
    new-instance p1, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p1, v0}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-void
.end method

.method static synthetic lambda$setAsynchronousErrorListener$0(Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 190
    invoke-interface {p0, p1}, Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static synthetic lambda$setAsynchronousErrorListener$1(Landroid/os/Handler;Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V
    .locals 1

    .line 188
    new-instance v0, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private maybeAcceptNewFrame(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 420
    iget-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/google/mediapipe/components/FrameProcessor;->startGraph()V

    :cond_0
    return p2
.end method

.method private startGraph()V
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    return-void
.end method


# virtual methods
.method public addAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 604
    monitor-enter p0

    .line 605
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    .line 608
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAudioStreams(Ljava/lang/String;Ljava/lang/String;IID)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "outputStream",
            "numInputChannels",
            "numOutputChannels",
            "audioSampleRateInHz"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioInputStream:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioOutputStream:Ljava/lang/String;

    .line 260
    iput p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->numAudioChannels:I

    .line 261
    iput-wide p5, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioSampleRate:D

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {p1, p3, p5, p6}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createTimeSeriesHeader(ID)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioInputStream:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/mediapipe/framework/Graph;->setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioOutputStream:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const/16 p2, 0xc

    goto :goto_0

    :cond_1
    const/16 p2, 0x10

    .line 271
    :goto_0
    new-instance p3, Landroid/media/AudioFormat$Builder;

    invoke-direct {p3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    iget-wide p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioSampleRate:D

    double-to-int p3, p3

    .line 274
    invoke-virtual {p1, p3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 277
    iget-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioOutputStream:Ljava/lang/String;

    new-instance p4, Lcom/google/mediapipe/components/FrameProcessor$2;

    invoke-direct {p4, p0, p1}, Lcom/google/mediapipe/components/FrameProcessor$2;-><init>(Lcom/google/mediapipe/components/FrameProcessor;Landroid/media/AudioFormat;)V

    invoke-virtual {p2, p3, p4}, Lcom/google/mediapipe/framework/Graph;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    :cond_2
    return-void
.end method

.method public addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputStream",
            "callback"
        }
    .end annotation

    .line 334
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/framework/Graph;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    return-void
.end method

.method public addVideoStreams(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentNativeContext",
            "inputStream",
            "outputStream"
        }
    .end annotation

    .line 207
    iput-object p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoInputStream:Ljava/lang/String;

    .line 208
    iput-object p4, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoOutputStream:Ljava/lang/String;

    .line 210
    iget-object p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p3, p1, p2}, Lcom/google/mediapipe/framework/Graph;->setParentGlContext(J)V

    .line 212
    iget-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoOutputStream:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 213
    iget-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    new-instance p3, Lcom/google/mediapipe/components/FrameProcessor$1;

    invoke-direct {p3, p0}, Lcom/google/mediapipe/components/FrameProcessor$1;-><init>(Lcom/google/mediapipe/components/FrameProcessor;)V

    invoke-virtual {p2, p1, p3}, Lcom/google/mediapipe/framework/Graph;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 238
    iget-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoOutputStream:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/Graph;->addSurfaceOutput(Ljava/lang/String;)Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoSurfaceOutput:Lcom/google/mediapipe/framework/SurfaceOutput;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 372
    const-string v0, "Mediapipe error: "

    const-string v1, "FrameProcessor"

    iget-object v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v2}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    .line 375
    iget-object v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v2}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 380
    iget-object v3, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-eqz v3, :cond_0

    .line 381
    invoke-interface {v3, v2}, Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->tearDown()V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 391
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public getGraph()Lcom/google/mediapipe/framework/Graph;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    return-object p0
.end method

.method public getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-object p0
.end method

.method public getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoSurfaceOutput:Lcom/google/mediapipe/framework/SurfaceOutput;

    return-object p0
.end method

.method public onNewAudioData(Ljava/nio/ByteBuffer;JLandroid/media/AudioFormat;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioData",
            "timestampMicros",
            "audioFormat"
        }
    .end annotation

    const/4 v0, 0x0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/google/mediapipe/components/FrameProcessor;->startGraph()V

    .line 564
    :cond_0
    invoke-virtual {p4}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    iget v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->numAudioChannels:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "FrameProcessor"

    if-ne v1, v2, :cond_3

    .line 565
    :try_start_1
    invoke-virtual {p4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    int-to-double v1, v1

    iget-wide v4, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioSampleRate:D

    cmpl-double v1, v1, v4

    if-nez v1, :cond_3

    .line 566
    invoke-virtual {p4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p4

    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    goto :goto_1

    .line 570
    :cond_1
    iget-object p4, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioInputStream:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p4

    div-int/2addr p4, v1

    iget v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->numAudioChannels:I

    div-int/2addr p4, v1

    .line 573
    iget-object v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {v2, p1, v1, p4}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createAudioPacket(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 577
    :try_start_2
    iget-object p4, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioInputStream:Ljava/lang/String;

    invoke-virtual {p4, v1, p1, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_2
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 582
    :try_start_3
    iget-object p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-nez p3, :cond_2

    .line 583
    const-string p3, "Mediapipe error: "

    invoke-static {v3, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_3

    .line 585
    :cond_2
    throw p2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    :cond_3
    :goto_1
    :try_start_4
    const-string p1, "Producer\'s AudioFormat doesn\'t match FrameProcessor\'s AudioFormat"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    .line 589
    :goto_2
    :try_start_5
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-eqz p0, :cond_5

    .line 590
    invoke-interface {p0, p1}, Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 598
    :goto_3
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_4
    return-void

    .line 592
    :cond_5
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-eqz v0, :cond_6

    .line 598
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 600
    :cond_6
    throw p0
.end method

.method public onNewFrame(Landroid/graphics/Bitmap;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "bitmap",
            "timestamp"
        }
    .end annotation

    const/4 v0, 0x0

    .line 498
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/google/mediapipe/components/FrameProcessor;->maybeAcceptNewFrame(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->addFrameListener:Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;

    if-eqz v1, :cond_1

    .line 503
    invoke-interface {v1, p2, p3}, Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;->onWillAddFrame(J)V

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/google/mediapipe/components/FrameProcessor;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createRgbImageFrame(Landroid/graphics/Bitmap;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    :try_start_1
    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoInputStreamCpu:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 515
    :try_start_2
    iget-object p3, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-nez p3, :cond_2

    .line 516
    const-string p3, "FrameProcessor"

    const-string v0, "Mediapipe error: "

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_2

    .line 518
    :cond_2
    throw p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p1

    .line 522
    :goto_1
    :try_start_3
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-eqz p0, :cond_4

    .line 523
    invoke-interface {p0, p1}, Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 529
    :goto_2
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_3
    return-void

    .line 525
    :cond_4
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz v0, :cond_5

    .line 529
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 531
    :cond_5
    throw p0
.end method

.method public onNewFrame(Lcom/google/mediapipe/framework/TextureFrame;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 428
    const-string v0, "FrameProcessor"

    .line 429
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTimestamp()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 431
    :try_start_0
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    const-string v4, "Input tex: %d width: %d height: %d"

    .line 436
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTextureName()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 434
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/mediapipe/components/FrameProcessor;->maybeAcceptNewFrame(J)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    .line 484
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    :cond_1
    return-void

    .line 443
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/mediapipe/components/FrameProcessor;->addFrameListener:Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;

    if-eqz v4, :cond_3

    .line 444
    invoke-interface {v4, v1, v2}, Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;->onWillAddFrame(J)V

    .line 447
    :cond_3
    iget-boolean v4, p0, Lcom/google/mediapipe/components/FrameProcessor;->useImage:Z

    if-eqz v4, :cond_4

    .line 448
    iget-object v4, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {v4, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    goto :goto_0

    .line 450
    :cond_4
    iget-object v4, p0, Lcom/google/mediapipe/components/FrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {v4, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createGpuBuffer(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object v5, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoInputStream:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v1, v2}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_2
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto :goto_2

    :catch_1
    move-exception v1

    .line 463
    :try_start_3
    iget-object v2, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-nez v2, :cond_5

    .line 464
    const-string v2, "Mediapipe error: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, p1

    :goto_1
    if-eqz v3, :cond_7

    .line 479
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_3

    .line 466
    :cond_5
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 470
    :goto_2
    :try_start_5
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-eqz p0, :cond_8

    .line 471
    invoke-interface {p0, v0}, Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_6

    .line 479
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_6
    if-eqz p1, :cond_7

    .line 484
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    :cond_7
    :goto_3
    return-void

    .line 473
    :cond_8
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-eqz v3, :cond_9

    .line 479
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_9
    if-eqz p1, :cond_a

    .line 484
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    .line 486
    :cond_a
    throw p0
.end method

.method public preheat()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/google/mediapipe/components/FrameProcessor;->startGraph()V

    :cond_0
    return-void
.end method

.method public removeAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 613
    monitor-enter p0

    .line 614
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 615
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 616
    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    .line 617
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 350
    iput-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    .line 351
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAsynchronousErrorListener(Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;)V
    .locals 0
    .param p1    # Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    return-void
.end method

.method public setAsynchronousErrorListener(Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;)V

    move-object p1, v0

    .line 184
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/FrameProcessor;->setAsynchronousErrorListener(Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;)V

    return-void
.end method

.method public setAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 323
    monitor-enter p0

    const/4 v0, 0x1

    .line 324
    :try_start_0
    new-array v0, v0, [Lcom/google/mediapipe/components/AudioDataConsumer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->audioConsumers:Ljava/util/List;

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 316
    monitor-enter p0

    const/4 v0, 0x1

    .line 317
    :try_start_0
    new-array v0, v0, [Lcom/google/mediapipe/components/TextureFrameConsumer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoConsumers:Ljava/util/List;

    .line 318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInputSidePackets(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputSidePackets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 310
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "setInputSidePackets must be called before the graph is started"

    .line 309
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 311
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/Graph;->setInputSidePackets(Ljava/util/Map;)V

    return-void
.end method

.method public setOnWillAddFrameListener(Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;)V
    .locals 0
    .param p1    # Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addFrameListener"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->addFrameListener:Lcom/google/mediapipe/components/FrameProcessor$OnWillAddFrameListener;

    return-void
.end method

.method public declared-synchronized setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "service",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mediapipe/framework/GraphService<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0, p1, p2}, Lcom/google/mediapipe/framework/Graph;->setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUseImage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use"
        }
    .end annotation

    .line 129
    iput-boolean p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->useImage:Z

    return-void
.end method

.method public setVideoInputStreamCpu(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor;->videoInputStreamCpu:Ljava/lang/String;

    return-void
.end method

.method public waitUntilIdle()V
    .locals 2

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 538
    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor;->asyncErrorListener:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    if-eqz p0, :cond_0

    .line 539
    invoke-interface {p0, v0}, Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 542
    :cond_0
    const-string p0, "FrameProcessor"

    const-string v1, "Mediapipe error: "

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
