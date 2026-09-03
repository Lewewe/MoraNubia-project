.class Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;
.super Ljava/lang/Object;
.source "SolutionGlSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;->this$0:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;-><init>(Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 120
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;->this$0:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;

    .line 121
    invoke-virtual {p3}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView$DummyHolderCallback;->this$0:Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;

    .line 122
    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/SolutionGlSurfaceView;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 117
    const-string p1, "main surfaceChanged. width: %d height: %d glViewWidth: %d glViewHeight: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 115
    const-string p1, "SolutionGlSurfaceView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 110
    const-string p0, "SolutionGlSurfaceView"

    const-string p1, "main surfaceCreated"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 127
    const-string p0, "SolutionGlSurfaceView"

    const-string p1, "main surfaceDestroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
