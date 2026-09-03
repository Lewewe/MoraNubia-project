.class public final synthetic Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/solutioncore/VideoInput;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/solutioncore/VideoInput;IILandroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$0:Lcom/google/mediapipe/solutioncore/VideoInput;

    iput p2, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$4:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$0:Lcom/google/mediapipe/solutioncore/VideoInput;

    iget v1, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$3:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda4;->f$4:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/mediapipe/solutioncore/VideoInput;->lambda$start$4$com-google-mediapipe-solutioncore-VideoInput(IILandroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method
