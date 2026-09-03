.class public Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "MobileLiveActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# static fields
.field public static final MSG_CHECK_SERVICE_RUNNING:I = 0x1

.field public static OVERLAY_PERMISSION_REQ_CODE:I = 0x4d2

.field private static final TAG:Ljava/lang/String; = "MobileLiveActivity"


# instance fields
.field private checkingThread:Landroid/os/HandlerThread;

.field private firstGuideDialogShow:Z

.field private handler:Landroid/os/Handler;

.field private isOverlaysRequsted:Z

.field private mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

.field private permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->firstGuideDialogShow:Z

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->isOverlaysRequsted:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->gotoManageOverlayPermission()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->firstGuideDialogShow:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->firstGuideDialogShow:Z

    return p1
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 0

    .line 29
    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->isMobileLiveProcessRunning(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized cancelCheckMobileLiveProcessRunning()V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->handler:Landroid/os/Handler;

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 259
    iput-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkPermission()V
    .locals 3

    .line 72
    const-string v0, "checkPermission"

    const-string v1, "MobileLiveActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v2, 0x9c40

    invoke-direct {v0, v2, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->startLive()V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "requestPermission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private gotoManageOverlayPermission()V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    sget v1, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->OVERLAY_PERMISSION_REQ_CODE:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static isMobileLiveProcessRunning(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    .line 216
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getRunningProcesses(Landroid/content/Context;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static final launchFromOutside(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->isMobileLiveProcessRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setLiveRelaunching(Landroid/content/Context;Z)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v1, "intent.action.redmagickyi.pose.mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private requestDrawOverLays()V
    .locals 3

    .line 85
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestDrawOverLays, canDrawOverlays = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileLiveActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 88
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->isOverlaysRequsted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->isOverlaysRequsted:Z

    .line 90
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->gotoManageOverlayPermission()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->showPermissionGuide()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkPermission()V

    :goto_0
    return-void
.end method

.method private declared-synchronized scheduleCheckMobileLiveProcessRunning()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MobileLiveProcess"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    .line 226
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 230
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$4;-><init>(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->handler:Landroid/os/Handler;

    .line 248
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showPermissionGuide()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    sget v1, Lcn/nubia/redmagickyi/main/R$style;->PermissionDialog:I

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_title:I

    .line 102
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u00b7 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->permission_require_overlays:I

    .line 103
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_go_to_setting:I

    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$2;-><init>(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)V

    .line 105
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)V

    const/high16 v2, 0x1040000

    .line 111
    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setMaxHeightRatio(F)V

    .line 122
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->show()V

    return-void
.end method

.method private startLive()V
    .locals 2

    .line 177
    const-string v0, "MobileLiveActivity"

    const-string v1, "startLive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "shouldShowGuideMobile"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/Utils;->getLiveData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    .line 182
    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity$3;-><init>(Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->show()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->onGuideDismiss()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 211
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 212
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->cancelCheckMobileLiveProcessRunning()V

    return-void
.end method

.method protected isRequestFeatureNoTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isRequestHideBottomUIMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult, requestCode = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MobileLiveActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget p2, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->OVERLAY_PERMISSION_REQ_CODE:I

    if-ne p1, p2, :cond_0

    .line 152
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->checkPermission()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    const-string p1, "MobileLiveActivity"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->firstGuideDialogShow:Z

    .line 170
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->dismiss()V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->mobileLiveDialog:Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;

    .line 172
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->startLive()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    const-string v0, "MobileLiveActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->requestWindowFeature(I)Z

    .line 42
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onGuideDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->moveTaskToBack(Z)Z

    .line 206
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->scheduleCheckMobileLiveProcessRunning()V

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 143
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->finish()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 2

    .line 137
    const-string v0, "MobileLiveActivity"

    const-string v1, "onPermissionRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->startLive()V

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 1

    .line 132
    const-string p0, "MobileLiveActivity"

    const-string v0, "onPermissionRequesting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->requestDrawOverLays()V

    return-void
.end method
