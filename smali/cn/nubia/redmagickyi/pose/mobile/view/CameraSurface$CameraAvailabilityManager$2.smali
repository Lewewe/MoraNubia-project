.class Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;
.super Ljava/lang/Object;
.source "CameraSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->onError(ILandroid/hardware/Camera;)V
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

    .line 358
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 363
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;->onCameraRecreated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;->this$1:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->access$1000(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V

    :cond_0
    :goto_0
    return-void
.end method
