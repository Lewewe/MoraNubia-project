.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService;
.super Landroid/app/IntentService;
.source "WindowCommandTrackNotifyService.java"


# static fields
.field public static final TRACK_EVENT_WIN:Ljava/lang/String; = "win"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const-string v0, "WindowCommandTrackNotifyService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static sendTrack(Landroid/content/Context;Z)V
    .locals 2

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string/jumbo v1, "win"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 p0, 0x0

    .line 64
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 36
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    .line 37
    const-string/jumbo v2, "win"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    sget-object v3, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v4, "mora_agent_action"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 40
    const-string p1, "open"

    goto :goto_0

    :cond_0
    const-string p1, "close"

    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandTrackNotifyService;Ljava/util/concurrent/CountDownLatch;)V

    const-string p0, "cn.nubia.gamelauncher"

    invoke-virtual {p1, p0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager$OnEventCallback;)V

    .line 50
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method
