.class public Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;
.super Ljava/lang/Object;
.source "LiveFrameProcessor.java"

# interfaces
.implements Lcom/google/mediapipe/components/TextureFrameProcessor;
.implements Lcom/google/mediapipe/components/AudioDataProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;,
        Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;,
        Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODING:I = 0x2

.field private static final BYTES_PER_MONO_SAMPLE:I = 0x2

.field private static final STEREO_OUTPUT_CHANNEL_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FrameProcessor"


# instance fields
.field private addFrameListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;

.field private asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

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

.field private mFrameInterface:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;

.field private mFrameReady:Z

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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->numAudioChannels:I

    .line 59
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->useImage:Z

    .line 60
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameReady:Z

    .line 69
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->initializeGraphAndPacketCreator(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p2, p3, p5, p6}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addVideoStreams(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    const-string p1, "FrameProcessor"

    const-string p2, "MediaPipe error: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->numAudioChannels:I

    .line 59
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->useImage:Z

    .line 60
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameReady:Z

    .line 78
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->initializeGraphAndPacketCreator(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->numAudioChannels:I

    .line 59
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->useImage:Z

    .line 60
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameReady:Z

    .line 82
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->initializeGraphAndPacketCreator(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    return-object p0
.end method

.method private initializeGraphAndPacketCreator(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 94
    new-instance v0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->getAssetBytes(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph([B)V

    .line 101
    :goto_0
    new-instance p1, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-void
.end method

.method private initializeGraphAndPacketCreator(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 106
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    .line 107
    new-instance p1, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p1, v0}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-void
.end method

.method static synthetic lambda$setAsynchronousErrorListener$0(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 117
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static synthetic lambda$setAsynchronousErrorListener$1(Landroid/os/Handler;Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V
    .locals 1

    .line 116
    new-instance v0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private maybeAcceptNewFrame(J)Z
    .locals 0

    .line 278
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->startGraph()V

    :cond_0
    return p2
.end method

.method private startGraph()V
    .locals 0

    .line 400
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    return-void
.end method


# virtual methods
.method public addAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 2

    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 450
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    .line 452
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

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioInputStream:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioOutputStream:Ljava/lang/String;

    .line 154
    iput p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->numAudioChannels:I

    .line 155
    iput-wide p5, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioSampleRate:D

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {p1, p3, p5, p6}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createTimeSeriesHeader(ID)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioInputStream:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/google/mediapipe/framework/Graph;->setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioOutputStream:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const/16 p2, 0xc

    goto :goto_0

    :cond_1
    const/16 p2, 0x10

    .line 163
    :goto_0
    new-instance p3, Landroid/media/AudioFormat$Builder;

    invoke-direct {p3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    iget-wide p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioSampleRate:D

    double-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioOutputStream:Ljava/lang/String;

    new-instance p4, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$2;

    invoke-direct {p4, p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$2;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;Landroid/media/AudioFormat;)V

    invoke-virtual {p2, p3, p4}, Lcom/google/mediapipe/framework/Graph;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    :cond_2
    return-void
.end method

.method public addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 2

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    .line 220
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

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/framework/Graph;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    return-void
.end method

.method public addVideoStreams(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoInputStream:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoOutputStream:Ljava/lang/String;

    .line 125
    iget-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p3, p1, p2}, Lcom/google/mediapipe/framework/Graph;->setParentGlContext(J)V

    .line 126
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoOutputStream:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 127
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    new-instance p3, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$1;

    invoke-direct {p3, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$1;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)V

    invoke-virtual {p2, p1, p3}, Lcom/google/mediapipe/framework/Graph;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 146
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoOutputStream:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/Graph;->addSurfaceOutput(Ljava/lang/String;)Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoSurfaceOutput:Lcom/google/mediapipe/framework/SurfaceOutput;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 245
    const-string v0, "Mediapipe error: "

    const-string v1, "FrameProcessor"

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v2}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    .line 248
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v2}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 250
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-eqz v3, :cond_0

    .line 251
    invoke-interface {v3, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->tearDown()V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 260
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public getGraph()Lcom/google/mediapipe/framework/Graph;
    .locals 0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    return-object p0
.end method

.method public getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;
    .locals 0

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-object p0
.end method

.method public getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;
    .locals 0

    .line 241
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoSurfaceOutput:Lcom/google/mediapipe/framework/SurfaceOutput;

    return-object p0
.end method

.method public onNewAudioData(Ljava/nio/ByteBuffer;JLandroid/media/AudioFormat;)V
    .locals 6

    const/4 v0, 0x0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->startGraph()V

    .line 411
    :cond_0
    invoke-virtual {p4}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->numAudioChannels:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "FrameProcessor"

    if-ne v1, v2, :cond_3

    :try_start_1
    invoke-virtual {p4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    int-to-double v1, v1

    iget-wide v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioSampleRate:D

    cmpl-double v1, v1, v4

    if-nez v1, :cond_3

    invoke-virtual {p4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p4

    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    .line 412
    iget-object p4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioInputStream:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p4

    div-int/2addr p4, v1

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->numAudioChannels:I

    div-int/2addr p4, v1

    .line 414
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {v2, p1, v1, p4}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createAudioPacket(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioInputStream:Ljava/lang/String;

    invoke-virtual {p1, p4, v0, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_2
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception p1

    .line 421
    :try_start_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-nez p2, :cond_2

    .line 422
    const-string p2, "Mediapipe error: "

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_1
    return-void

    .line 426
    :cond_2
    :try_start_4
    throw p1

    .line 430
    :cond_3
    const-string p1, "Producer\'s AudioFormat doesn\'t match FrameProcessor\'s AudioFormat"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 432
    :try_start_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-eqz p0, :cond_5

    .line 433
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 440
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_4
    return-void

    .line 437
    :cond_5
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    if-eqz v0, :cond_6

    .line 440
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 443
    :cond_6
    throw p0
.end method

.method public onNewFrame(Landroid/graphics/Bitmap;J)V
    .locals 2

    const/4 v0, 0x0

    .line 350
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->maybeAcceptNewFrame(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addFrameListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;

    if-eqz v1, :cond_0

    .line 352
    invoke-interface {v1, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;->onWillAddFrame(J)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createRgbImageFrame(Landroid/graphics/Bitmap;)Lcom/google/mediapipe/framework/Packet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :try_start_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoInputStreamCpu:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception p1

    .line 362
    :try_start_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-nez p2, :cond_2

    .line 363
    const-string p2, "FrameProcessor"

    const-string p3, "Mediapipe error: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_1
    return-void

    .line 367
    :cond_2
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 371
    :try_start_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-eqz p0, :cond_5

    .line 372
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_4
    return-void

    .line 376
    :cond_5
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    if-eqz v0, :cond_6

    .line 379
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 382
    :cond_6
    throw p0
.end method

.method public onNewFrame(Lcom/google/mediapipe/framework/TextureFrame;)V
    .locals 9

    .line 286
    const-string v0, "FrameProcessor"

    .line 287
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTimestamp()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 290
    :try_start_0
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    const-string v4, "Input tex: %d width: %d height: %d"

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

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->maybeAcceptNewFrame(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 295
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addFrameListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;

    if-eqz v4, :cond_1

    .line 296
    invoke-interface {v4, v1, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;->onWillAddFrame(J)V

    .line 299
    :cond_1
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->useImage:Z

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {v4, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    goto :goto_0

    .line 302
    :cond_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-virtual {v4, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createGpuBuffer(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 308
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object v5, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoInputStream:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, v1, v2}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    :try_start_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameReady:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameInterface:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;

    if-eqz p1, :cond_3

    .line 311
    invoke-interface {p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;->frameReady()V

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameReady:Z
    :try_end_2
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object p1, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, v3

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p1, v3

    goto/16 :goto_3

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    .line 315
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-nez v2, :cond_5

    .line 316
    const-string v2, "Mediapipe error: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameInterface:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/MediaPipeException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "egl_surface_sink_input_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 318
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameInterface:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;->frameError()V

    .line 319
    iput-object v3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameInterface:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;

    :cond_4
    move-object p1, v3

    move-object v3, v1

    goto :goto_2

    .line 322
    :cond_5
    throw p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    move-object p1, v3

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object p1, v3

    move-object v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 335
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_7
    if-eqz p1, :cond_8

    .line 339
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    :cond_8
    return-void

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 327
    :goto_3
    :try_start_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-eqz p0, :cond_b

    .line 328
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_9

    .line 335
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_9
    if-eqz p1, :cond_a

    .line 339
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    :cond_a
    return-void

    .line 332
    :cond_b
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_4
    if-eqz v3, :cond_c

    .line 335
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    :cond_c
    if-eqz p1, :cond_d

    .line 339
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    .line 342
    :cond_d
    throw p0
.end method

.method public preheat()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->startGraph()V

    :cond_0
    return-void
.end method

.method public removeAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)Z
    .locals 2

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 459
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    .line 460
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 461
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)Z
    .locals 2

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 227
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    .line 228
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 229
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAsynchronousErrorListener(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    return-void
.end method

.method public setAsynchronousErrorListener(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Landroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setAsynchronousErrorListener(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;)V

    return-void
.end method

.method public setAudioConsumer(Lcom/google/mediapipe/components/AudioDataConsumer;)V
    .locals 2

    .line 202
    monitor-enter p0

    const/4 v0, 0x1

    .line 203
    :try_start_0
    new-array v0, v0, [Lcom/google/mediapipe/components/AudioDataConsumer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->audioConsumers:Ljava/util/List;

    .line 204
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

    .line 196
    monitor-enter p0

    const/4 v0, 0x1

    .line 197
    :try_start_0
    new-array v0, v0, [Lcom/google/mediapipe/components/TextureFrameConsumer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoConsumers:Ljava/util/List;

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFrameInterface(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mFrameInterface:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;

    return-void
.end method

.method public setInputSidePackets(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "setInputSidePackets must be called before the graph is started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/Graph;->setInputSidePackets(Ljava/util/Map;)V

    return-void
.end method

.method public setOnWillAddFrameListener(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$OnWillAddFrameListener;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V
    .locals 1
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

    .line 187
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0, p1, p2}, Lcom/google/mediapipe/framework/Graph;->setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUseImage(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->useImage:Z

    return-void
.end method

.method public setVideoInputStreamCpu(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->videoInputStreamCpu:Ljava/lang/String;

    return-void
.end method

.method public waitUntilIdle()V
    .locals 2

    .line 388
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->asyncErrorListener:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    if-eqz p0, :cond_0

    .line 391
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 393
    :cond_0
    const-string p0, "FrameProcessor"

    const-string v1, "Mediapipe error: "

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
