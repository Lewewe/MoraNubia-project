.class Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;
.super Ljava/lang/Object;
.source "SolutionGlSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/egl/EGLContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;

.field final synthetic val$glContext:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic val$glMajorVersion:I


# direct methods
.method constructor <init>(Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;ILjavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$glMajorVersion",
            "val$glContext"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;->this$0:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;

    iput p2, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;->val$glMajorVersion:I

    iput-object p3, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;->val$glContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "egl",
            "display",
            "eglConfig"
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;->val$glMajorVersion:I

    const/16 v1, 0x3038

    const/16 v2, 0x3098

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;->val$glContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, p0, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "egl",
            "display",
            "context"
        }
    .end annotation

    .line 96
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglDestroyContext failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
