.class public Lcom/google/mediapipe/components/CameraXPreviewHelper;
.super Lcom/google/mediapipe/components/CameraHelper;
.source "CameraXPreviewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;
    }
.end annotation


# static fields
.field private static final ASPECT_PENALTY:D = 10000.0

.field private static final ASPECT_TOLERANCE:D = 0.25

.field private static final CLOCK_OFFSET_CALIBRATION_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraXPreviewHelper"

.field private static final TARGET_SIZE:Landroid/util/Size;


# instance fields
.field private camera:Landroidx/camera/core/Camera;

.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private cameraTimestampSource:I

.field private focalLengthPixels:F

.field private frameRotation:I

.field private frameSize:Landroid/util/Size;

.field private imageCapture:Landroidx/camera/core/ImageCapture;

.field private imageCaptureBuilder:Landroidx/camera/core/ImageCapture$Builder;

.field private imageCaptureExecutorService:Ljava/util/concurrent/ExecutorService;

.field private isImageCaptureEnabled:Z

.field private preview:Landroidx/camera/core/Preview;

.field private final renderExecutor:Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;

.field private textures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->TARGET_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lcom/google/mediapipe/components/CameraHelper;-><init>()V

    .line 104
    new-instance v0, Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;

    const-string v1, "RenderThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->renderExecutor:Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->textures:[I

    .line 120
    iput-boolean v2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->isImageCaptureEnabled:Z

    .line 122
    iput-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->focalLengthPixels:F

    .line 131
    iput v2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraTimestampSource:I

    return-void
.end method

.method private calculateFocalLengthInPixels()F
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 485
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 487
    iget-object v1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 488
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    .line 489
    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    div-float/2addr p0, v1

    return p0
.end method

.method private createSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 3

    .line 494
    new-instance v0, Lcom/google/mediapipe/glutil/EglManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 495
    invoke-virtual {v0, v1, v1}, Lcom/google/mediapipe/glutil/EglManager;->createOffscreenSurface(II)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    .line 496
    invoke-virtual {v0, v2, v2}, Lcom/google/mediapipe/glutil/EglManager;->makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 497
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->textures:[I

    const/4 v2, 0x0

    .line 498
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 499
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->textures:[I

    aget p0, p0, v2

    invoke-direct {v0, p0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    return-object v0
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;Ljava/lang/Integer;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "lensFacing"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 506
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 508
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 512
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 513
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    move-exception p0

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Accessing camera ID info got error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraXPreviewHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOffsetFromRealtimeTimestampSource()J
    .locals 14

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 445
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 447
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v11, v9, v5

    cmp-long v13, v11, v2

    if-gez v13, :cond_0

    add-long/2addr v5, v9

    const-wide/16 v0, 0x2

    .line 451
    div-long/2addr v5, v0

    sub-long/2addr v5, v7

    move-wide v0, v5

    move-wide v2, v11

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static getOffsetFromUnknownTimestampSource()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getOptimalViewSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 16
    .param p1    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetSize"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move-object/from16 v1, p0

    .line 372
    iget-object v1, v1, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 375
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 376
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 377
    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 388
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 387
    const-string v5, "Camera target size ratio: %f width: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 385
    const-string v5, "CameraXPreviewHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    array-length v4, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_3

    aget-object v9, v1, v8

    .line 391
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    sub-double v12, v10, v2

    .line 392
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    cmpl-double v14, v12, v14

    if-lez v14, :cond_1

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    const-wide v14, 0x40c3880000000000L    # 10000.0

    add-double/2addr v12, v14

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0x0

    .line 395
    :goto_1
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/util/Size;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v12, v14

    .line 400
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v14, v15, v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 398
    const-string v11, "Camera size candidate width: %d height: %d ratio: %f cost: %f"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 396
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-double v10, v12, v6

    if-gez v10, :cond_2

    move-object v0, v9

    move-wide v6, v12

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 411
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 409
    const-string v2, "Optimal camera size width: %d height: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v0
.end method

.method static synthetic lambda$startCamera$0(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 295
    invoke-interface {p0, p1}, Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;->onCameraStarted(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 12
    .param p4    # Landroid/graphics/SurfaceTexture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "lifecycleOwner",
            "cameraFacing",
            "surfaceTexture",
            "targetSize"
        }
    .end annotation

    move-object v1, p0

    .line 220
    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v9

    .line 222
    invoke-static {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v2

    .line 226
    :goto_0
    sget-object v3, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->FRONT:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    move-object v4, p3

    if-ne v4, v3, :cond_1

    move v0, v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, p1

    .line 229
    invoke-static {p1, v0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->getCameraCharacteristics(Landroid/content/Context;Ljava/lang/Integer;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, v1, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v0, p5

    .line 230
    invoke-direct {p0, v0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->getOptimalViewSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_2

    .line 234
    sget-object v0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->TARGET_SIZE:Landroid/util/Size;

    .line 241
    :cond_2
    new-instance v3, Landroid/util/Size;

    .line 242
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {v3, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 244
    new-instance v11, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v4, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/components/CameraXPreviewHelper;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/util/Size;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-interface {v10, v11, v9}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private updateCameraCharacteristics()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 470
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 471
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraTimestampSource:I

    .line 472
    invoke-direct {p0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->calculateFocalLengthInPixels()F

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->focalLengthPixels:F

    :cond_0
    return-void
.end method


# virtual methods
.method public computeDisplaySizeFromViewSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewSize"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    return-object p0
.end method

.method public getFocalLengthPixels()F
    .locals 0

    .line 458
    iget p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->focalLengthPixels:F

    return p0
.end method

.method public getFrameSize()Landroid/util/Size;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTimeOffsetToMonoClockNanos()J
    .locals 2

    .line 422
    iget p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraTimestampSource:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 425
    invoke-static {}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->getOffsetFromRealtimeTimestampSource()J

    move-result-wide v0

    return-wide v0

    .line 427
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->getOffsetFromUnknownTimestampSource()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCameraRotated()Z
    .locals 1

    .line 361
    iget p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameRotation:I

    rem-int/lit16 p0, p0, 0xb4

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$startCamera$1$com-google-mediapipe-components-CameraXPreviewHelper(ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 282
    invoke-virtual {p4}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getRotationDegrees()I

    move-result p4

    iput p4, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameRotation:I

    .line 283
    invoke-direct {p0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->updateCameraCharacteristics()V

    if-nez p1, :cond_0

    .line 289
    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->onCameraStartedListener:Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;

    if-eqz p0, :cond_1

    .line 294
    invoke-static {p3}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2}, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda4;-><init>(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;Landroid/graphics/SurfaceTexture;)V

    .line 295
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$startCamera$2$com-google-mediapipe-components-CameraXPreviewHelper(ZLandroid/graphics/SurfaceTexture;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Surface request result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "CameraXPreviewHelper"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->textures:[I

    if-eqz p0, :cond_0

    const/4 p4, 0x1

    const/4 v0, 0x0

    .line 307
    invoke-static {p4, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    if-nez p1, :cond_1

    .line 317
    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 319
    :cond_1
    invoke-virtual {p3}, Landroid/view/Surface;->release()V

    return-void
.end method

.method synthetic lambda$startCamera$3$com-google-mediapipe-components-CameraXPreviewHelper(ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/camera/core/SurfaceRequest;)V
    .locals 3

    .line 267
    invoke-virtual {p4}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    .line 272
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 270
    const-string v1, "Received surface request for resolution %dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "CameraXPreviewHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->createSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    .line 277
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->frameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 276
    invoke-virtual {p2, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 279
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->renderExecutor:Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;

    new-instance v2, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/components/CameraXPreviewHelper;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;)V

    invoke-virtual {p4, v0, v2}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    .line 299
    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 300
    const-string v0, "Providing surface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->renderExecutor:Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;

    new-instance v1, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/components/CameraXPreviewHelper;ZLandroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    invoke-virtual {p4, p3, v0, v1}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method synthetic lambda$startCamera$4$com-google-mediapipe-components-CameraXPreviewHelper(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/util/Size;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 247
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object p1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    new-instance p1, Landroidx/camera/core/Preview$Builder;

    invoke-direct {p1}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/camera/core/Preview$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/Preview$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->preview:Landroidx/camera/core/Preview;

    .line 259
    sget-object p1, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->FRONT:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    if-ne p3, p1, :cond_0

    .line 260
    sget-object p1, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    goto :goto_0

    .line 261
    :cond_0
    sget-object p1, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 264
    :goto_0
    iget-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->preview:Landroidx/camera/core/Preview;

    iget-object p3, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->renderExecutor:Lcom/google/mediapipe/components/CameraXPreviewHelper$SingleThreadHandlerExecutor;

    new-instance v0, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p4, p5, p6}, Lcom/google/mediapipe/components/CameraXPreviewHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/mediapipe/components/CameraXPreviewHelper;ZLandroid/graphics/SurfaceTexture;Landroid/content/Context;)V

    invoke-virtual {p2, p3, v0}, Landroidx/camera/core/Preview;->setSurfaceProvider(Ljava/util/concurrent/Executor;Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 325
    iget-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {p2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 328
    iget-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCaptureBuilder:Landroidx/camera/core/ImageCapture$Builder;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    .line 329
    invoke-virtual {p2}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object p2

    iput-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCapture:Landroidx/camera/core/ImageCapture;

    .line 330
    iget-object p5, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    const/4 p6, 0x2

    new-array p6, p6, [Landroidx/camera/core/UseCase;

    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->preview:Landroidx/camera/core/Preview;

    aput-object v0, p6, p3

    aput-object p2, p6, p4

    .line 331
    invoke-virtual {p5, p7, p1, p6}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->camera:Landroidx/camera/core/Camera;

    .line 333
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCaptureExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 334
    iput-boolean p4, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->isImageCaptureEnabled:Z

    goto :goto_1

    .line 336
    :cond_1
    iget-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    new-array p4, p4, [Landroidx/camera/core/UseCase;

    iget-object p5, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->preview:Landroidx/camera/core/Preview;

    aput-object p5, p4, p3

    invoke-virtual {p2, p7, p1, p4}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->camera:Landroidx/camera/core/Camera;

    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 249
    instance-of p1, p0, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_2

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 252
    :cond_2
    const-string p1, "CameraXPreviewHelper"

    const-string p2, "Unable to get ProcessCameraProvider: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public startCamera(Landroid/app/Activity;Landroidx/camera/core/ImageCapture$Builder;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 6
    .param p2    # Landroidx/camera/core/ImageCapture$Builder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/SurfaceTexture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "imageCaptureBuilder",
            "cameraFacing",
            "surfaceTexture",
            "targetSize"
        }
    .end annotation

    .line 190
    iput-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCaptureBuilder:Landroidx/camera/core/ImageCapture$Builder;

    .line 191
    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    return-void
.end method

.method public startCamera(Landroid/app/Activity;Landroidx/camera/core/ImageCapture$Builder;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/util/Size;)V
    .locals 0
    .param p2    # Landroidx/camera/core/ImageCapture$Builder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "imageCaptureBuilder",
            "cameraFacing",
            "targetSize"
        }
    .end annotation

    .line 171
    iput-object p2, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCaptureBuilder:Landroidx/camera/core/ImageCapture$Builder;

    .line 172
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/util/Size;)V

    return-void
.end method

.method public startCamera(Landroid/app/Activity;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p3    # Landroid/graphics/SurfaceTexture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "cameraFacing",
            "surfaceTexture"
        }
    .end annotation

    .line 140
    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    sget-object v5, Lcom/google/mediapipe/components/CameraXPreviewHelper;->TARGET_SIZE:Landroid/util/Size;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    return-void
.end method

.method public startCamera(Landroid/app/Activity;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 6
    .param p3    # Landroid/graphics/SurfaceTexture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "cameraFacing",
            "surfaceTexture",
            "targetSize"
        }
    .end annotation

    .line 154
    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    return-void
.end method

.method public startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/util/Size;)V
    .locals 6
    .param p4    # Landroid/util/Size;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "lifecycleOwner",
            "cameraFacing",
            "targetSize"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/components/CameraXPreviewHelper;->startCamera(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    return-void
.end method

.method public takePicture(Ljava/io/File;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "onImageSavedCallback"
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->isImageCaptureEnabled:Z

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    invoke-direct {v0, p1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCapture:Landroidx/camera/core/ImageCapture;

    iget-object p0, p0, Lcom/google/mediapipe/components/CameraXPreviewHelper;->imageCaptureExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1, p0, p2}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    :cond_0
    return-void
.end method
