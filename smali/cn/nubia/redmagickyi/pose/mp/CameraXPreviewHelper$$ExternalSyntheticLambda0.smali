.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/camera/core/Preview$SurfaceProvider;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/graphics/SurfaceTexture;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/SurfaceTexture;

    iput-object p4, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->lambda$startCamera$3$cn-nubia-redmagickyi-pose-mp-CameraXPreviewHelper(ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
