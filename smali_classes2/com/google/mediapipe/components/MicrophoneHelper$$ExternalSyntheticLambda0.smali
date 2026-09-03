.class public final synthetic Lcom/google/mediapipe/components/MicrophoneHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/components/MicrophoneHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/components/MicrophoneHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/components/MicrophoneHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/components/MicrophoneHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/mediapipe/components/MicrophoneHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/components/MicrophoneHelper;

    invoke-virtual {p0}, Lcom/google/mediapipe/components/MicrophoneHelper;->lambda$setupAudioRecord$0$com-google-mediapipe-components-MicrophoneHelper()V

    return-void
.end method
