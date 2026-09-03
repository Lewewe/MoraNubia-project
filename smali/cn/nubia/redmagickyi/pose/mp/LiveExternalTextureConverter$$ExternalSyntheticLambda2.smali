.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$2:I

    iget p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->lambda$setSurfaceTexture$1$cn-nubia-redmagickyi-pose-mp-LiveExternalTextureConverter(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method
