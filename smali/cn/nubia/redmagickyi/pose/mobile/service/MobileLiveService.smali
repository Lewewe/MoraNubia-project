.class public Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;
.super Landroid/app/Service;
.source "MobileLiveService.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;
.implements Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;
.implements Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;
.implements Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;
.implements Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;
.implements Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;


# static fields
.field private static final EXTRA_FACE_WINDOW_POSITION_X:Ljava/lang/String; = "EXTRA_FACE_WINDOW_POSITION_X"

.field private static final EXTRA_FACE_WINDOW_POSITION_Y:Ljava/lang/String; = "EXTRA_FACE_WINDOW_POSITION_Y"

.field private static final EXTRA_IS_LIVE_RELAUNCHING:Ljava/lang/String; = "EXTRA_IS_LIVE_RELAUNCHING"

.field private static final EXTRA_NEED_SHOW_FACE_WINDOW:Ljava/lang/String; = "EXTRA_NEED_SHOW_FACE_WINDOW"

.field private static final FLIP_FRAMES_VERTICALLY:Z = true

.field private static final MSG_RECREATE_SERVICE:I = 0x1

.field private static final MSG_UPDATE_ALL_WINDOW_ALPHA:I = 0x3

.field private static final MSG_UPDATE_ALL_WINDOW_SIZE:I = 0x4

.field private static final MSG_UPDATE_MAIN_WINDOW:I = 0x2

.field private static final PREF_MOBILE_LIVE_TEMP_EXTRA:Ljava/lang/String; = "pref_mobile_live_temp_extra"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private arSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

.field private cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

.field private cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

.field private displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private displayManager:Landroid/hardware/display/DisplayManager;

.field private faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

.field private faceWindowDefaultPosition:[I

.field private isMainWindowShown:Z

.field private isNeedShowFaceWindow:Ljava/lang/Boolean;

.field private liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

.field private liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

.field private mCameraPreviewOn:Z

.field private mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

.field private mCurrentLiveType:I

.field private mCurrentScene:Ljava/lang/String;

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

.field private mIsLocked:Z

.field private mLandmarkLeftHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field private mLandmarkRightHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field private mPose:Lcn/nubia/redmagickyi/util/Bodypose;

.field private mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field private mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

.field private mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

.field private mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

.field private mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

.field private mTmpFaceMarkX:F

.field private mTmpMarkLH:F

.field private mTmpMarkRH:F

.field private mTmpPoseMarkX:F

.field private mainHandler:Landroid/os/Handler;

.field private menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

.field private menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

.field private screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const-string v0, "mediapipe_jni_redmagickyi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    const-string v0, "opencv_java3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    const-string v0, "MobileLiveService"

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isMainWindowShown:Z

    .line 116
    invoke-static {}, Lcn/nubia/redmagickyi/util/Bodypose;->getInstance()Lcn/nubia/redmagickyi/util/Bodypose;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    .line 117
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->arSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    .line 118
    const-string v1, "camera"

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    const/4 v1, -0x1

    .line 119
    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentLiveType:I

    .line 120
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCameraPreviewOn:Z

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpPoseMarkX:F

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpFaceMarkX:F

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpMarkRH:F

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpMarkLH:F

    .line 126
    new-instance v0, Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/CPUBoostManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mIsLocked:Z

    .line 952
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$5;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1046
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$6;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;)Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Ljava/util/List;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFaceLandmarks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;)Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F
    .locals 0

    .line 83
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpFaceMarkX:F

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpFaceMarkX:F

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mLandmarkLeftHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F
    .locals 0

    .line 83
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpMarkLH:F

    return p0
.end method

.method static synthetic access$1302(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpMarkLH:F

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mLandmarkRightHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F
    .locals 0

    .line 83
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpMarkRH:F

    return p0
.end method

.method static synthetic access$1502(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpMarkRH:F

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->performStopSelf()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->closeFace()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/glutil/EglManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcom/google/mediapipe/glutil/EglManager;)Lcom/google/mediapipe/glutil/EglManager;
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Landroid/os/Handler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->saveMainWindowParams()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isMainWindowShown:Z

    return p0
.end method

.method static synthetic access$2502(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isMainWindowShown:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/util/SensorHelper;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Lcn/nubia/redmagickyi/util/SensorHelper;)Lcn/nubia/redmagickyi/util/SensorHelper;
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideFace()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;JZ)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->recreate(JZ)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I
    .locals 0

    .line 83
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentLiveType:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)F
    .locals 0

    .line 83
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpPoseMarkX:F

    return p0
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;F)F
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTmpPoseMarkX:F

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setPoseConfidence(IF)V

    return-void
.end method

.method private closeFace()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 374
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 377
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    .line 379
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    .line 381
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->release()V

    .line 383
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    :cond_2
    return-void
.end method

.method private getMainWindowDefaultSize()[I
    .locals 3

    .line 982
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_surface_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 984
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 985
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_surface_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_main_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 989
    :goto_0
    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private getSavedMainWindowParams()[I
    .locals 8

    .line 1028
    const-string v0, "(-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+)"

    .line 1029
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1030
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->arSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v1, "live_mobile_main_params"

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1032
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1034
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x2

    .line 1035
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x3

    .line 1036
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x4

    .line 1037
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x5

    .line 1038
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x6

    .line 1039
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x7

    .line 1040
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    filled-new-array/range {v1 .. v7}, [I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideFace()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, v1, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateSize(II)V

    .line 367
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz p0, :cond_1

    .line 368
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->switchWindowStyle(Z)V

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->arSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v1, "ar_image_item"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    .line 192
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getScenceType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentLiveType:I

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->arSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v1, "face_open"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCameraPreviewOn:Z

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initDataOnResume:  currentScene "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCameraPreviewOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileLiveService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initScene(Ljava/lang/String;)V
    .locals 9

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initScene: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->sendLiveImageTrack()V

    .line 389
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 392
    :cond_0
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 393
    const-string p0, "initScene: camera"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 395
    :cond_1
    invoke-static {p0}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->initializeNativeAssetManager(Landroid/content/Context;)Z

    .line 396
    new-instance p1, Lcom/google/mediapipe/glutil/EglManager;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/mediapipe/glutil/EglManager;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 398
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentLiveType:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_4

    .line 519
    new-instance p1, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 522
    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->getNativeContext()J

    move-result-wide v4

    const-string v7, "input_video"

    const-string v8, "input_video"

    const-string v6, "face_mesh_mobile_gpu.binarypb"

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    .line 527
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p1

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 529
    const-string v2, "num_faces"

    invoke-virtual {p1, v1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setInputSidePackets(Ljava/util/Map;)V

    .line 531
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda5;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "multi_face_landmarks"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 549
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda6;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "face_detections"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 560
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setFrameInterface(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V

    goto :goto_1

    .line 408
    :cond_3
    :goto_0
    new-instance p1, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    .line 411
    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->getNativeContext()J

    move-result-wide v4

    const-string v7, "input_video"

    const-string v8, "input_video"

    const-string v6, "holistic_tracking_gpu.binarypb"

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    .line 416
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "pose_world_landmarks"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 449
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "face_landmarks"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 463
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "left_hand_landmarks"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 477
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda3;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "right_hand_landmarks"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 492
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$$ExternalSyntheticLambda4;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-string v2, "pose_detection"

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V

    .line 508
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->setFrameInterface(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V

    .line 563
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p1

    .line 564
    invoke-virtual {p1, v1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setFlipY(Z)V

    .line 565
    new-instance p1, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mEglManager:Lcom/google/mediapipe/glutil/EglManager;

    invoke-virtual {v0}, Lcom/google/mediapipe/glutil/EglManager;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    .line 566
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setFlipY(Z)V

    .line 567
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setConsumer(Lcom/google/mediapipe/components/TextureFrameConsumer;)V

    .line 568
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->poseMonitor()V

    :goto_2
    return-void
.end method

.method public static isLiveRelaunching(Landroid/content/Context;)Z
    .locals 2

    .line 1157
    const-string v0, "pref_mobile_live_temp_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "EXTRA_IS_LIVE_RELAUNCHING"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private performStopSelf()V
    .locals 0

    .line 918
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->saveMainWindowParams()V

    .line 919
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideMenu()V

    .line 920
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideFace()V

    .line 921
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->stopSelf()V

    return-void
.end method

.method private poseMonitor()V
    .locals 8

    .line 572
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 575
    :cond_0
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 576
    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$3;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private recreate(JZ)V
    .locals 2

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform recreate, isNeedShowFaceWindow = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 928
    iput v1, v0, Landroid/os/Message;->what:I

    .line 929
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 930
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private registDisplayChangedListener()V
    .locals 2

    .line 935
    new-instance v0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    .line 936
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->StartScreenBrocastReceiver()V

    .line 937
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->setScreenOnStatusListener(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;)V

    .line 939
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 940
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private saveMainWindowParams()V
    .locals 6

    .line 996
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_3

    .line 997
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getMainWindowDefaultSize()[I

    move-result-object v0

    .line 998
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1000
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isAutoRotate()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 1003
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v2

    .line 1005
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    .line 1006
    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 1007
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1008
    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1013
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 1014
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 1016
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenDegrees()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1019
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->arSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "live_mobile_main_params"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private sendLiveImageTrack()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1129
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mora_live_name"

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    const-string v3, "mora_live"

    invoke-virtual {v0, v1, v3, v2, p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLiveRelaunching(Landroid/content/Context;Z)V
    .locals 2

    .line 1161
    const-string v0, "pref_mobile_live_temp_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1162
    const-string v0, "EXTRA_IS_LIVE_RELAUNCHING"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1163
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setPoseConfidence(IF)V
    .locals 5

    .line 646
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->getPortLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->getLandLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v3, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_4

    .line 668
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 653
    :cond_2
    iget v4, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentLiveType:I

    if-ne v4, v1, :cond_3

    .line 654
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 657
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 658
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v2, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    .line 659
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, v3, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    goto :goto_0

    .line 665
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidence(IF)V

    :goto_0
    return-void
.end method

.method private showFace()V
    .locals 5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showFace, isNeedShowFaceWindow = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isNeedShowFaceWindow:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_surface_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_face_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_surface_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_face_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 330
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 331
    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$2;

    invoke-direct {v2, p0, p0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    .line 343
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->switchWindowStyle(Z)V

    .line 344
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 345
    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    .line 346
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setScaleEnable(Z)V

    .line 347
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setAutoRotate(Z)V

    .line 348
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setCanDragFullScreen(Z)V

    .line 349
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPortraitSize(II)V

    .line 350
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindowDefaultPosition:[I

    if-eqz v1, :cond_0

    .line 351
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    goto :goto_1

    .line 353
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isRtl(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    .line 355
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->getLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(Landroid/view/View;)V

    .line 356
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->show()V

    goto :goto_2

    .line 358
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->switchWindowStyle(Z)V

    .line 359
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateSize(II)V

    :goto_2
    return-void
.end method

.method private showMain()V
    .locals 18

    move-object/from16 v0, p0

    .line 273
    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-direct {v1, v0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurface$OnCameraOperateCallback;)V

    iput-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    .line 274
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->setOperateListener(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$OnOperateListener;)V

    .line 275
    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    .line 276
    invoke-static/range {p0 .. p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->getSelectedModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 278
    iget-object v3, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setAutoRotate(Z)V

    .line 279
    iget-object v3, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->switchMode(I)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v3, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setAutoRotate(Z)V

    .line 282
    iget-object v3, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->switchMode(I)V

    .line 284
    :goto_0
    iget-object v3, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setCanDragFullScreen(Z)V

    .line 285
    iget-object v3, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setKeepScreenOn(Z)V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getMainWindowDefaultSize()[I

    move-result-object v3

    .line 287
    invoke-direct/range {p0 .. p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getSavedMainWindowParams()[I

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v6, :cond_6

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    goto :goto_1

    .line 294
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v1

    .line 296
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "showMain, isPortrait = "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v10, v6, v8

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v9, 0x5

    aget v10, v6, v9

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "MobileLiveService"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    aget v2, v6, v4

    aget v10, v3, v4

    if-ne v2, v10, :cond_2

    aget v2, v6, v5

    aget v11, v3, v5

    if-eq v2, v11, :cond_3

    .line 299
    :cond_2
    aget v2, v6, v8

    int-to-float v2, v2

    int-to-float v11, v10

    div-float/2addr v2, v11

    int-to-float v10, v10

    mul-float/2addr v10, v2

    .line 300
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    aput v10, v6, v8

    .line 301
    aget v10, v3, v5

    int-to-float v10, v10

    mul-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v6, v9

    :cond_3
    const/4 v2, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x6

    if-eqz v1, :cond_4

    .line 304
    iget-object v12, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    aget v13, v6, v11

    aget v14, v6, v10

    aget v15, v6, v2

    aget v16, v6, v8

    aget v17, v6, v9

    invoke-virtual/range {v12 .. v17}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->transformRect(IIIII)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    .line 306
    :cond_4
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    aget v11, v6, v11

    aget v12, v6, v10

    aget v2, v6, v2

    aget v13, v6, v9

    aget v14, v6, v8

    move-object v9, v1

    move v10, v11

    move v11, v12

    move v12, v2

    invoke-virtual/range {v9 .. v14}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->transformRect(IIIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 308
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lt v2, v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v1

    :cond_6
    :goto_3
    if-nez v7, :cond_7

    .line 314
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    aget v2, v3, v4

    aget v6, v3, v5

    invoke-virtual {v1, v2, v6}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPortraitSize(II)V

    .line 315
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v8

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    goto :goto_4

    .line 317
    :cond_7
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPortraitSize(II)V

    .line 318
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v6, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v6}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    .line 320
    :goto_4
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    aget v2, v3, v4

    int-to-float v2, v2

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aget v3, v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setMinSize(II)V

    .line 321
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    iget-object v2, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(Landroid/view/View;)V

    .line 322
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->show()V

    .line 323
    iget-object v1, v0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->setSceneReadyCallback(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;)V

    return-void
.end method

.method private switchMode()V
    .locals 2

    .line 197
    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->getSelectedModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->isFaceOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->showFace()V

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isNeedShowFaceWindow:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideFace()V

    .line 205
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->switchMode(I)V

    .line 206
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isMainWindowShown:Z

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->switchMode(I)V

    .line 210
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isMainWindowShown:Z

    .line 211
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    const-string v1, "image_trans"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    :goto_0
    return-void
.end method

.method private unregistDisplayChangedListener()V
    .locals 1

    .line 944
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->UnRegisterReceiver()V

    .line 947
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 948
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public frameError()V
    .locals 4

    .line 908
    const-string v0, "MobileLiveService"

    const-string v1, "FrameProcessor error found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->recreate(JZ)V

    return-void
.end method

.method public frameReady()V
    .locals 1

    .line 914
    const-string p0, "MobileLiveService"

    const-string v0, "frameReady: "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 187
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public hideMenu()V
    .locals 2

    .line 760
    const-string v0, "MobileLiveService"

    const-string v1, "hide Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setScaleEnable(Z)V

    .line 762
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDragEnable(Z)V

    .line 764
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    .line 766
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    .line 768
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->release()V

    .line 770
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    :cond_1
    return-void
.end method

.method synthetic lambda$initScene$0$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 8

    .line 419
    const-string v0, "MobileLiveService"

    .line 0
    const-string v1, "[TS:  "

    .line 419
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object v2

    .line 421
    :try_start_0
    invoke-static {v2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 423
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

    .line 424
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz p1, :cond_1

    .line 425
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPose3D33(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_0

    .line 428
    invoke-direct {p0, v5, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setPoseConfidence(IF)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v5}, Lcn/nubia/redmagickyi/util/Bodypose;->getSavedPoseConfidence(I)F

    move-result p1

    invoke-direct {p0, v5, p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setPoseConfidence(IF)V

    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPoseLandmarks:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 437
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/util/Bodypose;->setPose3D33(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)F

    move-result p1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_3

    .line 440
    invoke-direct {p0, v5, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setPoseConfidence(IF)V

    goto :goto_1

    .line 442
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p1, v5}, Lcn/nubia/redmagickyi/util/Bodypose;->getSavedPoseConfidence(I)F

    move-result p1

    invoke-direct {p0, v5, p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setPoseConfidence(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 445
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

.method synthetic lambda$initScene$1$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 1

    .line 452
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 454
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setFace3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t Exception received - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileLiveService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$initScene$2$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 1

    .line 466
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 468
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mLandmarkLeftHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz p1, :cond_0

    .line 470
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setHand3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t Exception received - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileLiveService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$initScene$3$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 1

    .line 481
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 483
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mLandmarkRightHand:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    if-eqz p1, :cond_0

    .line 485
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/util/Bodypose;->setHand3D(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t Exception received - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileLiveService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$initScene$4$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 4

    .line 0
    const-string v0, "pose_detection: "

    .line 495
    invoke-static {p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B

    move-result-object p1

    .line 497
    :try_start_0
    invoke-static {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->parseFrom([B)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 500
    const-string v2, "MobileLiveService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidenceSaved(IF)V

    .line 502
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidenceSaved(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$initScene$5$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 2

    .line 535
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFaceLandmarks:Ljava/util/List;

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 537
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->getLandLock()Z

    move-result p1

    if-nez p1, :cond_0

    .line 538
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFaceLandmarks:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/util/Bodypose;->setFace3DIris(Ljava/util/List;)V

    .line 539
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mIsLocked:Z

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->getPortLock()Z

    move-result p1

    if-nez p1, :cond_1

    .line 541
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFaceLandmarks:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/util/Bodypose;->setFace3DIris(Ljava/util/List;)V

    .line 542
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mIsLocked:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 544
    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setPoseConfidence(IF)V

    const/4 p1, 0x0

    .line 545
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mIsLocked:Z

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$initScene$6$cn-nubia-redmagickyi-pose-mobile-service-MobileLiveService(Lcom/google/mediapipe/framework/Packet;)V
    .locals 2

    .line 552
    invoke-static {}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 553
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mIsLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 554
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 555
    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "face_detections: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPose:Lcn/nubia/redmagickyi/util/Bodypose;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/util/Bodypose;->setPoseConfidenceSaved(IF)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCameraAvailable()V
    .locals 2

    .line 876
    const-string v0, "MobileLiveService"

    const-string v1, "onCameraAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->hideHint()V

    .line 880
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 881
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->hideCameraHint()V

    :cond_1
    return-void
.end method

.method public onCameraRecreated()V
    .locals 4

    .line 898
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->recreate(JZ)V

    return-void
.end method

.method public onCameraUnavailable()V
    .locals 2

    .line 887
    const-string v0, "MobileLiveService"

    const-string v1, "onCameraUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->showHint()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 892
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->showCameraHint()V

    :cond_1
    return-void
.end method

.method public onChanged()V
    .locals 4

    .line 1134
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    .line 1137
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    if-eqz v0, :cond_2

    .line 1138
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v0

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3, v2, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1150
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz p0, :cond_3

    .line 1151
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->onChanged()V

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 162
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 163
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    const-string v1, "intent.action.redmagickyi.pose.livemode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "intent.action.redmagickyi.pose.mobile.recreate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "intent.action.redmagickyi.pose.settings.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;->setLiveBroadCastMessage(Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;)V

    .line 170
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->registDisplayChangedListener()V

    .line 171
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;->getInstance()Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;->showServiceRunForegroundRecording(Landroid/app/Service;)V

    .line 172
    new-instance v0, Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/util/SensorHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mSensorHelper:Lcn/nubia/redmagickyi/util/SensorHelper;

    .line 173
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/SensorHelper;->enable()V

    .line 174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->initData()V

    .line 175
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->showMain()V

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->initScene(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 217
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 218
    const-string v0, "begin destroy common"

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->requestCPUBoost(J)V

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    .line 224
    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 226
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->unregistDisplayChangedListener()V

    .line 230
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;->getInstance()Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;->cancelNotification(Z)V

    .line 231
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;->getInstance()Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/NotificationController;->resetService()V

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    .line 235
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->release()V

    .line 238
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    .line 241
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    if-eqz v0, :cond_5

    .line 242
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->release()V

    .line 244
    :cond_5
    const-string v0, "end destroy common, begin destroy unity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainView:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->release(Ljava/lang/Runnable;)V

    .line 269
    const-string p0, "end destroy unity"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLiveSettingsChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 854
    const-string v0, "live_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLiveSettingsChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileLiveService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v1, "mobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 859
    const-string v0, "ar_image_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 861
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->recreate(JZ)V

    goto :goto_1

    .line 863
    :cond_1
    const-string v0, "gravity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 865
    :cond_2
    const-string v0, "image_trans"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 866
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isMainWindowShown:Z

    if-eqz v0, :cond_3

    .line 867
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onModelReady()V
    .locals 4

    .line 840
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x320

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSceneReady()Ljava/lang/String;
    .locals 0

    .line 835
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    return-object p0
.end method

.method public onScreenOnStatusListener(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1113
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onScreenOnStatusListener, receive action = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MobileLiveService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1115
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1116
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    .line 1118
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz p0, :cond_2

    .line 1119
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateAlpha(I)V

    goto :goto_0

    .line 1121
    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1122
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1123
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStartCommand, bundle = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isNeedShowFaceWindow = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isNeedShowFaceWindow:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileLiveService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isNeedShowFaceWindow:Ljava/lang/Boolean;

    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 143
    const-string p1, "pref_mobile_live_temp_extra"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 144
    const-string v0, "EXTRA_NEED_SHOW_FACE_WINDOW"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isNeedShowFaceWindow:Ljava/lang/Boolean;

    .line 145
    const-string v0, "EXTRA_FACE_WINDOW_POSITION_X"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-array v1, p2, [I

    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindowDefaultPosition:[I

    .line 147
    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aput v0, v1, p3

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindowDefaultPosition:[I

    const-string v1, "EXTRA_FACE_WINDOW_POSITION_Y"

    invoke-interface {p1, v1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x1

    aput p3, v0, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 150
    iput-object p3, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindowDefaultPosition:[I

    .line 152
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->switchMode()V

    :cond_1
    return p2
.end method

.method public receiveLiveMode(Ljava/lang/String;)V
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveLiveMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLiveService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v0, "pc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 848
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->performStopSelf()V

    :cond_0
    return-void
.end method

.method public showMenu()V
    .locals 6

    .line 677
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setScaleEnable(Z)V

    .line 678
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDragEnable(Z)V

    .line 679
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;-><init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    .line 737
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->setScreenOriatationPortrait(Z)V

    .line 738
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    .line 739
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setScaleEnable(Z)V

    .line 740
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDragEnable(Z)V

    .line 741
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setAutoRotate(Z)V

    .line 742
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setCanDragFullScreen(Z)V

    .line 743
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->liveMainWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 744
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 745
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_menu_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 746
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 747
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    .line 748
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v5

    if-le v2, v5, :cond_0

    .line 750
    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v1

    .line 752
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v3, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    .line 753
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuView:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->getLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(Landroid/view/View;)V

    .line 754
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->menuWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->show()V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 780
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "surfaceChanged, currentScene: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MobileLiveService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    const-string p4, "camera"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 782
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setSurface(Ljava/lang/Object;)V

    .line 783
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "surfaceChanged, previewFrameTexture: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    const-string p2, "surfaceChanged: portrait"

    const-string p4, "surfaceChanged: landscape"

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    if-eqz p1, :cond_1

    .line 785
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 786
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 793
    :cond_0
    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0, v1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 800
    :cond_1
    const-string p1, "surfaceChanged: previewFrameTexture null"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->cameraFaceView:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_3

    .line 803
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 804
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 805
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 811
    :cond_2
    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mConverter:Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mPreviewFrameTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0, v1, v0}, Lcn/nubia/redmagickyi/pose/mp/LiveExternalTextureConverter;->setSurfaceTextureAndAttachToGLContext(Landroid/graphics/SurfaceTexture;II)V

    .line 817
    :goto_0
    const-string p0, "surfaceChanged: previewFrameTexture not null"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    :cond_3
    const-string p0, "surfaceChanged: texture null"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 776
    const-string p0, "MobileLiveService"

    const-string p1, "surfaceCreated: "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 827
    const-string p1, "MobileLiveService"

    const-string v0, "surfaceDestroyed: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mCurrentScene:Ljava/lang/String;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 829
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->mFrameProcessor:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->getVideoSurfaceOutput()Lcom/google/mediapipe/framework/SurfaceOutput;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->setSurface(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public switchCamera()V
    .locals 4

    .line 903
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->recreate(JZ)V

    return-void
.end method
