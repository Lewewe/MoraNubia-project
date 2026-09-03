.class Landroidx/camera/camera2/internal/TorchControl$1;
.super Ljava/lang/Object;
.source "TorchControl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/TorchControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/TorchControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/TorchControl;)V
    .locals 0

    .line 189
    iput-object p1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    .line 194
    iget-object v0, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v0, v0, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 196
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 200
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-boolean v0, v0, Landroidx/camera/camera2/internal/TorchControl;->mTargetTorchEnabled:Z

    if-ne p1, v0, :cond_1

    .line 201
    iget-object p1, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 202
    iget-object p0, p0, Landroidx/camera/camera2/internal/TorchControl$1;->this$0:Landroidx/camera/camera2/internal/TorchControl;

    iput-object v0, p0, Landroidx/camera/camera2/internal/TorchControl;->mEnableTorchCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_1
    return v1
.end method
