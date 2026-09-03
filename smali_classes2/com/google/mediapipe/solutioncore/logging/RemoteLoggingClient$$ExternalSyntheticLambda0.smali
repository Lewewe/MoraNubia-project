.class public final synthetic Lcom/google/mediapipe/solutioncore/logging/RemoteLoggingClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {p1}, Lcom/google/mediapipe/solutioncore/logging/RemoteLoggingClient;->$r8$lambda$Es2TZb3Asy06IKufO27zBjJ7Imw(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)[B

    move-result-object p0

    return-object p0
.end method
