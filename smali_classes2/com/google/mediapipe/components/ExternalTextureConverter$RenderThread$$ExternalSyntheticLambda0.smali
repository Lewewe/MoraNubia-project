.class public final synthetic Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;

    invoke-static {p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->lambda$poolFrameReleased$1(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    return-void
.end method
