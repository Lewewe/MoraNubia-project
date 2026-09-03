.class Lcn/nubia/redmagickyi/util/CameraPreviewController$6;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/CameraPreviewController;->takePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

.field final synthetic val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 290
    const-string v0, "CameraPreviewController"

    const-string v1, "Camera perview active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 296
    const-string v0, "CameraPreviewController"

    const-string v1, "Camera perview configurequeue empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 284
    const-string p1, "CameraPreviewController"

    const-string v0, "Camera perview configure failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$200(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 269
    const-string v0, "CameraPreviewController"

    const-string v1, "Camera perview configure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$000(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$702(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 275
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 276
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$700(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$800(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$Sub;->setRequest(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 302
    const-string v0, "CameraPreviewController"

    const-string v1, "Camera perview ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 2

    .line 308
    const-string v0, "CameraPreviewController"

    const-string v1, "Camera perview surface prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
