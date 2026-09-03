.class Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;
.super Lcom/google/mediapipe/framework/AppTextureFrame;
.source "LiveExternalTextureConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoolTextureFrame"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;->this$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    .line 401
    invoke-direct {p0, p2, p3, p4}, Lcom/google/mediapipe/framework/AppTextureFrame;-><init>(III)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/google/mediapipe/framework/AppTextureFrame;->release()V

    .line 411
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;->this$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->poolFrameReleased(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    return-void
.end method

.method public release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .locals 0

    .line 405
    invoke-super {p0, p1}, Lcom/google/mediapipe/framework/AppTextureFrame;->release(Lcom/google/mediapipe/framework/GlSyncToken;)V

    .line 406
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;->this$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->poolFrameReleased(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    return-void
.end method
