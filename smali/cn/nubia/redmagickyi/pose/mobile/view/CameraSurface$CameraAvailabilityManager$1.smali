.class Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->registerAvailabilityCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCameraAvailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;->onCameraRecreated()V

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    .line 270
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCameraUnavailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;->onCameraUnavailable()V

    :cond_0
    return-void
.end method
