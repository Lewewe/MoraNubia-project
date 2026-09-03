.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;
.super Landroid/app/Service;
.source "WindowCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandService"


# instance fields
.field private aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

.field public mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

.field private permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

.field private processManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

.field private windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->handleMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->checkServiceDisable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    return-object p0
.end method

.method private checkServiceDisable()Z
    .locals 1

    .line 159
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->isEnableWakeup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->stopSelf()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleMessage(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    .line 89
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->registReceiver(Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;)V

    .line 91
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->handleMessages(Landroid/os/Bundle;)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 59
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 60
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    return-void
.end method


# virtual methods
.method public bindLocationService(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;)V
    .locals 2

    .line 225
    const-string v0, "WindowCommandService"

    const-string v1, "bindLocationService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->shouldBindLocationService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    const-class v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 229
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public comfirmWakeupEnable()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->checkServiceDisable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 152
    const-string p0, "WindowCommandService"

    const-string v0, "AIAgent is Disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->startWakeup()Z

    :goto_0
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public hasPermission(Landroid/os/Bundle;)Z
    .locals 5

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 168
    :cond_1
    :goto_0
    const-string v0, "Has no audio permission!!"

    const-string v1, "WindowCommandService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->registerPermissionReceiver()V

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    :cond_2
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->launch(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->init()V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->comfirmWakeupEnable()V

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService;->sendTrack(Landroid/content/Context;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->unregistReceiver()V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->unRegisterPermissionReceiver()V

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->release()V

    .line 275
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->release()V

    const/4 v0, 0x0

    .line 276
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService;->sendTrack(Landroid/content/Context;Z)V

    .line 277
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStartCommand, intent = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WindowCommandService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->hasPermission(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->shouldBindLocationService()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$1;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->bindLocationService(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$OnLocationServiceConnection;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->handleMessage(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method protected registerPermissionReceiver()V
    .locals 3

    .line 182
    const-string v0, "WindowCommandService"

    const-string v1, "registerPermissionReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intent.action.redmagickyi.window.permission.check"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public shouldBindLocationService()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

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

.method protected unRegisterPermissionReceiver()V
    .locals 2

    .line 191
    const-string v0, "WindowCommandService"

    const-string v1, "unRegisterPermissionReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    if-eqz v1, :cond_0

    .line 195
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    .line 196
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    :goto_0
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 199
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 201
    :goto_2
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->permissionReceiver:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService$PermissionReceiver;

    .line 202
    throw v1
.end method
