.class public final synthetic Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/components/CameraXPreviewHelper;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$2:Landroid/util/Size;

.field public final synthetic f$3:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/graphics/SurfaceTexture;

.field public final synthetic f$6:Landroid/content/Context;

.field public final synthetic f$7:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/components/CameraXPreviewHelper;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/util/Size;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$0:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    iput-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$2:Landroid/util/Size;

    iput-object p4, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$3:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    iput-boolean p5, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$4:Z

    iput-object p6, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$5:Landroid/graphics/SurfaceTexture;

    iput-object p7, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$6:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$7:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$0:Lcom/google/mediapipe/components/CameraXPreviewHelper;

    iget-object v1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$2:Landroid/util/Size;

    iget-object v3, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$3:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    iget-boolean v4, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$4:Z

    iget-object v5, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$5:Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$6:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;->f$7:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual/range {v0 .. v7}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->lambda$startCamera$4$com-google-mediapipe-components-CameraXPreviewHelper(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/util/Size;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
