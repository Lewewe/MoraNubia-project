.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/graphics/SurfaceTexture;

.field public final synthetic f$3:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;ZLandroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$0:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/SurfaceTexture;

    iput-object p4, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$3:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$0:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$2:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda3;->f$3:Landroid/view/Surface;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->lambda$startCamera$2$cn-nubia-redmagickyi-pose-mp-CameraXPreviewHelper(ZLandroid/graphics/SurfaceTexture;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
