.class public final synthetic Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/solutioncore/VideoInput;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/solutioncore/VideoInput;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda8;->f$0:Lcom/google/mediapipe/solutioncore/VideoInput;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/VideoInput$$ExternalSyntheticLambda8;->f$0:Lcom/google/mediapipe/solutioncore/VideoInput;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/mediapipe/solutioncore/VideoInput;->lambda$start$2$com-google-mediapipe-solutioncore-VideoInput(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
