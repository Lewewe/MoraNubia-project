.class public Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "AccompanyActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/scene/SceneGetter;


# static fields
.field public static final ACTION_FULLSCREEN_ACCOMPANY_LAUNCH:Ljava/lang/String; = "intent.action.redmagickyi.fullscreen.accompany.launch"

.field public static final KEY_ACTION_FULLSCREEN_ACCOMPANY_LAUNCH:Ljava/lang/String; = "propertyKey"

.field private static final TAG:Ljava/lang/String; = "AccompanyActivity"


# instance fields
.field private isForeground:Z

.field private mContext:Landroid/app/Activity;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isForeground:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->checkActivityDisable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    return-object p0
.end method

.method private checkActivityDisable()Z
    .locals 1

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isEnableWakeup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAccompanyActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 45
    new-instance p0, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.chataccompany"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public comfirmWakeupEnable()Z
    .locals 1

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isEnableWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->startWakeup()Z

    const/4 p0, 0x1

    return p0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 219
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 222
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 2

    .line 206
    const-string v0, "AccompanyActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 208
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->unregisterReceiver()V

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->release()V

    :cond_0
    return-void
.end method

.method public getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 40
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->FULLSCREEN_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method protected isEnableActivityEnterAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isEnableActivityExitAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForeground()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isForeground:Z

    return p0
.end method

.method public onBackPressed()V
    .locals 2

    .line 200
    const-string v0, "AccompanyActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string p1, "AccompanyActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->mContext:Landroid/app/Activity;

    .line 55
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_fs_accompany_activity_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->setContentView(I)V

    .line 56
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    .line 57
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V

    const v1, 0x11170

    invoke-direct {p1, v1, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 74
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver;->registerReceiver(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 192
    const-string v0, "AccompanyActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 227
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 233
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    if-eqz p0, :cond_1

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 176
    const-string v0, "AccompanyActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->checkActivityDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->processManager:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;

    if-eqz p0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/ProcessManager;->onResume()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStart()V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isForeground:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->isForeground:Z

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->mContext:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
