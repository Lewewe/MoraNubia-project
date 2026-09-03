.class Lcn/nubia/redmagickyi/util/CameraPreviewController$2;
.super Ljava/lang/Object;
.source "CameraPreviewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/CameraPreviewController;->initView()V
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

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 95
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$400(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$400(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, p2, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$300(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$200(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    return-void
.end method
