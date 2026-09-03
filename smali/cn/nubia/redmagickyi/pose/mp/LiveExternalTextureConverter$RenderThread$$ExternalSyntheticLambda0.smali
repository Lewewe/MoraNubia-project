.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->lambda$onFrameAvailable$0$cn-nubia-redmagickyi-pose-mp-LiveExternalTextureConverter$RenderThread(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
