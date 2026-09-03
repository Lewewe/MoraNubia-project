.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;
.super Landroid/app/Service;
.source "WindowCommandService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/scene/SceneGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandService"


# instance fields
.field private aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

.field public mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

.field private mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

.field private processManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

.field private windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->handleMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->checkServiceDisable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-object p1
.end method

.method private checkServiceDisable()Z
    .locals 1

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->isEnableWakeup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleMessage(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    .line 89
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->registReceiver(Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;)V

    .line 91
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->handleMessages(Landroid/os/Bundle;)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 65
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 66
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    return-void
.end method


# virtual methods
.method public bindLocationService(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;)V
    .locals 2

    .line 177
    const-string v0, "WindowCommandService"

    const-string v1, "bindLocationService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-class v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;->onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;)V
    .locals 2

    .line 219
    const-string v0, "WindowCommandService"

    const-string v1, "bindMicrophoneService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    const-class v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;->onMicrophoneServiceConnected(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public comfirmWakeupEnable()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->checkServiceDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string p0, "WindowCommandService"

    const-string v0, "AIAgent is Disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    if-ne p0, v0, :cond_1

    .line 155
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 156
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->startWakeup()Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->startWakeup()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->stopSelf()V

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->unregistReceiver()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->release()V

    .line 284
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->release()V

    const/4 v0, 0x0

    .line 285
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;->sendTrack(Landroid/content/Context;Z)V

    .line 286
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 41
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method public isBinderAlive(Landroid/os/Binder;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/os/Binder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 46
    const-string v0, "WindowCommandService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->init()V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->comfirmWakeupEnable()V

    const/4 v0, 0x1

    .line 50
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;->sendTrack(Landroid/content/Context;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 268
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->unregistReceiver()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager;->release()V

    .line 272
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->release()V

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandTrackNotifyService;->sendTrack(Landroid/content/Context;Z)V

    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onStartCommand, intent = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WindowCommandService"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 73
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->bindLocationService(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
