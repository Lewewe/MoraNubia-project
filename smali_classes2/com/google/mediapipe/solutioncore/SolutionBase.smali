.class public Lcom/google/mediapipe/solutioncore/SolutionBase;
.super Ljava/lang/Object;
.source "SolutionBase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SolutionBase"


# instance fields
.field protected errorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

.field protected imageInputStreamName:Ljava/lang/String;

.field protected lastTimestamp:J

.field protected packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

.field protected solutionGraph:Lcom/google/mediapipe/framework/Graph;

.field protected final solutionGraphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "mediapipe_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 46
    iput-wide v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->lastTimestamp:J

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 148
    const-string v0, "Error occurs while closing the Mediapipe solution graph."

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    .line 151
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V

    .line 152
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-interface {v1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->logSessionEnd()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/google/mediapipe/solutioncore/SolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V

    .line 160
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Graph;->tearDown()V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/google/mediapipe/solutioncore/SolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V

    :cond_0
    :goto_1
    return-void
.end method

.method protected getCurrentTimestampUs()J
    .locals 3

    .line 114
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packet",
            "messageParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mediapipe/framework/Packet;",
            "Lcom/google/protobuf/Parser<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 108
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Lcom/google/mediapipe/solutioncore/SolutionInfo;Lcom/google/mediapipe/solutioncore/OutputHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "solutionInfo",
            "outputHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/mediapipe/solutioncore/SolutionInfo;",
            "Lcom/google/mediapipe/solutioncore/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/solutioncore/SolutionResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->imageInputStreamName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->imageInputStreamName:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsProtoLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/mediapipe/solutioncore/SolutionInfo;)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->initializeNativeAssetManager(Landroid/content/Context;)Z

    .line 73
    new-instance v0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->binaryGraphPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->binaryGraphPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->binaryGraphPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->getAssetBytes(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph([B)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-virtual {p3, p1}, Lcom/google/mediapipe/solutioncore/OutputHandler;->setStatsLogger(Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;)V

    .line 81
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    .line 82
    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->outputStreamNames()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 83
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/mediapipe/solutioncore/SolutionBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/google/mediapipe/solutioncore/SolutionBase$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/solutioncore/OutputHandler;)V

    .line 84
    invoke-virtual {p3}, Lcom/google/mediapipe/solutioncore/OutputHandler;->handleTimestampBoundChanges()Z

    move-result p3

    .line 81
    invoke-virtual {p1, p2, v0, p3}, Lcom/google/mediapipe/framework/Graph;->addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V

    .line 85
    new-instance p1, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 87
    :try_start_2
    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-interface {p2}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->logInitError()V

    .line 88
    const-string p2, "Error occurs while creating the MediaPipe solution graph."

    invoke-virtual {p0, p2, p1}, Lcom/google/mediapipe/solutioncore/SolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "e"
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/MediaPipeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s Error details: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->errorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/google/mediapipe/solutioncore/ErrorListener;->onError(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    return-void

    .line 98
    :cond_0
    const-string p0, "SolutionBase"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    throw p2
.end method

.method public declared-synchronized start(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/Graph;->setInputSidePackets(Ljava/util/Map;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    .line 126
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    .line 127
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-interface {p1}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->logSessionStart()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-interface {v0}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->logInitError()V

    .line 132
    const-string v0, "Error occurs while starting the MediaPipe solution graph."

    invoke-virtual {p0, v0, p1}, Lcom/google/mediapipe/solutioncore/SolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public waitUntilIdle()V
    .locals 2

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    const-string v1, "Error occurs while waiting until the MediaPipe graph becomes idle."

    invoke-virtual {p0, v1, v0}, Lcom/google/mediapipe/solutioncore/SolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V

    :goto_0
    return-void
.end method
