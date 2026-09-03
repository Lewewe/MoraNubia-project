.class public Lcn/nubia/upgrade/service/UpgradeService;
.super Landroid/app/Service;
.source "UpgradeService.java"

# interfaces
.implements Lcn/nubia/upgrade/service/c$f;


# instance fields
.field private a:Lcn/nubia/upgrade/service/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 5
    new-instance v0, Lcn/nubia/upgrade/service/c;

    invoke-direct {v0}, Lcn/nubia/upgrade/service/c;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->a:Lcn/nubia/upgrade/service/c;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcn/nubia/upgrade/service/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification_icon"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "notification_title"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "UpgradeService"

    invoke-direct {v2, v3, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v4, -0xffff01

    .line 11
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 12
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 14
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 15
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v0, "service"

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 22
    invoke-virtual {p0, v2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {v0, p0}, Lcn/nubia/upgrade/service/c;->a(Lcn/nubia/upgrade/service/c$f;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->a:Lcn/nubia/upgrade/service/c;

    const-string v1, "UpgradeService"

    invoke-virtual {v0, p0, v1}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/service/UpgradeService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0}, Lcn/nubia/upgrade/service/c;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeService;->a(Landroid/content/Intent;)V

    .line 2
    iget-object p0, p0, Lcn/nubia/upgrade/service/UpgradeService;->a:Lcn/nubia/upgrade/service/c;

    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/service/c;->a(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
