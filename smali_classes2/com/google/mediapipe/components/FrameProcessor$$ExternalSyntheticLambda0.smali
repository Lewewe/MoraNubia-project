.class public final synthetic Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/mediapipe/components/FrameProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;

    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/components/FrameProcessor;->lambda$setAsynchronousErrorListener$1(Landroid/os/Handler;Lcom/google/mediapipe/components/FrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V

    return-void
.end method
