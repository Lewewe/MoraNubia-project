.class public Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SolutionGlSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/mediapipe/solutioncore/ImageSolutionResult;",
        ">",
        "Landroid/opengl/GLSurfaceView;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SolutionGlSurfaceView"


# instance fields
.field renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/microedition/khronos/egl/EGLContext;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "glContext",
            "glMajorVersion"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    invoke-direct {p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 83
    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;-><init>(Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    new-instance p1, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;-><init>(Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;ILjavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 101
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    const/16 p2, 0xde1

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setTextureTarget(I)V

    .line 102
    iget-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->setRenderMode(I)V

    const/16 p1, 0x8

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setRenderData(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "solutionResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setRenderData(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;Z)V

    return-void
.end method

.method public setRenderData(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;Z)V
    .locals 0
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

    .line 71
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    invoke-virtual {p0, p1, p2}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setRenderData(Lcom/google/mediapipe/solutioncore/ImageSolutionResult;Z)V

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

    .line 76
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setRenderInputImage(Z)V

    return-void
.end method

.method public setSolutionResultRenderer(Lcom/google/mediapipe/solutioncore/ResultGlRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultRenderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/solutioncore/ResultGlRenderer<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->renderer:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceViewRenderer;->setSolutionResultRenderer(Lcom/google/mediapipe/solutioncore/ResultGlRenderer;)V

    return-void
.end method
