.class public Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;
.super Ljava/lang/Object;
.source "PoseMonitorManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;,
        Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;,
        Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;
    }
.end annotation


# static fields
.field private static final FLIP_FRAMES_VERTICALLY:Z = true

.field private static final TAG:Ljava/lang/String; = "PoseMonitorManager"


# instance fields
.field private isFaceCameraIDChanged:Z

.field private mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

.field private mContext:Landroid/app/Activity;

.field private mEglManager:Lcom/google/mediapipe/glutil/EglManager;

.field private mFaceLandmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

.field private mFrameTexture:Landroid/graphics/SurfaceTexture;

.field private mIsLocked:Z

.field private mLandmarkLeftHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field private mLandmarkRightHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field private mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

.field private mPose:Lcn/nubia/redmagickyi/util/Bodypose;

.field private mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field private mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

.field private mTextureConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

.field private mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

.field private mTmpFaceMarkX:F

.field private mTmpMarkLH:F

.field private mTmpMarkRH:F

.field private mTmpPoseMarkX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, "mediapipe_jni_redmagickyi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    const-string v0, "opencv_java3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/util/Bodypose;->getInstance()Lcn/nubia/redmagickyi/util/Bodypose;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpPoseMarkX:F

    iput v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpFaceMarkX:F

    iput v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpMarkLH:F

    iput v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpMarkRH:F

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mIsLocked:Z

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->isFaceCameraIDChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpFaceMarkX:F

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpFaceMarkX:F

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;Landroid/graphics/SurfaceTexture;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->onCameraStarted(Landroid/graphics/SurfaceTexture;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpPoseMarkX:F

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpPoseMarkX:F

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;IF)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseConfidence(IF)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLandmarkLeftHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpMarkLH:F

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpMarkLH:F

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLandmarkRightHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)F
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpMarkRH:F

    return p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTmpMarkRH:F

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFaceLandmarks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mIsLocked:Z

    return p0
.end method

.method private cameraTargetResolution()Landroid/util/Size;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private initEglManager()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/mediapipe/glutil/EglManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    :cond_0
    return-void
.end method

.method private onCameraStarted(Landroid/graphics/SurfaceTexture;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCameraStarted, isFaceCameraIDChanged = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->isFaceCameraIDChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseMonitorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameTexture:Landroid/graphics/SurfaceTexture;

    .line 444
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->isFaceOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 445
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->isFaceCameraIDChanged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 446
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->isFaceCameraIDChanged:Z

    .line 447
    invoke-interface {p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;->onFaceCameraIDChanged()[I

    move-result-object p2

    .line 448
    aget p1, p2, p1

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->onPreviewDisplaySurfaceChanged(II)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;->onFaceCameraIDUnchanged()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d0

    const/16 p2, 0x500

    .line 454
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->onPreviewDisplaySurfaceChanged(II)V

    :goto_0
    return-void
.end method

.method private onPreviewDisplaySurfaceChanged(II)V
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreviewDisplaySurfaceChanged, size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseMonitorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 497
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->computeDisplaySizeFromViewSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 498
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->isCameraRotated()Z

    move-result p2

    .line 499
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTextureConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_0
    if-eqz p2, :cond_1

    .line 502
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 499
    :goto_1
    invoke-virtual {v0, p0, v1, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method private setPoseConfidence(IF)V
    .locals 5

    .line 394
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->getPortLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->getLandLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v3, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_4

    .line 416
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {v4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 402
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 404
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 405
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 406
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 407
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v3, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 413
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearPoseScene()V
    .locals 2

    .line 512
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->stopTextureConverter()V

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->close()V

    .line 515
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    .line 517
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->release()V

    .line 519
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    :cond_1
    return-void
.end method

.method public closeCameraDevice()V
    .locals 0

    .line 506
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    if-eqz p0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->closeCamera()V

    :cond_0
    return-void
.end method

.method public getSurfaceCallback()Landroid/view/SurfaceHolder$Callback;
    .locals 0

    return-object p0
.end method

.method public initEnv(Landroid/app/Activity;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    .line 84
    new-instance p1, Lcn/nubia/redmagickyi/util/SensorHelper;

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/util/SensorHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    .line 85
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->enable()V

    .line 86
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->initializeNativeAssetManager(Landroid/content/Context;)Z

    return-object p0
.end method

.method synthetic lambda$switchFaceScene$5$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 2

    .line 252
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFaceLandmarks:Ljava/util/List;

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 254
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->getLandLock()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFaceLandmarks:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/util/Bodypose;->setFace3DIris(Ljava/util/List;)V

    .line 256
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mIsLocked:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 258
    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseConfidence(IF)V

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mIsLocked:Z

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$switchFaceScene$6$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 3

    .line 266
    invoke-static {}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 269
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "face_detections: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PoseMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidenceSaved(IF)V

    :cond_0
    return-void
.end method

.method synthetic lambda$switchPoseScene$0$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 8

    .line 126
    const-string v0, "PoseMonitorManager"

    .line 0
    const-string v1, "[TS:  "

    .line 126
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object v2

    .line 128
    :try_start_0
    invoke-static {v2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] No pose landmarks."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz p1, :cond_1

    .line 132
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPose3D33(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_0

    .line 135
    invoke-direct {p0, v5, v3}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseConfidence(IF)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v5}, Lcn/nubia/redmagickyi/util/Bodypose;->getSavedPoseConfidence(I)F

    move-result p1

    invoke-direct {p0, v5, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseConfidence(IF)V

    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 144
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPose3D33(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_3

    .line 147
    invoke-direct {p0, v5, v3}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseConfidence(IF)V

    goto :goto_1

    .line 149
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v5}, Lcn/nubia/redmagickyi/util/Bodypose;->getSavedPoseConfidence(I)F

    move-result p1

    invoke-direct {p0, v5, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseConfidence(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t Exception received - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$switchPoseScene$1$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 1

    .line 159
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setFace3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t Exception received - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PoseMonitorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$switchPoseScene$2$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 1

    .line 173
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 175
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLandmarkLeftHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz p1, :cond_0

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setHand3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t Exception received - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PoseMonitorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$switchPoseScene$3$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 1

    .line 187
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 189
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLandmarkRightHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz p1, :cond_0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setHand3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t Exception received - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PoseMonitorManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$switchPoseScene$4$cn-nubia-redmagickyi-pose-pc-manager-PoseMonitorManager(Lcom/google/mediapipe/framework/Packet;)V
    .locals 4

    .line 0
    const-string v0, "pose_detection: "

    .line 201
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 203
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->parseFrom([B)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 206
    const-string v2, "PoseMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidenceSaved(IF)V

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidenceSaved(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->stopPoseMonitor()V

    .line 525
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->closeCameraDevice()V

    .line 526
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->disable()V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    :cond_0
    return-void
.end method

.method public setPoseUnConfidence()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 567
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 569
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startCameraDevice(ZLcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V
    .locals 2

    .line 464
    const-string v0, "PoseMonitorManager"

    const-string v1, "startCameraDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    .line 467
    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;

    invoke-direct {v1, p0, p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$2;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->setOnCameraStartedListener(Lcom/google/mediapipe/components/CameraHelper$OnCameraStartedListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 474
    sget-object p1, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->FRONT:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/mediapipe/components/CameraHelper$CameraFacing;->BACK:Lcom/google/mediapipe/components/CameraHelper$CameraFacing;

    .line 475
    :goto_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mCameraXHelper:Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->cameraTargetResolution()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p2, v0, p1, v1, p0}, Lcn/nubia/redmagickyi/pose/mp/CameraXPreviewHelper;->startCamera(Landroid/app/Activity;Lcom/google/mediapipe/components/CameraHelper$CameraFacing;Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    return-void
.end method

.method public startPoseMonitor(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;)V
    .locals 9

    .line 281
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->stopPoseMonitor()V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPoseMonitor, mTimerTask is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseMonitorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v2, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 284
    new-instance v3, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;

    invoke-direct {v3, p0, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$1;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;)V

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public startTextureConverter()V
    .locals 3

    .line 423
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->initEglManager()V

    .line 424
    new-instance v0, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 426
    invoke-virtual {v1}, Lcom/google/mediapipe/glutil/EglManager;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTextureConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    const/4 v1, 0x1

    .line 427
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setFlipY(Z)V

    .line 428
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTextureConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    return-void
.end method

.method public stopPoseMonitor()V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopPoseMonitor, mTimer is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseMonitorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    :cond_0
    return-void
.end method

.method public stopTextureConverter()V
    .locals 0

    .line 432
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mTextureConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    if-eqz p0, :cond_0

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 548
    const-string p1, "PoseMonitorManager"

    const-string p2, "surfaceChanged: "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result p1

    if-eqz p1, :cond_0

    .line 550
    invoke-direct {p0, p3, p4}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->onPreviewDisplaySurfaceChanged(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 538
    const-string v0, "PoseMonitorManager"

    const-string v1, "surfaceCreated: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setSurface(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 556
    const-string p1, "PoseMonitorManager"

    const-string v0, "surfaceDestroyed: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mLiveCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;->getCurrentLiveType()I

    move-result p1

    if-eqz p1, :cond_0

    .line 558
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    if-eqz p0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setSurface(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public switchCameraId(ZLcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)Z
    .locals 2

    .line 479
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->isFaceCameraIDChanged:Z

    .line 483
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->stopTextureConverter()V

    .line 485
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 487
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startTextureConverter()V

    .line 490
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startCameraDevice(ZLcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V

    return v0
.end method

.method public switchFaceScene(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V
    .locals 8

    .line 217
    const-string v0, "PoseMonitorManager"

    const-string v1, "switchFaceScene"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 219
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->initEglManager()V

    .line 229
    new-instance v0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 232
    invoke-virtual {v1}, Lcom/google/mediapipe/glutil/EglManager;->getNativeContext()J

    move-result-wide v3

    const-string v6, "input_video"

    const-string v7, "input_video"

    const-string v5, "face_mesh_mobile_gpu.binarypb"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    .line 238
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object v0

    const/4 v1, 0x1

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setFlipY(Z)V

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/mediapipe/components/PermissionHelper;->checkAndRequestCameraPermissions(Landroid/app/Activity;)V

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v0

    .line 245
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v3, "num_faces"

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setInputSidePackets(Ljava/util/Map;)V

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "multi_face_landmarks"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "face_detections"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 274
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setFrameInterface(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V

    return-void
.end method

.method public switchPoseScene(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V
    .locals 8

    .line 97
    const-string v0, "PoseMonitorManager"

    const-string v1, "switchPoseScene"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 99
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->initEglManager()V

    .line 109
    new-instance v0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 112
    invoke-virtual {v1}, Lcom/google/mediapipe/glutil/EglManager;->getNativeContext()J

    move-result-wide v3

    const-string v6, "input_video"

    const-string v7, "input_video"

    const-string v5, "holistic_tracking_gpu.binarypb"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    .line 118
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setFlipY(Z)V

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/mediapipe/components/PermissionHelper;->checkAndRequestCameraPermissions(Landroid/app/Activity;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "pose_world_landmarks"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda3;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "face_landmarks"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda4;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "left_hand_landmarks"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda5;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "right_hand_landmarks"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$$ExternalSyntheticLambda6;-><init>(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;)V

    const-string v2, "pose_detection"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setFrameInterface(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V

    return-void
.end method
