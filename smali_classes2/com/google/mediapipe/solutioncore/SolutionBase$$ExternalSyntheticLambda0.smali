.class public final synthetic Lcom/google/mediapipe/solutioncore/SolutionBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/mediapipe/framework/PacketListCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/solutioncore/OutputHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/solutioncore/OutputHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/solutioncore/SolutionBase$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/solutioncore/OutputHandler;

    return-void
.end method


# virtual methods
.method public final process(Ljava/util/List;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/SolutionBase$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/solutioncore/OutputHandler;

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/solutioncore/OutputHandler;->run(Ljava/util/List;)V

    return-void
.end method
