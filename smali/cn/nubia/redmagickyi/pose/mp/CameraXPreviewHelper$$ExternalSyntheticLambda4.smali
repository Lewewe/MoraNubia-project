.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda4;->f$0:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda4;->f$0:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->lambda$startCamera$0(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
