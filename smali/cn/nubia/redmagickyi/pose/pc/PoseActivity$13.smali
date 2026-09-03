.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceCameraIDChanged()[I
    .locals 1

    .line 655
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public onFaceCameraIDUnchanged()V
    .locals 1

    .line 660
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method
