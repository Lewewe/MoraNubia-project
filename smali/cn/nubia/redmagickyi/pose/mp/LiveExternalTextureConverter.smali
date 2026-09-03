.class public Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;
.super Ljava/lang/Object;
.source "LiveExternalTextureConverter.java"

# interfaces
.implements Lcom/google/mediapipe/components/TextureFrameProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_BUFFERS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExternalTextureConv"

.field private static final THREAD_NAME:Ljava/lang/String; = "ExternalTextureConverter"


# instance fields
.field private startupException:Ljava/lang/Throwable;

.field private thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    const/4 v0, 0x2

    .line 86
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;I)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->makeRenderThread(Ljavax/microedition/khronos/egl/EGLContext;I)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    .line 33
    const-string p2, "ExternalTextureConverter"

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setName(Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    new-instance v1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 41
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->start()V

    .line 44
    :try_start_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->waitUntilReady()Z

    move-result p2

    if-nez p2, :cond_1

    .line 46
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 50
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    return-void

    .line 60
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->quitSafely()Z

    .line 61
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 54
    const-string p1, "ExternalTextureConv"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "thread was unexpectedly interrupted: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p2, p3, p4}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method


# virtual methods
.method public addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->quitSafely()Z

    .line 143
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread was unexpectedly interrupted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalTextureConv"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->getInternalSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$new$0$cn-nubia-redmagickyi-pose-mp-LiveExternalTextureConverter(Ljava/lang/Object;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 39
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method synthetic lambda$setSurfaceTexture$1$cn-nubia-redmagickyi-pose-mp-LiveExternalTextureConverter(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method synthetic lambda$setSurfaceTextureAndAttachToGLContext$2$cn-nubia-redmagickyi-pose-mp-LiveExternalTextureConverter(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method protected makeRenderThread(Ljavax/microedition/khronos/egl/EGLContext;I)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;
    .locals 0

    .line 153
    new-instance p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    return-object p0
.end method

.method public removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
.end method

.method public setBufferPoolMaxSize(I)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setBufferPoolMaxSize(I)V

    return-void
.end method

.method public setBufferPoolSize(I)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setBufferPoolSize(I)V

    return-void
.end method

.method public setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
.end method

.method public setDestinationSize(II)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setDestinationSize(II)V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setFlipY(Z)V

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setRotation(I)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ExternalTextureConverter: setSurfaceTexture dimensions cannot be zero"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;Landroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ExternalTextureConverter: setSurfaceTexture dimensions cannot be zero"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;Landroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTimestampOffsetNanos(J)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setTimestampOffsetNanos(J)V

    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->thread:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
