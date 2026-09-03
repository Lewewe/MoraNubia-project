.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread;->lambda$poolFrameReleased$1(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$RenderThread$PoolTextureFrame;)V

    return-void
.end method
