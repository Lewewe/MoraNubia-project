.class Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;
.super Lcom/google/mediapipe/framework/AppTextureFrame;
.source "ExternalTextureConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoolTextureFrame"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;


# direct methods
.method public constructor <init>(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "textureName",
            "width",
            "height"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;->this$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    .line 298
    invoke-direct {p0, p2, p3, p4}, Lcom/google/mediapipe/framework/AppTextureFrame;-><init>(III)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 309
    invoke-super {p0}, Lcom/google/mediapipe/framework/AppTextureFrame;->release()V

    .line 310
    iget-object v0, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;->this$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {v0, p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->poolFrameReleased(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    return-void
.end method

.method public release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncToken"
        }
    .end annotation

    .line 303
    invoke-super {p0, p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->release(Lcom/google/mediapipe/framework/GlSyncToken;)V

    .line 304
    iget-object p1, p0, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;->this$0:Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;

    invoke-virtual {p1, p0}, Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread;->poolFrameReleased(Lcom/google/mediapipe/components/ExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    return-void
.end method
