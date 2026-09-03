.class Landroidx/camera/camera2/internal/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/ZoomControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/ZoomControl;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 149
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 151
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 152
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object v0, p1, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 155
    iget-object p0, p0, Landroidx/camera/camera2/internal/ZoomControl$1;->this$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
