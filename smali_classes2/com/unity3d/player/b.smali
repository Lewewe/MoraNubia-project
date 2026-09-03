.class public final Lcom/unity3d/player/b;
.super Ljava/lang/Object;
.source "b.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/b$a1;
    }
.end annotation


# static fields
.field private static b:Landroid/hardware/camera2/CameraManager;

.field private static c:[Ljava/lang/String;

.field private static e:Ljava/util/concurrent/Semaphore;


# instance fields
.field private A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final B:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final C:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final D:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private a:Lcom/unity3d/player/d;

.field private d:Landroid/hardware/camera2/CameraDevice;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/util/Range;

.field private r:Landroid/media/ImageReader;

.field private s:Landroid/media/Image;

.field private t:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private u:Landroid/hardware/camera2/CameraCaptureSession;

.field private v:Ljava/lang/Object;

.field private w:I

.field private x:Landroid/graphics/SurfaceTexture;

.field private y:Landroid/view/Surface;

.field private z:Lcom/unity3d/player/b$a1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method protected constructor <init>(Lcom/unity3d/player/d;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/unity3d/player/b;->a:Lcom/unity3d/player/d;

    const/high16 v1, -0x40800000    # -1.0f

    .line 46
    iput v1, p0, Lcom/unity3d/player/b;->l:F

    .line 47
    iput v1, p0, Lcom/unity3d/player/b;->m:F

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/unity3d/player/b;->p:Z

    .line 52
    iput-object v0, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    .line 55
    iput-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Lcom/unity3d/player/b;->y:Landroid/view/Surface;

    .line 67
    sget-object v0, Lcom/unity3d/player/b$a1;->c:Lcom/unity3d/player/b$a1;

    iput-object v0, p0, Lcom/unity3d/player/b;->z:Lcom/unity3d/player/b$a1;

    .line 68
    new-instance v0, Lcom/unity3d/player/b$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/b$1;-><init>(Lcom/unity3d/player/b;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 84
    new-instance v0, Lcom/unity3d/player/b$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/b$2;-><init>(Lcom/unity3d/player/b;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->B:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 106
    new-instance v0, Lcom/unity3d/player/b$3;

    invoke-direct {v0, p0}, Lcom/unity3d/player/b$3;-><init>(Lcom/unity3d/player/b;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->C:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 130
    new-instance v0, Lcom/unity3d/player/b$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/b$4;-><init>(Lcom/unity3d/player/b;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->D:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 135
    iput-object p1, p0, Lcom/unity3d/player/b;->a:Lcom/unity3d/player/d;

    .line 136
    invoke-direct {p0}, Lcom/unity3d/player/b;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1

    .line 166
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/b;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Camera2: CameraAccessException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a([Landroid/util/Range;I)I
    .locals 10

    const/4 v0, -0x1

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v3, 0x0

    .line 590
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 591
    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 592
    aget-object v5, p0, v3

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v6, p1

    const v7, 0x3dcccccd    # 0.1f

    add-float v8, v6, v7

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    sub-float/2addr v6, v7

    int-to-float v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    return p1

    :cond_0
    sub-int v4, p1, v4

    .line 598
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    move v0, v3

    move-wide v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 605
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 607
    :cond_3
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static a([Landroid/util/Size;DD)Landroid/graphics/Rect;
    .locals 13

    move-object v0, p0

    const/4 v1, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v4, v1

    move v5, v4

    move v6, v5

    .line 572
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 573
    aget-object v7, v0, v4

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 574
    aget-object v8, v0, v4

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-double v9, v7

    div-double v9, p1, v9

    .line 576
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    int-to-double v11, v8

    div-double v11, p3, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpg-double v11, v9, v2

    if-gez v11, :cond_0

    move v5, v7

    move v6, v8

    move-wide v2, v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private a(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 560
    :try_start_0
    iput-object v1, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    .line 561
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 564
    iput-object v1, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    return-void

    :catchall_0
    move-exception p0

    .line 561
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Camera2: CameraAccessException "

    .line 404
    const-string v1, "Focus"

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 405
    iput-boolean p1, p0, Lcom/unity3d/player/b;->p:Z

    .line 406
    iget-object v1, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 409
    :try_start_1
    iget-object v2, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 410
    iget-object p1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "Regular"

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 412
    iget-object p1, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 414
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 419
    :cond_1
    const-string v0, "Cancel focus"

    if-ne p1, v0, :cond_3

    .line 420
    iget-object p1, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    monitor-enter p1

    .line 421
    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/unity3d/player/b;->j()V

    .line 425
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;
    .locals 3

    .line 193
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-nez p0, :cond_0

    .line 194
    const-string p0, "Camera2: configuration map is not available."

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v2, 0x23

    .line 198
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v2, p0

    if-eqz v2, :cond_1

    return-object p0

    .line 201
    :cond_1
    const-string p0, "Camera2: output sizes for YUV_420_888 format are not avialable."

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/unity3d/player/b;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/unity3d/player/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/unity3d/player/b;)Landroid/media/ImageReader;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$102(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/unity3d/player/b;)Landroid/util/Range;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->q:Landroid/util/Range;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/unity3d/player/b;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/unity3d/player/b;->j()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 34
    sget-object v0, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/unity3d/player/b;->a(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/player/b;)Lcom/unity3d/player/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->a:Lcom/unity3d/player/d;

    return-object p0
.end method

.method static synthetic access$500(Lcom/unity3d/player/b;)Landroid/media/Image;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->s:Landroid/media/Image;

    return-object p0
.end method

.method static synthetic access$502(Lcom/unity3d/player/b;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unity3d/player/b;->s:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic access$600(Lcom/unity3d/player/b;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/unity3d/player/b;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/unity3d/player/b;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$802(Lcom/unity3d/player/b;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/unity3d/player/b;)Landroid/view/Surface;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/unity3d/player/b;->y:Landroid/view/Surface;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    .line 140
    sget-object v0, Lcom/unity3d/player/b;->b:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    sput-object p0, Lcom/unity3d/player/b;->b:Landroid/hardware/camera2/CameraManager;

    .line 144
    :cond_0
    sget-object p0, Lcom/unity3d/player/b;->b:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    .line 315
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/b;->k:I

    if-lez v0, :cond_1

    .line 317
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 320
    iget-object v0, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float p1, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 321
    iput v2, p0, Lcom/unity3d/player/b;->n:I

    .line 322
    iget-object p1, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/unity3d/player/b;->o:I

    goto :goto_0

    .line 324
    :cond_0
    iput v2, p0, Lcom/unity3d/player/b;->o:I

    .line 325
    iget-object p1, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/unity3d/player/b;->n:I

    .line 328
    :goto_0
    iget-object p1, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/unity3d/player/b;->j:I

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/b;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/b;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v0
.end method

.method private static c(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 148
    sget-object v0, Lcom/unity3d/player/b;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/b;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unity3d/player/b;->c:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 153
    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/unity3d/player/b;->c:[Ljava/lang/String;

    .line 157
    :cond_0
    :goto_0
    sget-object p0, Lcom/unity3d/player/b;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;I)[I
    .locals 3

    const/4 v0, 0x0

    .line 210
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/b;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-static {p0}, Lcom/unity3d/player/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 220
    :cond_0
    array-length p1, p0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 222
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    .line 223
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 224
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 232
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->f:Landroid/os/HandlerThread;

    .line 233
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    return-void
.end method

.method private h()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/unity3d/player/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/b;->f:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/unity3d/player/b;->f:Landroid/os/HandlerThread;

    .line 243
    iput-object v0, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    iget-object p0, p0, Lcom/unity3d/player/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->interrupt()V

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: Interrupted while waiting for the background thread to finish "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 6

    const/4 v0, 0x6

    .line 380
    :try_start_0
    sget-object v1, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_0

    .line 381
    const-string p0, "Camera2: Timeout waiting to lock camera for closing."

    invoke-static {v2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 392
    :try_start_1
    sget-object v1, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    const-string v1, "Camera2: Timeout waiting to close camera."

    invoke-static {v2, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to close camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    .line 400
    sget-object p0, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catch_1
    move-exception p0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: Interrupted while trying to lock camera for closing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 13

    .line 431
    :try_start_0
    iget v0, p0, Lcom/unity3d/player/b;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/b;->l:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/b;->m:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lcom/unity3d/player/b;->p:Z

    .line 433
    iget-object v1, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/unity3d/player/b;->n:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/unity3d/player/b;->l:F

    mul-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 434
    iget-object v2, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/unity3d/player/b;->o:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    iget v2, p0, Lcom/unity3d/player/b;->m:F

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    mul-double/2addr v4, v8

    int-to-double v2, v3

    add-double/2addr v4, v2

    double-to-int v2, v4

    .line 435
    iget v3, p0, Lcom/unity3d/player/b;->j:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/b;->j:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 436
    iget v3, p0, Lcom/unity3d/player/b;->j:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/b;->j:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 437
    iget-object v3, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v5, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v12, Landroid/hardware/camera2/params/MeteringRectangle;

    iget v6, p0, Lcom/unity3d/player/b;->j:I

    sub-int v7, v1, v6

    sub-int v8, v2, v6

    mul-int/lit8 v9, v6, 0x2

    mul-int/lit8 v10, v6, 0x2

    const/16 v11, 0x3e7

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v12, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 438
    iget-object v1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 439
    iget-object v1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Regular"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 447
    iget-object v1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 461
    iget-object v0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Cancel focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final a(FF)Z
    .locals 1

    .line 334
    iget v0, p0, Lcom/unity3d/player/b;->k:I

    if-lez v0, :cond_2

    .line 335
    iget-boolean v0, p0, Lcom/unity3d/player/b;->p:Z

    if-nez v0, :cond_1

    .line 336
    iput p1, p0, Lcom/unity3d/player/b;->l:F

    .line 337
    iput p2, p0, Lcom/unity3d/player/b;->m:F

    .line 338
    iget-object p1, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    monitor-enter p1

    .line 339
    :try_start_0
    iget-object p2, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/b;->z:Lcom/unity3d/player/b$a1;

    sget-object v0, Lcom/unity3d/player/b$a1;->b:Lcom/unity3d/player/b$a1;

    if-eq p2, v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/unity3d/player/b;->k()V

    .line 343
    :cond_0
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 344
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x5

    .line 347
    const-string p1, "Camera2: Setting manual focus point already started."

    invoke-static {p0, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Landroid/content/Context;IIIII)Z
    .locals 9

    .line 253
    const-string v0, "Camera2: CameraAccessException "

    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/unity3d/player/b;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 259
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v4, v5, :cond_0

    .line 260
    const-string p0, "Camera2: only LEGACY hardware level is supported."

    invoke-static {v6, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v2

    .line 264
    :cond_0
    invoke-static {v3}, Lcom/unity3d/player/b;->a(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    if-eqz v5, :cond_5

    int-to-double v7, p3

    int-to-double p3, p4

    .line 265
    invoke-static {v4, v7, v8, p3, p4}, Lcom/unity3d/player/b;->a([Landroid/util/Size;DD)Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    .line 267
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/util/Range;

    if-eqz p3, :cond_4

    array-length p4, p3

    if-eqz p4, :cond_4

    .line 268
    invoke-static {p3, p5}, Lcom/unity3d/player/b;->a([Landroid/util/Range;I)I

    move-result p3

    .line 269
    new-instance p4, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p4, p5, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p4, p0, Lcom/unity3d/player/b;->q:Landroid/util/Range;

    .line 272
    :try_start_1
    sget-object p3, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {p3, v4, v5, p4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 273
    const-string p0, "Camera2: Timeout waiting to lock camera for opening."

    invoke-static {v6, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    return v2

    .line 283
    :cond_1
    :try_start_2
    sget-object p3, Lcom/unity3d/player/b;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Lcom/unity3d/player/b;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/unity3d/player/b;->B:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object p4, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {p3, p1, p2, p4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    :try_start_3
    sget-object p1, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, p2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 292
    const-string p1, "Camera2: Timeout waiting to open camera."

    invoke-static {v6, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v2

    .line 296
    :cond_2
    sget-object p1, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Camera2: Interrupted while waiting to open camera "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 301
    :goto_0
    iput p6, p0, Lcom/unity3d/player/b;->w:I

    .line 302
    invoke-direct {p0, v3}, Lcom/unity3d/player/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 303
    iget-object p0, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :catch_1
    move-exception p0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 286
    sget-object p0, Lcom/unity3d/player/b;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return v2

    :catch_2
    move-exception p0

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Camera2: Interrupted while trying to lock camera for opening "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v2

    .line 305
    :cond_4
    const-string p0, "Camera2: target FPS ranges are not avialable."

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :cond_5
    return v2

    :catch_3
    move-exception p0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return v2
.end method

.method public final b()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/unity3d/player/b;->e()V

    .line 360
    invoke-direct {p0}, Lcom/unity3d/player/b;->i()V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 362
    iput-object v0, p0, Lcom/unity3d/player/b;->y:Landroid/view/Surface;

    .line 363
    iput-object v0, p0, Lcom/unity3d/player/b;->x:Landroid/graphics/SurfaceTexture;

    .line 364
    iget-object v1, p0, Lcom/unity3d/player/b;->s:Landroid/media/Image;

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 366
    iput-object v0, p0, Lcom/unity3d/player/b;->s:Landroid/media/Image;

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 371
    iput-object v0, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/b;->h()V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 473
    iget-object v0, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    .line 475
    iget-object v2, p0, Lcom/unity3d/player/b;->C:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/unity3d/player/b;->s:Landroid/media/Image;

    .line 477
    iget v0, p0, Lcom/unity3d/player/b;->w:I

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/unity3d/player/b;->w:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/unity3d/player/b;->x:Landroid/graphics/SurfaceTexture;

    .line 479
    iget-object v2, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/b;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 480
    iget-object v0, p0, Lcom/unity3d/player/b;->x:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/unity3d/player/b;->D:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v3, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 481
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/b;->x:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/unity3d/player/b;->y:Landroid/view/Surface;

    .line 486
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/unity3d/player/b;->z:Lcom/unity3d/player/b$a1;

    sget-object v1, Lcom/unity3d/player/b$a1;->b:Lcom/unity3d/player/b$a1;

    if-ne v0, v1, :cond_3

    .line 489
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/b;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/b;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/b;->d:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/unity3d/player/b;->y:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    new-array v1, v1, [Landroid/view/Surface;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v1, v4, [Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/b;->r:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/unity3d/player/b$5;

    invoke-direct {v2, p0}, Lcom/unity3d/player/b$5;-><init>(Lcom/unity3d/player/b;)V

    iget-object v3, p0, Lcom/unity3d/player/b;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 521
    :cond_3
    :goto_1
    sget-object v0, Lcom/unity3d/player/b$a1;->a:Lcom/unity3d/player/b$a1;

    iput-object v0, p0, Lcom/unity3d/player/b;->z:Lcom/unity3d/player/b$a1;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "Camera2: CameraAccessException "

    .line 528
    iget-object v1, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 531
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 532
    sget-object v2, Lcom/unity3d/player/b$a1;->b:Lcom/unity3d/player/b$a1;

    iput-object v2, p0, Lcom/unity3d/player/b;->z:Lcom/unity3d/player/b$a1;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 534
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 538
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 4

    const-string v0, "Camera2: CameraAccessException "

    .line 542
    iget-object v1, p0, Lcom/unity3d/player/b;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 545
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 547
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/unity3d/player/b;->u:Landroid/hardware/camera2/CameraCaptureSession;

    .line 552
    sget-object v0, Lcom/unity3d/player/b$a1;->c:Lcom/unity3d/player/b$a1;

    iput-object v0, p0, Lcom/unity3d/player/b;->z:Lcom/unity3d/player/b$a1;

    .line 555
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
