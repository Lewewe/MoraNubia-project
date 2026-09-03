.class Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
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

    .line 142
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 146
    const-string p0, "CameraUtil"

    const-string/jumbo p1, "\u76f8\u673a\u53ef\u7528"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 152
    const-string p0, "CameraUtil"

    const-string/jumbo p1, "\u76f8\u673a\u4e0d\u53ef\u7528"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
