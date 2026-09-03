.class Lcn/nubia/redmagickyi/util/CameraPreviewController$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/CameraPreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$1;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$1;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$200(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 72
    const-string p0, "CameraPreviewController"

    const-string p1, "Camera open failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$1;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$002(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$1;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$100(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    return-void
.end method
