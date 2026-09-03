.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;
.super Landroid/app/Service;
.source "WindowCommandLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandLocationService"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private mBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    return-void
.end method

.method public static getCurrentWifiName()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 22
    const-string v0, "WindowCommandLocationService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;->showServiceRunForegroundRecording(Landroid/app/Service;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;->cancelNotification(Z)V

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/LocationNotificationController;->resetSpeechService()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onStartCommand, intent = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowCommandLocationService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
