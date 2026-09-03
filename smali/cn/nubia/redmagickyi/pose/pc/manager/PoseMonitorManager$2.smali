.class Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;
.super Ljava/lang/Object;
.source "PoseMonitorManager.java"

# interfaces
.implements Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startCameraDevice(ZLcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

.field final synthetic val$startCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;->val$startCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraStarted(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;->this$0:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;->val$startCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;

    invoke-static {v0, p1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->access$1100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;Landroid/graphics/SurfaceTexture;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V

    return-void
.end method
