.class public final synthetic Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/solutioncore/CameraInput;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/solutioncore/CameraInput;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/solutioncore/CameraInput;

    iput p2, p0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onCameraStarted(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/solutioncore/CameraInput;

    iget v1, p0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/google/mediapipe/solutioncore/CameraInput$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/mediapipe/solutioncore/CameraInput;->lambda$start$0$com-google-mediapipe-solutioncore-CameraInput(IILandroid/graphics/SurfaceTexture;)V

    return-void
.end method
