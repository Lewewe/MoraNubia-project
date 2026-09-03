.class public Lcom/google/mediapipe/components/ExternalTextureConverter;
.super Ljava/lang/Object;
.source "ExternalTextureConverter.java"

# interfaces
.implements Lcom/google/mediapipe/components/TextureFrameProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_BUFFERS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExternalTextureConv"

.field private static final THREAD_NAME:Ljava/lang/String; = "ExternalTextureConverter"


# instance fields
.field private startupException:Ljava/lang/Throwable;

.field private thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentContext"
        }
    .end annotation

    const/4 v0, 0x2

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/google/mediapipe/components/ExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;I)V
    .locals 2
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/components/ExternalTextureConverter;->makeRenderThread(Ljavax/microedition/khronos/egl/EGLContext;I)Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    .line 55
    const-string p2, "ExternalTextureConverter"

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setName(Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object p2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    new-instance v1, Lcom/google/mediapipe/components/ExternalTextureConverter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/components/ExternalTextureConverter;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 74
    iget-object p2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->start()V

    .line 76
    :try_start_0
    iget-object p2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->waitUntilReady()Z

    move-result p2

    if-nez p2, :cond_1

    .line 80
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 84
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

    .line 99
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p1, v0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 100
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    return-void

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->quitSafely()Z

    .line 102
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 94
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

    .line 95
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentContext",
            "texture",
            "targetWidth",
            "targetHeight"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 181
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method


# virtual methods
.method public addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->addConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->quitSafely()Z

    .line 258
    :try_start_0
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 262
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

    .line 263
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->getInternalSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$new$0$com-google-mediapipe-components-ExternalTextureConverter(Ljava/lang/Object;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    monitor-enter p1

    .line 69
    :try_start_0
    iput-object p3, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->startupException:Ljava/lang/Throwable;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 71
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method synthetic lambda$setSurfaceTexture$1$com-google-mediapipe-components-ExternalTextureConverter(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method synthetic lambda$setSurfaceTextureAndAttachToGLContext$2$com-google-mediapipe-components-ExternalTextureConverter(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method protected makeRenderThread(Ljavax/microedition/khronos/egl/EGLContext;I)Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;
    .locals 0
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

    .line 268
    new-instance p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    return-object p0
.end method

.method public removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->removeConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
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

    .line 142
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setBufferPoolMaxSize(I)V

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

    .line 125
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setBufferPoolSize(I)V

    return-void
.end method

.method public setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .line 241
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
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

    .line 225
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setDestinationSize(II)V

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

    .line 152
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setFlipY(Z)V

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

    .line 162
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setRotation(I)V

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

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ExternalTextureConverter: setSurfaceTexture dimensions cannot be zero"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {v0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/mediapipe/components/ExternalTextureConverter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/components/ExternalTextureConverter;Landroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V
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

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ExternalTextureConverter: setSurfaceTexture dimensions cannot be zero"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    .line 235
    invoke-virtual {v0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/mediapipe/components/ExternalTextureConverter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/components/ExternalTextureConverter;Landroid/graphics/SurfaceTexture;II)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 171
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setTimestampOffsetNanos(J)V

    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 192
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter;->thread:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
