.class public Lcom/google/mediapipe/solutioncore/ImageSolutionBase;
.super Lcom/google/mediapipe/solutioncore/SolutionBase;
.source "ImageSolutionBase.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageSolutionBase"


# instance fields
.field private eglManager:Lcom/google/mediapipe/glutil/EglManager;

.field protected staticImageMode:Z

.field private final staticImageTimestamp:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/google/mediapipe/solutioncore/SolutionBase;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageTimestamp:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private declared-synchronized sendImage(Ljava/lang/Object;J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageObj",
            "timestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)V"
        }
    .end annotation

    const-string v0, "MediaPipe packet creation error: "

    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v1, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->lastTimestamp:J

    cmp-long v1, v1, p2

    if-ltz v1, :cond_0

    .line 115
    const-string p1, "The received frame having a smaller timestamp than the processed timestamp."

    new-instance p2, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p3, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 118
    invoke-virtual {p3}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p3

    const-string v0, "Receving a frame with invalid timestamp."

    invoke-direct {p2, p3, v0}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->solutionGraphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    instance-of p2, p1, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz p2, :cond_1

    .line 124
    check-cast p1, Lcom/google/mediapipe/framework/TextureFrame;

    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    .line 126
    :cond_1
    const-string p1, "The solution graph hasn\'t been successfully started or error occurs during graph initializaton."

    new-instance p2, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p3, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 130
    invoke-virtual {p3}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p3

    const-string v0, "Graph is not started."

    invoke-direct {p2, p3, v0}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 132
    monitor-exit p0

    return-void

    .line 134
    :cond_2
    :try_start_2
    iput-wide p2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->lastTimestamp:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v1, 0x0

    .line 137
    :try_start_3
    instance-of v2, p1, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-object v3, p1

    check-cast v3, Lcom/google/mediapipe/framework/TextureFrame;

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 140
    :try_start_4
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-interface {v2, p2, p3}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->recordGpuInputArrival(J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto/16 :goto_4

    :catch_0
    move-exception p2

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto/16 :goto_2

    .line 141
    :cond_3
    :try_start_5
    instance-of v2, p1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 142
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createRgbaImage(Landroid/graphics/Bitmap;)Lcom/google/mediapipe/framework/Packet;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 143
    :try_start_6
    iget-object v3, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->statsLogger:Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;

    invoke-interface {v3, p2, p3}, Lcom/google/mediapipe/solutioncore/logging/SolutionStatsLogger;->recordCpuInputArrival(J)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v1, v2

    goto/16 :goto_4

    :catch_1
    move-exception p2

    move-object v1, v2

    goto :goto_2

    .line 145
    :cond_4
    :try_start_7
    const-string v2, "The input image type is not supported."

    new-instance v3, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v4, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNIMPLEMENTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 148
    invoke-virtual {v4}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v4

    const-string v5, "The input image type is not supported."

    invoke-direct {v3, v4, v5}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v2, p1

    move-object p1, v1

    .line 154
    :goto_0
    :try_start_8
    iget-object v3, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object v4, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->imageInputStreamName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    :try_end_8
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v1, p1

    move-object p1, v2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v1, p1

    move-object p1, v2

    goto :goto_2

    :catch_3
    move-exception p2

    .line 160
    :try_start_9
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->errorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

    if-nez p3, :cond_6

    .line 161
    const-string p3, "ImageSolutionBase"

    const-string v1, "Mediapipe error: "

    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_5

    .line 176
    :try_start_a
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 178
    :cond_5
    instance-of p1, v2, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    .line 182
    check-cast v2, Lcom/google/mediapipe/framework/TextureFrame;

    invoke-interface {v2}, Lcom/google/mediapipe/framework/TextureFrame;->release()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    .line 163
    :cond_6
    :try_start_b
    throw p2
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_3
    move-exception p2

    goto :goto_4

    :catch_4
    move-exception p2

    .line 167
    :goto_2
    :try_start_c
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->errorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

    if-eqz p3, :cond_9

    .line 168
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->errorListener:Lcom/google/mediapipe/solutioncore/ErrorListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/google/mediapipe/solutioncore/ErrorListener;->onError(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v1, :cond_7

    .line 176
    :try_start_d
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 178
    :cond_7
    instance-of p2, p1, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 182
    check-cast p1, Lcom/google/mediapipe/framework/TextureFrame;

    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 186
    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    .line 170
    :cond_9
    :try_start_e
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_4
    if-eqz v1, :cond_a

    .line 176
    :try_start_f
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->release()V

    .line 178
    :cond_a
    instance-of p3, p1, Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz p3, :cond_b

    if-eqz p1, :cond_b

    .line 182
    check-cast p1, Lcom/google/mediapipe/framework/TextureFrame;

    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    .line 185
    :cond_b
    throw p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getGlContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/EglManager;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public getGlMajorVersion()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/EglManager;->getGlMajorVersion()I

    move-result p0

    return p0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Lcom/google/mediapipe/solutioncore/SolutionInfo;Lcom/google/mediapipe/solutioncore/OutputHandler;)V
    .locals 1
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

    .line 51
    :try_start_0
    invoke-virtual {p2}, Lcom/google/mediapipe/solutioncore/SolutionInfo;->staticImageMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/mediapipe/solutioncore/SolutionBase;->initialize(Landroid/content/Context;Lcom/google/mediapipe/solutioncore/SolutionInfo;Lcom/google/mediapipe/solutioncore/OutputHandler;)V

    .line 54
    new-instance p1, Lcom/google/mediapipe/glutil/EglManager;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 55
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->solutionGraph:Lcom/google/mediapipe/framework/Graph;

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {p2}, Lcom/google/mediapipe/glutil/EglManager;->getNativeContext()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/mediapipe/framework/Graph;->setParentGlContext(J)V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    const-string p2, "Error occurs while creating MediaPipe image solution graph."

    invoke-virtual {p0, p2, p1}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBitmap"
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageMode:Z

    if-nez v0, :cond_0

    .line 101
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 104
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v0

    const-string v1, "When not in static image mode, a timestamp associated with the image is required. Use send(Bitmap inputBitmap, long timestamp) instead."

    invoke-direct {p1, v0, v1}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 101
    const-string v0, "Error occurs while calling the solution send method."

    invoke-virtual {p0, v0, p1}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageTimestamp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->sendImage(Ljava/lang/Object;J)V

    return-void
.end method

.method public send(Landroid/graphics/Bitmap;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputBitmap",
            "timestamp"
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageMode:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "ImageSolutionBase"

    const-string v1, "In static image mode, the MediaPipe solution ignores the input timestamp."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageMode:Z

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageTimestamp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    int-to-long p2, p2

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->sendImage(Ljava/lang/Object;J)V

    return-void
.end method

.method public send(Lcom/google/mediapipe/framework/TextureFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFrame"
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageMode:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTimestamp()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 75
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 78
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v0

    const-string v1, "TextureFrame\'s timestamp needs to be explicitly set if not in static image mode."

    invoke-direct {p1, v0, v1}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 75
    const-string v0, "Error occurs while calling the MediaPipe solution send method."

    invoke-virtual {p0, v0, p1}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->reportError(Ljava/lang/String;Lcom/google/mediapipe/framework/MediaPipeException;)V

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->staticImageTimestamp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTimestamp()J

    move-result-wide v0

    .line 84
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/mediapipe/solutioncore/ImageSolutionBase;->sendImage(Ljava/lang/Object;J)V

    return-void
.end method
