.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;
.super Landroid/app/Service;
.source "WindowCommandService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/scene/SceneGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

.field public mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;

.field private mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

.field private processManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

.field private windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowCommandService-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->handleMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->checkServiceDisable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    return-object p1
.end method

.method private checkServiceDisable()Z
    .locals 1

    .line 157
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->isEnableWakeup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleMessage(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    .line 87
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->aiListener:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->registReceiver(Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver$Listener;)V

    .line 89
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->handleMessages(Landroid/os/Bundle;)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 63
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    return-void
.end method


# virtual methods
.method public bindLocationService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;)V
    .locals 2

    .line 169
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    const-string v1, "bindLocationService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    const-class v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 200
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->mLocationBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;->onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V
    .locals 2

    .line 211
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    const-string v1, "bindMicrophoneService begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->isBinderAlive(Landroid/os/Binder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    const-class v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$4;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->mMicrophoneBinder:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;->onMicrophoneServiceConnected(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public comfirmWakeupEnable()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->checkServiceDisable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 150
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    const-string v0, "AIAgent is Disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/main/function/wakeup/WindowWakeupManager;->startWakeup()Z

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->stopSelf()V

    .line 271
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->unregistReceiver()V

    .line 274
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->release()V

    .line 275
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AppExecutors;->release()V

    .line 276
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getScene()Lcn/nubia/redmagickyi/morachat/main/scene/Scene;
    .locals 0

    .line 40
    sget-object p0, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    return-object p0
.end method

.method public isBinderAlive(Landroid/os/Binder;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 165
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

    .line 53
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->init()V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->comfirmWakeupEnable()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->windowCommandReceiver:Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/main/receiver/WindowCommandReceiver;->unregistReceiver()V

    .line 263
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->processManager:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/ProcessManager;->release()V

    .line 264
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/AppExecutors;->release()V

    .line 265
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 69
    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onStartCommand, intent = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 71
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$1;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindLocationService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnLocationServiceConnection;)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;->bindMicrophoneService(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService$OnMicrophoneServiceConnection;)V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
