.class public Lcn/nubia/redmagickyi/pose/pc/PoseActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "PoseActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;
.implements Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;,
        Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;
    }
.end annotation


# static fields
.field public static ARACTIVITY_TO_LIVE_SETTING:Ljava/lang/String; = "fromPose"

.field public static final POSE_MSG_CAMERA_BUSY:I = 0xbc2

.field public static final POSE_MSG_CHANGE_BG:I = 0xbbc

.field public static final POSE_MSG_DISMISS_HINT:I = 0xbbf

.field public static final POSE_MSG_HIDE_MENU:I = 0xbb8

.field public static final POSE_MSG_MENU_INIT_SCENE:I = 0xbbb

.field public static final POSE_MSG_POSE_HINT:I = 0xbbe

.field public static final POSE_MSG_RELAUNCH:I = 0xbc0

.field public static final POSE_MSG_SHOW_CAMERA_VIEW:I = 0xbc1

.field public static final POSE_MSG_SHOW_MENU:I = 0xbb9

.field private static final TAG:Ljava/lang/String; = "PoseActivity"


# instance fields
.field private final DELAY_CAMERA_SWITCH:J

.field private final LONG_TOUCH_TIME_LEN:I

.field private alphaOut:Ljava/lang/Runnable;

.field private cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

.field private faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

.field private mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

.field private mCameraBusy:Z

.field private mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

.field mCharactorClickable:Z

.field private mCurrentScene:Ljava/lang/String;

.field private mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

.field private mFaceHide:Z

.field private mGuideDialog:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;

.field private mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

.field private mLivePcMainSwitchCamera:Landroid/widget/ImageView;

.field private mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

.field private mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

.field private mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

.field private mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

.field private mRootView:Landroid/view/ViewGroup;

.field private mShouldShowGuide:Z

.field private mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field private startFaceCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const-wide/16 v0, 0x5dc

    .line 90
    iput-wide v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->DELAY_CAMERA_SWITCH:J

    const/16 v0, 0x190

    .line 92
    iput v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->LONG_TOUCH_TIME_LEN:I

    .line 102
    new-instance v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mFaceHide:Z

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mShouldShowGuide:Z

    .line 112
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    .line 119
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraBusy:Z

    .line 124
    new-instance v0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;-><init>()V

    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    .line 248
    new-instance v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$5;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->alphaOut:Ljava/lang/Runnable;

    .line 652
    new-instance v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$13;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->startFaceCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->hideMenu(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->switchScene()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showHint()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->dismissHint()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showLoadDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showCameraView()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->dismissLoadDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraBusy:Z

    return p0
.end method

.method static synthetic access$1902(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraBusy:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mShouldShowGuide:Z

    return p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mFaceHide:Z

    return p0
.end method

.method static synthetic access$2002(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mFaceHide:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mShouldShowGuide:Z

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->poseMonitor()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showGuide()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showMenu()V

    return-void
.end method

.method private dismissHint()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    :cond_0
    return-void
.end method

.method private dismissLoadDialog()V
    .locals 2

    .line 1080
    const-string v0, "PoseActivity"

    const-string v1, "dismissLoadDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    .line 1085
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 1086
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->setSceneBusy(Z)V

    :cond_1
    return-void
.end method

.method private hideMenu(Z)V
    .locals 3

    .line 1057
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    .line 1058
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1059
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1060
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initData()V
    .locals 3

    .line 275
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    const v2, 0x9c40

    invoke-direct {v0, v2, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 296
    const-string v0, "shouldShowGuidePC"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/Utils;->getLiveData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mShouldShowGuide:Z

    .line 297
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->initEnv(Landroid/content/Context;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_0

    .line 299
    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$7;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$7;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->initEnv(Landroid/app/Activity;Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$LiveCallback;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    :cond_0
    return-void
.end method

.method private initFaceWindow()V
    .locals 5

    .line 1130
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_pc_surface_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_face_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->live_pc_surface_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1132
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-nez v2, :cond_1

    .line 1133
    new-instance v2, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;

    invoke-direct {v2, p0, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$15;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    .line 1150
    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v3, 0x0

    .line 1151
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setScaleEnable(Z)V

    .line 1152
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setAutoRotate(Z)V

    .line 1153
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setWindowType(I)V

    .line 1154
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDragEnable(Z)V

    .line 1155
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setCanDragFullScreen(Z)V

    .line 1156
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPortraitSize(II)V

    .line 1157
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isRtl(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    .line 1158
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(Landroid/view/View;)V

    .line 1159
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->show()V

    goto :goto_1

    .line 1161
    :cond_1
    invoke-virtual {v2, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateSize(II)V

    :goto_1
    return-void
.end method

.method private initView()V
    .locals 3

    .line 313
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->activity_pose:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setContentView(I)V

    .line 314
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 316
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_main_switch_camera:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    .line 317
    new-instance v2, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$8;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initFaceWindow()V

    .line 331
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 332
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    goto :goto_0

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mFaceHide:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 334
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    .line 338
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setupPreviewDisplayView()V

    .line 339
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 341
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_2

    .line 342
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 344
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-nez v0, :cond_3

    .line 345
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 346
    sget-object v2, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 347
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 348
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setZOrderOnTop(Z)V

    .line 349
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$9;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$9;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 375
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->requestFocus()Z

    return-void
.end method

.method private isLoadDialogShowing()Z
    .locals 0

    .line 1076
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 428
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 429
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 430
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 431
    const-string v1, "msgID"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 432
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_0

    .line 434
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0xbbb

    .line 435
    iput v1, p1, Landroid/os/Message;->what:I

    .line 436
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private poseMonitor()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_0

    .line 477
    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$12;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startPoseMonitor(Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$MonitorCallback;)V

    :cond_0
    return-void
.end method

.method private sendLiveImageTrack()V
    .locals 4

    .line 1120
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCurrentScene:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1122
    :cond_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCurrentScene:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1124
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mora_live_name"

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCurrentScene:Ljava/lang/String;

    const-string v3, "mora_live"

    invoke-virtual {v0, v1, v3, v2, p0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setFaceWindowVisibility(I)V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->faceWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 1168
    invoke-virtual {v0, p1, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateSize(II)V

    .line 1169
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->setVisibility(I)V

    goto :goto_0

    .line 1171
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initFaceWindow()V

    .line 1172
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupPreviewDisplayView()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->getSurfaceCallback()Landroid/view/SurfaceHolder$Callback;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method private showCameraView()V
    .locals 5

    .line 208
    const-string v0, "PoseActivity"

    const-string v1, "showCameraView: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showCameraIconUI(Z)V

    const/16 v1, 0x8

    .line 213
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    .line 214
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v2

    const-string v3, "face_camera_id"

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v0, v3

    .line 219
    :cond_2
    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    .line 220
    new-instance v4, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$3;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$3;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    new-instance v4, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$4;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$4;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setFaceMode(Z)V

    .line 237
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setCameraType(I)V

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 239
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 240
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 245
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->sendLiveImageTrack()V

    return-void
.end method

.method private showGuide()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mGuideDialog:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$11;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$11;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mGuideDialog:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->dismiss()V

    .line 414
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mGuideDialog:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->show()V

    return-void
.end method

.method private showHint()V
    .locals 5

    .line 445
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-nez v0, :cond_3

    .line 446
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v1, 0x0

    .line 447
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setTouchEnable(Z)V

    .line 448
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDragEnable(Z)V

    .line 449
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_surface_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 450
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_surface_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 451
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setScaleEnable(Z)V

    .line 452
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setWindowType(I)V

    .line 453
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {v3, v0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPortraitSize(II)V

    .line 454
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->live_pc_hint_y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPosition(II)V

    .line 455
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setGravity(I)V

    .line 456
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->layout_live_noface_hint:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(I)V

    goto :goto_1

    .line 458
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->layout_live_nobody_hint:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(I)V

    .line 462
    :cond_2
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->show()V

    :cond_3
    return-void
.end method

.method private showLoadDialog(Landroid/content/Context;)V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1065
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->setSceneBusy(Z)V

    .line 1067
    :cond_0
    const-string v0, "PoseActivity"

    const-string v1, "showLoadDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->isLoadDialogShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1071
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    .line 1072
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showMenu()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    .line 1050
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1051
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->setCanceledOnTouchOutside(Z)V

    .line 1052
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->show()V

    :cond_1
    return-void
.end method

.method private switchScene()V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->clearPoseScene()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->dismiss()V

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initScene: mCurrentScene "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFaceRecog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 158
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showCameraIconUI(Z)V

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    :cond_3
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    .line 163
    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$1;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    new-instance v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$2;-><init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->setFaceMode(Z)V

    const/16 v0, 0x8

    .line 180
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->hideCameraIconUI(Z)V

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    invoke-direct {p0, p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showLoadDialog(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_7

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->switchPoseScene(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V

    goto :goto_0

    .line 192
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->switchFaceScene(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$FrameInterface;)V

    .line 195
    :cond_6
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startTextureConverter()V

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->startFaceCamera()V

    goto :goto_1

    .line 199
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbbf

    .line 200
    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    :goto_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->switchUnityScene()V

    .line 205
    :goto_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->sendLiveImageTrack()V

    return-void
.end method

.method private switchUnityScene()V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchUnityScene: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v1, 0x3f2

    .line 399
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 400
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentUnitySceneName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 401
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 610
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 611
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 613
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public frameError()V
    .locals 3

    .line 736
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbc0

    .line 737
    iput v1, v0, Landroid/os/Message;->what:I

    .line 738
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    .line 739
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public frameReady()V
    .locals 2

    .line 744
    const-string v0, "PoseActivity"

    const-string v1, "frameReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->dismissLoadDialog()V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 599
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 857
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 858
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 861
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public hideCameraIconUI(Z)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->alphaOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 592
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 593
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    .line 594
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.pose.livemode"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "livemode"

    const-string v2, "pc"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    new-instance p1, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    .line 135
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v0, "intent.action.redmagickyi.pose.settings.changed"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;->setLiveBroadCastMessage(Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver$LiveBroadCastMessage;)V

    .line 140
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initData()V

    .line 141
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initView()V

    .line 142
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->poseMonitor()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 682
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_0

    .line 685
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->destroy(Lcom/unity3d/player/UnityPlayer;)V

    .line 687
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mReceiver:Lcn/nubia/redmagickyi/pose/mobile/service/LiveBroadCastReceiver;

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mBodyHintWindow:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    if-eqz v0, :cond_2

    .line 691
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->close()V

    .line 693
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 694
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->dismiss()V

    .line 697
    :cond_3
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mMenuDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    .line 699
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_5

    .line 700
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->release()V

    .line 702
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    if-eqz v0, :cond_7

    .line 703
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 704
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;->dismiss()V

    .line 706
    :cond_6
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLoadDialog:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$SceneLoadDialog;

    .line 708
    :cond_7
    const-string v0, "PoseActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onLiveSettingsChanged(Landroid/os/Bundle;)V
    .locals 1

    .line 728
    const-string p0, "live_mode"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLiveSettingsChanged: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PoseActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string p1, "pc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 579
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 580
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 673
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 674
    const-string v0, "PoseActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setIntent(Landroid/content/Intent;)V

    .line 676
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 561
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 562
    const-string v0, "PoseActivity"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->stopTextureConverter()V

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 568
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->stopFaceCamera()V

    .line 571
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 572
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz p0, :cond_2

    .line 573
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->stopPoseMonitor()V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 623
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 624
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 501
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 502
    const-string v0, "onResume: "

    const-string v1, "PoseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 504
    const-string v0, "onResume requestPermission done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 506
    const-string v0, "onResume HasAllPermissionOfRuntime"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0xbbc

    .line 508
    iput v2, v0, Landroid/os/Message;->what:I

    .line 509
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 510
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 553
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 554
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showCameraView()V

    goto/16 :goto_3

    .line 512
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    const-string v0, "onResume: face opened"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startTextureConverter()V

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->startFaceCamera()V

    .line 520
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->poseMonitor()V

    .line 524
    :cond_3
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 525
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    goto :goto_2

    .line 527
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 528
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->stopPreview()V

    .line 529
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraSurface:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 531
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 532
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 534
    :cond_6
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 535
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 536
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 538
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 539
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    goto :goto_1

    .line 540
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mFaceHide:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    .line 541
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    goto :goto_1

    .line 543
    :cond_8
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->setFaceWindowVisibility(I)V

    .line 545
    :goto_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->switchScene()V

    .line 546
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 547
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->poseMonitor()V

    .line 550
    :cond_9
    :goto_2
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->hideCameraIconUI(Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 714
    const-string v0, "PoseActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 585
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    const/16 p0, 0xf

    if-ne p1, p0, :cond_0

    .line 587
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 616
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 604
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 605
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

.method public receiveLiveMode(Ljava/lang/String;)V
    .locals 2

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiveLiveMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v0, "mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public showCameraIconUI(Z)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->alphaOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mLivePcMainSwitchCamera:Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->alphaOut:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startFaceCamera()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->cameraFaceViewPC:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isUsingFaceIDFront()Z

    move-result v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->startFaceCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->startCameraDevice(ZLcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)V

    :cond_0
    return-void
.end method

.method public stopFaceCamera()V
    .locals 0

    .line 628
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz p0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->closeCameraDevice()V

    :cond_0
    return-void
.end method

.method public switchFaceCameraId()V
    .locals 4

    .line 641
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isUsingFaceIDFront()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 642
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mPoseManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->startFaceCameraCallback:Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;

    invoke-virtual {v2, v0, v3}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->switchCameraId(ZLcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager$StartCameraCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mDataManager:Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setUsingFaceID(Z)V

    .line 644
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCameraBusy:Z

    .line 645
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbc2

    .line 646
    iput v1, v0, Landroid/os/Message;->what:I

    .line 647
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    .line 648
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mHandler:Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
