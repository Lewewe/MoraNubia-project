.class Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2BackgroundUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->takePictureIndeed()V
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

    .line 357
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 360
    const-string p1, "CameraUtil"

    const-string/jumbo p2, "\u62cd\u7167\u5b8c\u6210"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1300(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1400(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Ljava/nio/ByteBuffer;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1500(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1600(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 362
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->access$1700(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 363
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onStop()V

    :cond_0
    return-void
.end method
