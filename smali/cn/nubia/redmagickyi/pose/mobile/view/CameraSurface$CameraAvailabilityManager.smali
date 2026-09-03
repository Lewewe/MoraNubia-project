.class Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;
.super Ljava/lang/Object;
.source "CameraSurface.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraAvailabilityManager"
.end annotation


# static fields
.field private static final MSG_HANDLE_RECREATE:I = 0x1


# instance fields
.field private availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private handler:Landroid/os/Handler;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->handler:Landroid/os/Handler;

    .line 247
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->performStartPerview()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->registerAvailabilityCallback()V

    return-void
.end method

.method private performStartPerview()V
    .locals 1

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->unregisterAvailabilityCallback()V

    .line 293
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->startPerview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 295
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;->onCameraAvailable()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->registerAvailabilityCallback()V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerAvailabilityCallback()V
    .locals 2

    .line 251
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->unregisterAvailabilityCallback()V

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private startPerview()Z
    .locals 4

    .line 304
    const-string v0, "CameraSurface"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$302(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 306
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$400(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 310
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 312
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$502(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    .line 313
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 314
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$600(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 315
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$500(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$500(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$702(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;[B)[B

    .line 316
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 319
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$800(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 321
    :try_start_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    const v3, 0x8d65

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$902(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 322
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$900(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 324
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 327
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 328
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 329
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V

    .line 330
    const-string p0, "startPrview end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPrview error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private unregisterAvailabilityCallback()V
    .locals 1

    .line 280
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    if-eqz v0, :cond_1

    .line 284
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "preview  onError code is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSurface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 358
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance p2, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager$2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public performStopPerview()V
    .locals 1

    .line 340
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->unregisterAvailabilityCallback()V

    .line 344
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 346
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 347
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$CameraAvailabilityManager;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;->access$302(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 349
    :cond_1
    const-string p0, "CameraSurface"

    const-string v0, "stopPreview end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
