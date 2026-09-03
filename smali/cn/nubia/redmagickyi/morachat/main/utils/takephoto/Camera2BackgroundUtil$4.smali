.class Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2BackgroundUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 302
    const-string p0, "CameraUtil"

    const-string p1, "onConfigureFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 288
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$702(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 289
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$802(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Z)Z

    .line 290
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1000(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$902(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 292
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$700(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$900(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    const-string/jumbo v0, "\u5f00\u542f\u56fe\u50cf\u9884\u89c8\u5931\u8d25"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$200(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Ljava/lang/String;)V

    .line 297
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1100(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    return-void
.end method
