.class public Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;
.super Lcom/google/mediapipe/components/GlSurfaceViewRenderer;
.source "SolutionGlSurfaceViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/mediapipe/solutioncore/ImageSolutionResult;",
        ">",
        "Lcom/google/mediapipe/components/GlSurfaceViewRenderer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SolutionGlSurfaceViewRenderer"


# instance fields
.field private final nextSolutionResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private renderInputImage:Z

.field private resultGlRenderer:Lcom/google/mediapipe/solutioncore/ResultGlRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/solutioncore/ResultGlRenderer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->renderInputImage:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->nextSolutionResult:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl"
        }
    .end annotation

    .line 83
    iget-boolean p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->renderInputImage:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->renderFrame()Lcom/google/mediapipe/framework/TextureFrame;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x4000

    .line 86
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 87
    const-string p1, "glClear"

    invoke-static {p1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    const p1, 0x84c0

    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 89
    const-string p1, "glActiveTexture"

    invoke-static {p1}, Lcom/google/mediapipe/glutil/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    move-object p1, v0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->nextSolutionResult:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    .line 94
    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->calculateTextureBoundary()[F

    move-result-object v1

    const/16 v2, 0x10

    .line 95
    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 97
    aget v5, v1, v3

    const/4 v3, 0x1

    aget v6, v1, v3

    const/4 v3, 0x3

    aget v7, v1, v3

    const/4 v3, 0x2

    aget v8, v1, v3

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 106
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->resultGlRenderer:Lcom/google/mediapipe/solutioncore/ResultGlRenderer;

    invoke-interface {v1, v0, v2}, Lcom/google/mediapipe/solutioncore/ResultGlRenderer;->renderResult(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;[F)V

    .line 108
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->flush(Lcom/google/mediapipe/framework/TextureFrame;)V

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->releaseCachedTextureFrames()V

    :cond_2
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gl",
            "config"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/mediapipe/components/GlSurfaceViewRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 77
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->resultGlRenderer:Lcom/google/mediapipe/solutioncore/ResultGlRenderer;

    invoke-interface {p0}, Lcom/google/mediapipe/solutioncore/ResultGlRenderer;->setupRendering()V

    return-void
.end method

.method public setRenderData(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "solutionResult",
            "produceTextureFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->acquireInputTextureFrame()Lcom/google/mediapipe/framework/TextureFrame;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/google/mediapipe/framework/TextureFrame;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/google/mediapipe/framework/TextureFrame;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setFrameSize(II)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setNextFrame(Lcom/google/mediapipe/framework/TextureFrame;)V

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->produceAllTextureFrames()V

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->nextSolutionResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->releaseCachedTextureFrames()V

    :cond_1
    return-void
.end method

.method public setRenderInputImage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderInputImage"
        }
    .end annotation

    .line 45
    iput-boolean p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->renderInputImage:Z

    return-void
.end method

.method public setSolutionResultRenderer(Lcom/google/mediapipe/solutioncore/ResultGlRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultGlRenderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/solutioncore/ResultGlRenderer<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->resultGlRenderer:Lcom/google/mediapipe/solutioncore/ResultGlRenderer;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 116
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SurfaceTexture should not be used in MediaPipe Solution."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
