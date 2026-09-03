.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService;
.super Landroid/app/Service;
.source "WindowCommandLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandLocationService"


# instance fields
.field private mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    return-void
.end method

.method public static getCurrentWifiName()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/WifiUtil;->getDetailsWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService;->mBinder:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandLocationService$WindowCommandLocationBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 21
    const-string v0, "WindowCommandLocationService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;->showServiceRunForegroundRecording(Landroid/app/Service;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;->cancelNotification(Z)V

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/LocationNotificationController;->resetSpeechService()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 28
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
