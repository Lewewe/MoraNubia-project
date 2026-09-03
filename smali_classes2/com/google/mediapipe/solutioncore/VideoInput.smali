.class public Lcom/google/mediapipe/solutioncore/VideoInput;
.super Ljava/lang/Object;
.source "VideoInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;,
        Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoInput"


# instance fields
.field private audioVolume:F

.field private converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

.field private eglManager:Lcom/google/mediapipe/glutil/EglManager;

.field private final executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

.field private looping:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

.field private state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->IDLE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->looping:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iput v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->audioVolume:F

    .line 107
    invoke-static {p1}, Lcom/google/mediapipe/components/PermissionHelper;->checkAndRequestReadExternalStoragePermissions(Landroid/app/Activity;)V

    .line 108
    new-instance p1, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    const-string v1, "MediaPlayerThread"

    invoke-direct {p1, v1, v0}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    return-void
.end method

.method private createSurfaceTexture()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1, v1}, Lcom/google/mediapipe/glutil/EglManager;->createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 295
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v2, v0, v0}, Lcom/google/mediapipe/glutil/EglManager;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 296
    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 297
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 298
    aget v1, v2, v3

    iput v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->textureId:I

    .line 299
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->textureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 300
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v1}, Lcom/google/mediapipe/glutil/EglManager;->makeNothingCurrent()V

    .line 301
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {p0, v0}, Lcom/google/mediapipe/glutil/EglManager;->releaseSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V

    return-void
.end method

.method private destorySurfaceTexture()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1, v1}, Lcom/google/mediapipe/glutil/EglManager;->createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 310
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v2, v0, v0}, Lcom/google/mediapipe/glutil/EglManager;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 311
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 312
    iget v2, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->textureId:I

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 313
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v1}, Lcom/google/mediapipe/glutil/EglManager;->makeNothingCurrent()V

    .line 314
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v1, v0}, Lcom/google/mediapipe/glutil/EglManager;->releaseSurface(Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/google/mediapipe/components/ExternalTextureConverter;->close()V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance v1, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda5;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->looping:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 286
    iput v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->audioVolume:F

    return-void
.end method

.method synthetic lambda$close$8$com-google-mediapipe-solutioncore-VideoInput()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 277
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->END:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/google/mediapipe/solutioncore/VideoInput;->destorySurfaceTexture()V

    .line 281
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->release()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    :cond_1
    return-void
.end method

.method synthetic lambda$pause$5$com-google-mediapipe-solutioncore-VideoInput()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STARTED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PAUSED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-ne v0, v1, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 235
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PAUSED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    :cond_1
    return-void
.end method

.method synthetic lambda$resume$6$com-google-mediapipe-solutioncore-VideoInput()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PAUSED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 246
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STARTED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    :cond_0
    return-void
.end method

.method synthetic lambda$start$0$com-google-mediapipe-solutioncore-VideoInput()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PREPARED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 197
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STARTED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    :cond_0
    return-void
.end method

.method synthetic lambda$start$1$com-google-mediapipe-solutioncore-VideoInput(IILandroid/media/MediaPlayer;)V
    .locals 3

    .line 177
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 177
    invoke-virtual {p3, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 180
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 181
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v2, v0, v1

    cmpl-float v2, v2, p3

    if-lez v2, :cond_0

    mul-float/2addr v1, p3

    float-to-int p1, v1

    :cond_0
    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    div-float/2addr v0, p3

    float-to-int p2, v0

    .line 191
    :goto_0
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/mediapipe/components/ExternalTextureConverter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 192
    sget-object p1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PREPARED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 193
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance p2, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda6;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$start$2$com-google-mediapipe-solutioncore-VideoInput(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 205
    const-string p2, "Error during mediaPlayer initialization. what: %s extra: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 203
    const-string p2, "VideoInput"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance p2, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method synthetic lambda$start$3$com-google-mediapipe-solutioncore-VideoInput(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 213
    sget-object p1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PLAYBACK_COMPLETE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 214
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance v0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {p1, v0}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$start$4$com-google-mediapipe-solutioncore-VideoInput(IILandroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->IDLE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->END:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 173
    iget-boolean v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->looping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 174
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->audioVolume:F

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 175
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda7;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;II)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 201
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda8;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 211
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda9;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 217
    :try_start_0
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 218
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Landroid/view/Surface;

    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 219
    sget-object p1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PREPARING:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    .line 220
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 222
    const-string p1, "VideoInput"

    const-string p2, "Failed to start MediaPlayer:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method synthetic lambda$stop$7$com-google-mediapipe-solutioncore-VideoInput()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PREPARED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STARTED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PAUSED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->PLAYBACK_COMPLETE:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    sget-object v1, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STOPPED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    if-ne v0, v1, :cond_1

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 262
    sget-object v0, Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;->STOPPED:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->state:Lcom/google/mediapipe/solutioncore/VideoInput$MediaPlayerState;

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance v1, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance v1, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda3;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looping"
        }
    .end annotation

    .line 127
    iput-boolean p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->looping:Z

    return-void
.end method

.method public setNewFrameListener(Lcom/google/mediapipe/components/TextureFrameConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioVolume"
        }
    .end annotation

    .line 136
    iput p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->audioVolume:F

    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/net/Uri;Ljavax/microedition/khronos/egl/EGLContext;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "videoUri",
            "sharedContext",
            "displayWidth",
            "displayHeight"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/google/mediapipe/components/PermissionHelper;->readExternalStoragePermissionsGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/google/mediapipe/glutil/EglManager;

    invoke-direct {v0, p3}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->eglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 164
    invoke-direct {p0}, Lcom/google/mediapipe/solutioncore/VideoInput;->createSurfaceTexture()V

    .line 165
    new-instance v0, Lcom/google/mediapipe/components/ExternalTextureConverter;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1}, Lcom/google/mediapipe/components/ExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->converter:Lcom/google/mediapipe/components/ExternalTextureConverter;

    .line 166
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->newFrameListener:Lcom/google/mediapipe/components/TextureFrameConsumer;

    invoke-virtual {v0, p3}, Lcom/google/mediapipe/components/ExternalTextureConverter;->setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    .line 167
    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance v6, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;IILandroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {p3, v6}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 159
    :cond_1
    new-instance p0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 160
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result p1

    const-string p2, "newFrameListener is not set."

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput;->executor:Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;

    new-instance v1, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/solutioncore/VideoInput$SingleThreadHandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
