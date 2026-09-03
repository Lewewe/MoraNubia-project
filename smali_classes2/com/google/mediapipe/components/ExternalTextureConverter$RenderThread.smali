.class public Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;
.super Lcom/google/mediapipe/glutil/GlThread;
.source "ExternalTextureConverter.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/components/ExternalTextureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RenderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MICRO:J = 0x3e8L


# instance fields
.field private bufferPoolMaxSize:I

.field private bufferPoolSize:I

.field private final consumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/components/TextureFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected destinationHeight:I

.field protected destinationWidth:I

.field private final framesAvailable:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;",
            ">;"
        }
    .end annotation
.end field

.field private framesInUse:I

.field private volatile internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private nextFrameTimestampOffset:J

.field private previousTimestamp:J

.field private previousTimestampValid:Z

.field private renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

.field private volatile surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textures:[I

.field private timestampOffsetNanos:J


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentContext",
            "numBuffers"
        }
    .end annotation

    .line 315
    invoke-direct {p0, p1}, Lcom/google/mediapipe/glutil/GlThread;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 276
    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 278
    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 279
    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->textures:[I

    .line 282
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    .line 287
    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    const-wide/16 v1, 0x0

    .line 288
    iput-wide v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    .line 289
    iput-wide v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->timestampOffsetNanos:J

    .line 290
    iput-wide v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->previousTimestamp:J

    .line 291
    iput-boolean v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->previousTimestampValid:Z

    .line 293
    iput v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    .line 294
    iput v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    .line 316
    iput p2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolSize:I

    .line 317
    new-instance p1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-direct {p1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    .line 318
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    return-void
.end method

.method private createFrame()Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;
    .locals 4

    .line 471
    iget v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-static {v0, v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->createRgbaTexture(II)I

    move-result v0

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 474
    const-string v2, "Created output texture: %d width: %d height: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    const-string v2, "ExternalTextureConv"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bindFramebuffer(III)V

    .line 478
    new-instance v1, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v3, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;-><init>(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;III)V

    return-object v1
.end method

.method static synthetic lambda$poolFrameReleased$1(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V
    .locals 0

    .line 529
    invoke-static {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    return-void
.end method

.method private nextOutputFrame()Lcom/google/mediapipe/framework/AppTextureFrame;
    .locals 5

    const-string v0, "Enforcing buffer pool max Size. FramesInUse: "

    .line 494
    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    if-nez v1, :cond_0

    .line 497
    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolMaxSize:I

    if-lez v2, :cond_0

    iget v3, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    iget v4, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolSize:I

    .line 498
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v3, v2, :cond_0

    .line 499
    const-string v1, "ExternalTextureConv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolMaxSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 503
    :cond_0
    iget v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    .line 504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->createFrame()Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    move-result-object v1

    goto :goto_1

    .line 507
    :cond_1
    invoke-virtual {v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    if-ne v0, v2, :cond_3

    .line 508
    invoke-virtual {v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 518
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->waitUntilReleased(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    goto :goto_1

    .line 511
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->waitUntilReleased(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    .line 512
    invoke-static {v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    .line 513
    invoke-direct {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->createFrame()Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    move-result-object v1

    :goto_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 504
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method private updateOutputFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFrame"
        }
    .end annotation

    .line 541
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v0

    iget v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bindFramebuffer(III)V

    .line 542
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    iget-object v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->render(Landroid/graphics/SurfaceTexture;)V

    .line 547
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 548
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->timestampOffsetNanos:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 549
    iget-boolean v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->previousTimestampValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->previousTimestamp:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 551
    iput-wide v4, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    .line 553
    :cond_0
    iget-wide v2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/mediapipe/framework/AppTextureFrame;->setTimestamp(J)V

    .line 554
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->previousTimestamp:J

    const/4 p1, 0x1

    .line 555
    iput-boolean p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->previousTimestampValid:Z

    return-void
.end method

.method private waitUntilReleased(Lcom/google/mediapipe/framework/AppTextureFrame;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 560
    const-string p0, "ExternalTextureConv"

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    const-string v1, "Waiting for tex: %d width: %d height: %d timestamp: %d"

    .line 565
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 566
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 567
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 568
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 563
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->waitUntilReleasedWithGpuSync()V

    .line 571
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "Finished waiting for tex: %d width: %d height: %d timestamp: %d"

    .line 576
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 577
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 578
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 579
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 574
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread was unexpectedly interrupted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInternalSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :goto_0
    return-object p0
.end method

.method synthetic lambda$onFrameAvailable$0$com-google-mediapipe-components-ExternalTextureConverter$RenderThread(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderNext(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected declared-synchronized poolFrameReleased(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 525
    iget p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesInUse:I

    .line 526
    iget v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolSize:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    .line 529
    iget-object v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 531
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareGl()V
    .locals 3

    .line 391
    invoke-super {p0}, Lcom/google/mediapipe/glutil/GlThread;->prepareGl()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 393
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 395
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->setup()V

    const/4 v0, 0x1

    .line 397
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->textures:[I

    const/4 v2, 0x0

    .line 398
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 399
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->textures:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 400
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0, v2, v2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public releaseGl()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 405
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/AppTextureFrame;

    invoke-static {v0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 411
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->textures:[I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 412
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->release()V

    .line 415
    invoke-super {p0}, Lcom/google/mediapipe/glutil/GlThread;->releaseGl()V

    return-void
.end method

.method public removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected renderNext(Landroid/graphics/SurfaceTexture;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromTexture"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter p1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/components/TextureFrameConsumer;

    .line 434
    invoke-direct {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->nextOutputFrame()Lcom/google/mediapipe/framework/AppTextureFrame;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 440
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->updateOutputFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    if-eqz v2, :cond_3

    .line 443
    const-string v1, "ExternalTextureConv"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    const-string v1, "ExternalTextureConv"

    const-string v4, "Locking tex: %d width: %d height: %d"

    .line 448
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 449
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 450
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 446
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->setInUse()V

    .line 453
    invoke-interface {v2, v3}, Lcom/google/mediapipe/components/TextureFrameConsumer;->onNewFrame(Lcom/google/mediapipe/framework/TextureFrame;)V

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 459
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 461
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBufferPoolMaxSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferPoolMaxSize"
        }
    .end annotation

    .line 326
    iput p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolMaxSize:I

    return-void
.end method

.method public setBufferPoolSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferPoolSize"
        }
    .end annotation

    .line 322
    iput p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->bufferPoolSize:I

    return-void
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

    .line 362
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 364
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDestinationSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 349
    iput p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationWidth:I

    .line 350
    iput p2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->destinationHeight:I

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flip"
        }
    .end annotation

    .line 330
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->setFlipY(Z)V

    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 334
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->setRotation(I)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "width",
            "height"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 342
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 345
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setDestinationSize(II)V

    return-void
.end method

.method public setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "width",
            "height"
        }
    .end annotation

    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    const/4 p1, 0x1

    .line 356
    new-array p2, p1, [I

    const/4 p3, 0x0

    .line 357
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 358
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    aget p1, p2, p3

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method public setTimestampOffsetNanos(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetInNanos"
        }
    .end annotation

    .line 419
    iput-wide p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->timestampOffsetNanos:J

    return-void
.end method
