.class public Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;
.super Lcom/google/mediapipe/glutil/GlThread;
.source "LiveExternalTextureConverter.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RenderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;
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
            "Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;",
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

    .line 175
    invoke-direct {p0, p1}, Lcom/google/mediapipe/glutil/GlThread;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 159
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 160
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->textures:[I

    .line 162
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    .line 166
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    const-wide/16 v1, 0x0

    .line 167
    iput-wide v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    .line 168
    iput-wide v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->timestampOffsetNanos:J

    .line 169
    iput-wide v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->previousTimestamp:J

    .line 170
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->previousTimestampValid:Z

    .line 171
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    .line 172
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    .line 176
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolSize:I

    .line 177
    new-instance p1, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-direct {p1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    return-void
.end method

.method private createFrame()Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;
    .locals 4

    .line 323
    iget v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-static {v0, v1}, Lcom/google/mediapipe/glutil/ShaderUtil;->createRgbaTexture(II)I

    move-result v0

    .line 325
    iget v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bindFramebuffer(III)V

    .line 326
    new-instance v1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-direct {v1, p0, v0, v2, v3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;III)V

    return-object v1
.end method

.method static synthetic lambda$poolFrameReleased$1(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V
    .locals 0

    .line 362
    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    return-void
.end method

.method private nextOutputFrame()Lcom/google/mediapipe/framework/AppTextureFrame;
    .locals 5

    const-string v0, "Enforcing buffer pool max Size. FramesInUse: "

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    if-nez v1, :cond_0

    .line 333
    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolMaxSize:I

    if-lez v2, :cond_0

    iget v3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    iget v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolSize:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v3, v2, :cond_0

    .line 334
    const-string v1, "ExternalTextureConv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolMaxSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 338
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    .line 339
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 342
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->createFrame()Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    move-result-object v1

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;->getWidth()I

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;->getHeight()I

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    if-ne v0, v2, :cond_2

    .line 344
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->waitUntilReleased(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->waitUntilReleased(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    .line 347
    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    .line 348
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->createFrame()Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    move-result-object v1

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    .line 339
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V
    .locals 2

    .line 319
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

    .line 369
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bindFramebuffer(III)V

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->render(Landroid/graphics/SurfaceTexture;)V

    .line 371
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->timestampOffsetNanos:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 372
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->previousTimestampValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->previousTimestamp:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 373
    iput-wide v4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    .line 376
    :cond_0
    iget-wide v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->nextFrameTimestampOffset:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/mediapipe/framework/AppTextureFrame;->setTimestamp(J)V

    .line 377
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->previousTimestamp:J

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->previousTimestampValid:Z

    return-void
.end method

.method private waitUntilReleased(Lcom/google/mediapipe/framework/AppTextureFrame;)V
    .locals 7

    .line 383
    const-string p0, "ExternalTextureConv"

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "Waiting for tex: %d width: %d height: %d timestamp: %d"

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->waitUntilReleasedWithGpuSync()V

    .line 388
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    const-string v0, "Finished waiting for tex: %d width: %d height: %d timestamp: %d"

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 394
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

    .line 395
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
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

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :goto_0
    return-object p0
.end method

.method synthetic lambda$onFrameAvailable$0$cn-nubia-redmagickyi-pose-mp-LiveExternalTextureConverter$RenderThread(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderNext(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected declared-synchronized poolFrameReleased(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V
    .locals 3

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 356
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesInUse:I

    .line 357
    iget v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolSize:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 359
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    .line 361
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->handler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 366
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

    .line 256
    invoke-super {p0}, Lcom/google/mediapipe/glutil/GlThread;->prepareGl()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 257
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->setup()V

    const/4 v0, 0x1

    .line 259
    new-array v1, v0, [I

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->textures:[I

    const/4 v2, 0x0

    .line 260
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 261
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->textures:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0, v2, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public releaseGl()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0, v0, v1, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->framesAvailable:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/AppTextureFrame;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->teardownFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->internalSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->textures:[I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 274
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->release()V

    .line 278
    invoke-super {p0}, Lcom/google/mediapipe/glutil/GlThread;->releaseGl()V

    return-void
.end method

.method public removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
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

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_5

    .line 287
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter p1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/components/TextureFrameConsumer;

    .line 293
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->nextOutputFrame()Lcom/google/mediapipe/framework/AppTextureFrame;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->updateOutputFrame(Lcom/google/mediapipe/framework/AppTextureFrame;)V

    if-eqz v2, :cond_2

    .line 301
    const-string v1, "ExternalTextureConv"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    const-string v1, "ExternalTextureConv"

    const-string v4, "Locking tex: %d width: %d height: %d"

    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->getTextureName()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    invoke-virtual {v3}, Lcom/google/mediapipe/framework/AppTextureFrame;->setInUse()V

    .line 306
    invoke-interface {v2, v3}, Lcom/google/mediapipe/components/TextureFrameConsumer;->onNewFrame(Lcom/google/mediapipe/framework/TextureFrame;)V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 311
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 314
    :cond_4
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public setBufferPoolMaxSize(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolMaxSize:I

    return-void
.end method

.method public setBufferPoolSize(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->bufferPoolSize:I

    return-void
.end method

.method public setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 229
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->consumers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
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

    .line 211
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationWidth:I

    .line 212
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->destinationHeight:I

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->setFlipY(Z)V

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->renderer:Lcom/google/mediapipe/glutil/ExternalTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/glutil/ExternalTextureRenderer;->setRotation(I)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 202
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 203
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 207
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setDestinationSize(II)V

    return-void
.end method

.method public setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 217
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    const/4 p1, 0x1

    .line 218
    new-array p2, p1, [I

    const/4 p3, 0x0

    .line 219
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 220
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    aget p1, p2, p3

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    const-string p0, "ExternalTextureConv"

    const-string p1, "there was RuntimeException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTimestampOffsetNanos(J)V
    .locals 0

    .line 282
    iput-wide p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->timestampOffsetNanos:J

    return-void
.end method
