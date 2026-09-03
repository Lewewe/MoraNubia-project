.class Lcom/unity3d/player/b$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "b.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/b;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    const/4 p0, 0x6

    .line 516
    const-string p1, "Camera2: CaptureSession configuration failed."

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const-string v0, "Camera2: CameraAccessException "

    .line 494
    iget-object v1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {v1}, Lcom/unity3d/player/b;->access$100(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {v1}, Lcom/unity3d/player/b;->access$600(Lcom/unity3d/player/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {v2, p1}, Lcom/unity3d/player/b;->access$702(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :try_start_1
    iget-object p1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {p1}, Lcom/unity3d/player/b;->access$100(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/unity3d/player/b;->access$802(Lcom/unity3d/player/b;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 500
    iget-object p1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {p1}, Lcom/unity3d/player/b;->access$900(Lcom/unity3d/player/b;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {p1}, Lcom/unity3d/player/b;->access$800(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {v2}, Lcom/unity3d/player/b;->access$900(Lcom/unity3d/player/b;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {p1}, Lcom/unity3d/player/b;->access$800(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {v2}, Lcom/unity3d/player/b;->access$1000(Lcom/unity3d/player/b;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 505
    iget-object p1, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {p1}, Lcom/unity3d/player/b;->access$800(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {v3}, Lcom/unity3d/player/b;->access$1100(Lcom/unity3d/player/b;)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 506
    iget-object p0, p0, Lcom/unity3d/player/b$5;->this$0:Lcom/unity3d/player/b;

    invoke-static {p0}, Lcom/unity3d/player/b;->access$1200(Lcom/unity3d/player/b;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 508
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 511
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
