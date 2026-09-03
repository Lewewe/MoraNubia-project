.class public Lcom/google/mediapipe/glutil/GlThread;
.super Ljava/lang/Thread;
.source "GlThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlThread"

.field private static final THREAD_NAME:Ljava/lang/String; = "mediapipe.glutil.GlThread"


# instance fields
.field private doneStarting:Z

.field protected volatile eglManager:Lcom/google/mediapipe/glutil/EglManager;

.field protected eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field protected framebuffer:I

.field protected handler:Landroid/os/Handler;

.field protected looper:Landroid/os/Looper;

.field private final startLock:Ljava/lang/Object;

.field private startedSuccessfully:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentContext"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/mediapipe/glutil/GlThread;-><init>(Ljava/lang/Object;[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentContext",
            "additionalConfigAttributes"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 43
    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->handler:Landroid/os/Handler;

    .line 44
    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->looper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/mediapipe/glutil/GlThread;->framebuffer:I

    .line 66
    new-instance v0, Lcom/google/mediapipe/glutil/EglManager;

    invoke-direct {v0, p1, p2}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;[I)V

    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 67
    const-string p1, "mediapipe.glutil.GlThread"

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/glutil/GlThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindFramebuffer(III)V
    .locals 3
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

    .line 105
    iget p0, p0, Lcom/google/mediapipe/glutil/GlThread;->framebuffer:I

    const v0, 0x8d40

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p0, 0x8ce0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 106
    invoke-static {v0, p0, v1, p1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 112
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    const p1, 0x8cd5

    if-ne p0, p1, :cond_0

    .line 116
    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 117
    const-string p0, "glViewport"

    invoke-static {p0}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Framebuffer not complete, status="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createEglSurface()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/google/mediapipe/glutil/EglManager;->createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method protected createHandler()Landroid/os/Handler;
    .locals 0

    .line 214
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-object p0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/EglManager;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public getEglManager()Lcom/google/mediapipe/glutil/EglManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    return-object p0
.end method

.method public getFramebuffer()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/mediapipe/glutil/GlThread;->framebuffer:I

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public prepareGl()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->createEglSurface()Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 184
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/GlThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1, v1}, Lcom/google/mediapipe/glutil/EglManager;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/16 v0, 0xb71

    .line 186
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb44

    .line 187
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    .line 188
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 189
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 190
    aget v0, v1, v2

    iput v0, p0, Lcom/google/mediapipe/glutil/GlThread;->framebuffer:I

    return-void
.end method

.method public quitSafely()Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->looper:Landroid/os/Looper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    const/4 p0, 0x1

    return p0
.end method

.method public releaseGl()V
    .locals 3

    .line 195
    iget v0, p0, Lcom/google/mediapipe/glutil/GlThread;->framebuffer:I

    if-eqz v0, :cond_0

    .line 197
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 199
    iput v2, p0, Lcom/google/mediapipe/glutil/GlThread;->framebuffer:I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->makeNothingCurrent()V

    .line 203
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    iget-object v1, p0, Lcom/google/mediapipe/glutil/GlThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/glutil/EglManager;->releaseSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 123
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 124
    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->createHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/glutil/GlThread;->handler:Landroid/os/Handler;

    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/glutil/GlThread;->looper:Landroid/os/Looper;

    .line 127
    const-string v1, "GlThread"

    const-string v2, "Starting GL thread %s"

    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->prepareGl()V

    .line 130
    iput-boolean v0, p0, Lcom/google/mediapipe/glutil/GlThread;->startedSuccessfully:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 134
    iget-object v1, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_1
    iput-boolean v0, p0, Lcom/google/mediapipe/glutil/GlThread;->doneStarting:Z

    .line 136
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 137
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 141
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->looper:Landroid/os/Looper;

    .line 145
    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->releaseGl()V

    .line 146
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->release()V

    .line 148
    const-string v0, "GlThread"

    const-string v1, "Stopping GL thread %s"

    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 143
    iput-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->looper:Landroid/os/Looper;

    .line 145
    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->releaseGl()V

    .line 146
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->release()V

    .line 148
    const-string v0, "GlThread"

    const-string v2, "Stopping GL thread %s"

    invoke-virtual {p0}, Lcom/google/mediapipe/glutil/GlThread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    throw v1

    :catchall_1
    move-exception p0

    .line 137
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception v1

    .line 134
    iget-object v2, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_4
    iput-boolean v0, p0, Lcom/google/mediapipe/glutil/GlThread;->doneStarting:Z

    .line 136
    iget-object p0, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 137
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 138
    throw v1

    :catchall_3
    move-exception p0

    .line 137
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public waitUntilReady()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/mediapipe/glutil/GlThread;->doneStarting:Z

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/mediapipe/glutil/GlThread;->startLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 177
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-boolean p0, p0, Lcom/google/mediapipe/glutil/GlThread;->startedSuccessfully:Z

    return p0

    :catchall_0
    move-exception p0

    .line 177
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
