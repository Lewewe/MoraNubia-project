.class public Lcn/nubia/redmagickyi/util/CameraPreviewController;
.super Ljava/lang/Object;
.source "CameraPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;
    }
.end annotation


# static fields
.field private static final PREVIEW_RATIO:F = 1.4347826f

.field private static final REQUEST_CAMERA_CODE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CameraPreviewController"


# instance fields
.field private childHandler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private mCallback:Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;

.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraID:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mPreviewMask:Landroid/view/View;

.field private mPreviewSize:Landroid/util/Size;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

.field private mainHandler:Landroid/os/Handler;

.field private stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/FloatSurfaceView;Landroid/view/View;Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "1"

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraID:Ljava/lang/String;

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/util/CameraPreviewController$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$1;-><init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    .line 79
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewMask:Landroid/view/View;

    .line 80
    iput-object p4, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCallback:Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;

    .line 81
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->takePreview()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->stopPreview()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->initCamera2()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/util/Size;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Lcn/nubia/redmagickyi/view/FloatSurfaceView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/util/CameraPreviewController;II)Landroid/util/Size;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->getBestSize(II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/util/CameraPreviewController;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->childHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getBestSize(II)Landroid/util/Size;
    .locals 6

    .line 211
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 212
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 213
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 215
    new-instance v1, Lcn/nubia/redmagickyi/util/CameraPreviewController$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$4;-><init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v1, p1

    move v2, p2

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 225
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 227
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-gt p2, v4, :cond_0

    .line 228
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v5, v4, v0

    if-gtz v5, :cond_0

    .line 232
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 233
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception p0

    move p1, v1

    move p2, v2

    goto :goto_1

    :catch_1
    move-exception p0

    .line 238
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, p1

    move v2, p2

    .line 240
    :cond_1
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private hasPermissions()Z
    .locals 1

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initCamera2()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->handlerThread:Landroid/os/HandlerThread;

    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->childHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mainHandler:Landroid/os/Handler;

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->hasPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCallback:Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;

    if-eqz p0, :cond_2

    const/16 v0, 0x64

    .line 117
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;->onRequestPermission(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->openZteCam()V

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCallback:Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 122
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;->onPermissionOprateComplete(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    .line 86
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v1, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$2;-><init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 103
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->initCamera2()V

    return-void
.end method

.method private openZteCam()V
    .locals 3

    .line 245
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setZOrderOnTop(Z)V

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->redmagic_call_preview_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->resize()V

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraID:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mainHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$Sub;->openZteCam(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    const-string p0, "CameraPreviewController"

    const-string v0, "open camera failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private stopPreview()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 139
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 141
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 143
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    return-void
.end method

.method private takePreview()V
    .locals 7

    .line 258
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 259
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 260
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Landroid/hardware/camera2/params/SessionConfiguration;

    new-array v1, v1, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcn/nubia/redmagickyi/util/CameraPreviewController$5;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$5;-><init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    new-instance v6, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;

    invoke-direct {v6, p0, v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$6;-><init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {v3, v5, v1, v4, v6}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->stopPreview()V

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->childHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 132
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->childHandler:Landroid/os/Handler;

    .line 133
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 153
    aget p2, p3, p1

    if-nez p2, :cond_0

    .line 154
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->openZteCam()V

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCallback:Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 156
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;->onPermissionOprateComplete(Z)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->resize()V

    .line 162
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mCallback:Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;

    if-eqz p0, :cond_1

    .line 163
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/CameraPreviewController$Callback;->onPermissionOprateComplete(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resize()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_preview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    new-instance v1, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/CameraPreviewController$3;-><init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    const v2, 0x3fb7a6f5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 185
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/util/CameraPreviewController;->getBestSize(II)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    .line 186
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoveable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setTranslationX(F)V

    .line 195
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewMask:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewMask:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mSurfaceView:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoveable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewMask:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_0
    return-void
.end method
