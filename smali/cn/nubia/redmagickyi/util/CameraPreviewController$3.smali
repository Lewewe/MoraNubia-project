.class Lcn/nubia/redmagickyi/util/CameraPreviewController$3;
.super Ljava/lang/Object;
.source "CameraPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/CameraPreviewController;->resize()V
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

    .line 173
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$500(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getMeasuredWidth()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    int-to-float v2, v0

    const v3, 0x3fb7a6f5

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2, v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$600(Lcn/nubia/redmagickyi/util/CameraPreviewController;II)Landroid/util/Size;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$402(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/util/Size;)Landroid/util/Size;

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$500(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$400(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$400(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->access$500(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
