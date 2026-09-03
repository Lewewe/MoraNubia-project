.class public Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;
.super Ljava/lang/Object;
.source "Camera2BackgroundUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraUtil"


# instance fields
.field private final CAPTURE_DELAY_TIME_LONG:J

.field private callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private cameraCallBack:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;

.field private cameraId:I

.field private cameraManager:Landroid/hardware/camera2/CameraManager;

.field private captureSessionStateCallBack:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private context:Landroid/content/Context;

.field private enableCameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imageHeight:I

.field private imageReader:Landroid/media/ImageReader;

.field private imageWidth:I

.field private imgOutputSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private isCameraDoing:Z

.field private isInitOk:Z

.field private isSessionClosed:Z

.field private isTakedPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSaveFileTime:J

.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mFlashSupported:Z

.field private mPreviewOutputSize:Landroid/util/Size;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private needSetOrientation:I

.field private recordSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private request:Landroid/hardware/camera2/CaptureRequest;

.field private service:Ljava/util/concurrent/ExecutorService;

.field protected final stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private uBuffer:Ljava/nio/ByteBuffer;

.field private vBuffer:Ljava/nio/ByteBuffer;

.field private yBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;)V
    .locals 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4b0

    .line 49
    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->CAPTURE_DELAY_TIME_LONG:J

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isTakedPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->needSetOrientation:I

    .line 64
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isInitOk:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isSessionClosed:Z

    .line 66
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraDoing:Z

    .line 68
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mFlashSupported:Z

    const-wide/16 v2, 0x0

    .line 75
    iput-wide v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->lastSaveFileTime:J

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 142
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 284
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$4;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->captureSessionStateCallBack:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 164
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->context:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraCallBack:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;

    .line 166
    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p1, :cond_0

    .line 169
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isInitOk:Z

    .line 170
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 171
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->getCameraInfo()V

    .line 172
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->setupImageReader()V

    .line 173
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->service:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->startPreview()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->takePicture()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->takePictureIndeed()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->yBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->uBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->vBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->saveFile(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraFront()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraDoing:Z

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageWidth:I

    return p1
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageHeight:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/media/Image;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->saveBuffer(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isSessionClosed:Z

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->request:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->request:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method private getBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 4

    .line 226
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 227
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 228
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int v2, p0, v0

    add-int/2addr v2, v1

    .line 229
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1, v2, v3, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int p1, p0, v1

    .line 232
    invoke-virtual {p2, v2, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {p3, v2, p0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v2
.end method

.method private getCameraDegree()I
    .locals 6

    .line 520
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->getOrientation()I

    move-result v0

    .line 521
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraFront()Z

    move-result p0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sensorOrientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    if-eqz p0, :cond_4

    move v4, v5

    :cond_4
    return v4

    :cond_5
    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    return v2
.end method

.method private isCameraFront()Z
    .locals 1

    .line 538
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCameraError(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraCallBack:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;->onErr(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraDoing:Z

    return-void
.end method

.method private openCamera()V
    .locals 5

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openCamera:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraDoing:Z

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->context:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v0, "\u6743\u9650\u4e0d\u8db3"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 251
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->start(Landroid/content/Context;)V

    .line 252
    const-string/jumbo v0, "\u6253\u5f00\u76f8\u673a\u6210\u529f\uff01"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6253\u5f00\u76f8\u673a\u5931\u8d25-Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    const-string/jumbo v0, "\u6253\u5f00\u76f8\u673a\u5931\u8d25"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveBuffer(Landroid/media/Image;)V
    .locals 6

    .line 199
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x0

    .line 200
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 201
    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x2

    .line 202
    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 204
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 205
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 207
    invoke-direct {p0, v1, v2, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->getBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 208
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->yBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 210
    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->yBuffer:Ljava/nio/ByteBuffer;

    .line 212
    :cond_0
    invoke-static {p1, v0, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->yBuffer:Ljava/nio/ByteBuffer;

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->uBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 215
    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->uBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    add-int v0, v3, v5

    .line 217
    invoke-static {p1, v0, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->uBuffer:Ljava/nio/ByteBuffer;

    .line 218
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->vBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 220
    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->vBuffer:Ljava/nio/ByteBuffer;

    .line 222
    :cond_2
    invoke-static {p1, v3, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->vBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private saveFile(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58-IOException\uff1a"

    if-eqz p1, :cond_0

    .line 544
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_b

    .line 547
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->getBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->lastSaveFileTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->lastSaveFileTime:J

    .line 550
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 590
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 595
    throw p0

    :catch_1
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 598
    :try_start_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 603
    throw p0

    :catch_2
    :cond_5
    :goto_2
    if-eqz p3, :cond_8

    .line 606
    :try_start_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    .line 611
    throw p0

    .line 584
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    const-string v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_6

    .line 590
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    .line 595
    throw p0

    :catch_3
    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    .line 598
    :try_start_6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    .line 603
    throw p0

    :catch_4
    :cond_7
    :goto_5
    if-eqz p3, :cond_8

    .line 606
    :try_start_7
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p0

    .line 611
    throw p0

    :catch_5
    :cond_8
    :goto_6
    return-void

    :goto_7
    if-eqz p1, :cond_9

    .line 590
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p0

    .line 595
    throw p0

    :catch_6
    :cond_9
    :goto_8
    if-eqz p2, :cond_a

    .line 598
    :try_start_9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    .line 603
    throw p0

    :catch_7
    :cond_a
    :goto_9
    if-eqz p3, :cond_b

    .line 606
    :try_start_a
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception p0

    .line 611
    throw p0

    .line 612
    :catch_8
    :cond_b
    :goto_a
    throw p0

    :cond_c
    :goto_b
    if-eqz p1, :cond_d

    .line 590
    :try_start_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception p0

    .line 595
    throw p0

    :catch_9
    :cond_d
    :goto_c
    if-eqz p2, :cond_e

    .line 598
    :try_start_c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p0

    .line 603
    throw p0

    :catch_a
    :cond_e
    :goto_d
    if-eqz p3, :cond_f

    .line 606
    :try_start_d
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception p0

    .line 611
    throw p0

    :catch_b
    :cond_f
    :goto_e
    return-void
.end method

.method private setupImageReader()V
    .locals 4

    .line 178
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraFront()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x780

    goto :goto_0

    :cond_0
    const/16 v0, 0x500

    .line 179
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraFront()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x438

    goto :goto_1

    :cond_1
    const/16 v1, 0x2d0

    :goto_1
    const/16 v2, 0x23

    const/4 v3, 0x2

    .line 181
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageReader:Landroid/media/ImageReader;

    .line 183
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$3;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private startPreview()V
    .locals 5

    .line 265
    const-string v0, "startPreview"

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 271
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/Surface;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->captureSessionStateCallBack:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 276
    const-string/jumbo v2, "\u6355\u83b7\u5e27\u5931\u8d25"

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Camera\u83b7\u53d6\u6210\u529f\uff0c\u521b\u5efa\u5f55\u5236\u8bf7\u6c42\u6216\u6355\u83b7Session\u5931\u8d25"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private takePicture()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isTakedPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isTakedPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 331
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$5;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private takePictureIndeed()V
    .locals 5

    .line 344
    const-string v0, "takePicture"

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 349
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 357
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$6;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;)V

    .line 368
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "takePhoto Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const-string/jumbo v0, "\u62cd\u7167\u5931\u8d25"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCameraInfo()V
    .locals 14

    .line 470
    const-string v0, "---------------------------------------------------"

    const-string v1, "CameraUtil"

    .line 0
    const-string v2, "camera sensor orientation:"

    .line 470
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->enableCameraList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 471
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->getCameras()V

    .line 474
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget v4, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 476
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mFlashSupported:Z

    .line 478
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v4, :cond_2

    .line 480
    const-string p0, "Could not get configuration map."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_2
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 487
    array-length v3, v2

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_3

    aget v7, v2, v6

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u624b\u673a\u683c\u5f0f\u652f\u6301: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0x23

    .line 490
    invoke-virtual {v4, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    .line 491
    const-class v3, Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 492
    const-class v6, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    const/16 v7, 0x100

    .line 493
    invoke-virtual {v4, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 495
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->recordSizeList:Ljava/util/List;

    .line 496
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imgOutputSizes:Ljava/util/List;

    .line 498
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    array-length v7, v3

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v3, v8

    .line 500
    iget-object v10, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->recordSizeList:Ljava/util/List;

    new-instance v11, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mediaOutputSizes: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 503
    :cond_4
    array-length v3, v4

    move v7, v5

    :goto_3
    if-ge v7, v3, :cond_5

    aget-object v8, v4, v7

    .line 504
    iget-object v9, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imgOutputSizes:Ljava/util/List;

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jpegOutputSizes: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 507
    :cond_5
    array-length p0, v6

    move v3, v5

    :goto_4
    if-ge v3, p0, :cond_6

    aget-object v4, v6, v3

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewOutputSizes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 510
    :cond_6
    array-length p0, v2

    :goto_5
    if-ge v5, p0, :cond_7

    aget-object v3, v2, v5

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "yuvOutputSizes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 513
    :cond_7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "selectCamera Exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public getCameras()V
    .locals 8

    .line 429
    const-string v0, "-------------------------------------"

    const-string v1, "CameraUtil"

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v2, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->enableCameraList:Ljava/util/List;

    .line 432
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCameras:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    :try_start_1
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->enableCameraList:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 441
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getCameras CameraAccessException:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public getOutputSizeSelector()V
    .locals 0

    return-void
.end method

.method synthetic lambda$saveFile$0$cn-nubia-redmagickyi-morachat-main-utils-takephoto-Camera2BackgroundUtil([B)V
    .locals 13

    .line 0
    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58-IOException\uff1a"

    const/4 v1, 0x0

    .line 553
    :try_start_0
    new-instance v8, Landroid/graphics/YuvImage;

    iget v5, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageWidth:I

    iget v6, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageHeight:I

    const/4 v7, 0x0

    const/16 v4, 0x11

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 554
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageWidth:I

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->imageHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v8, v1, v2, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 556
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 557
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 558
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 559
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->getCameraDegree()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 560
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraFront()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 562
    invoke-virtual {v10, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 564
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v1, :cond_1

    .line 566
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 569
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraCallBack:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;->onTakePhotoOk(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 577
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    .line 571
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    const-string v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->onCameraError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    goto :goto_0

    :catch_2
    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_3
    if-eqz v1, :cond_3

    .line 577
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 580
    :catch_3
    :cond_3
    throw p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraCallBack:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 420
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->stopRecord()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->stopRecord()V

    .line 404
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->openCamera()V

    return-void
.end method

.method public startTakePicture(Z)V
    .locals 2

    .line 311
    const-string/jumbo v0, "\u62cd\u7167"

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->cameraId:I

    .line 315
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->stopRecord()V

    .line 316
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->setupImageReader()V

    .line 318
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraDoing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 319
    const-string/jumbo p1, "\u76f8\u673a\u4f7f\u7528\u4e2d..."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isTakedPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->takePicture()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isTakedPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->openCamera()V

    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 4

    const-string v0, "stopRecord-Exception:"

    .line 380
    const-string/jumbo v1, "\u505c\u6b62\u9884\u89c8\uff0c\u91ca\u653e\u8d44\u6e90"

    const-string v2, "CameraUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isSessionClosed:Z

    if-nez v3, :cond_0

    .line 383
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 384
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 385
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v1, 0x1

    .line 386
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isSessionClosed:Z

    .line 388
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    :cond_1
    const/4 v1, 0x0

    .line 390
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil;->isCameraDoing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->stop()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 392
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 395
    :goto_2
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->stop()V

    .line 396
    throw p0
.end method
