.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;
.super Ljava/lang/Object;
.source "NetworkNotificationController.java"


# static fields
.field private static final NOTIFICATION_WAKE_UP:I = 0x134ffa0

.field public static final POST_NOTIFICATIONS:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;


# instance fields
.field mContext:Landroid/content/Context;

.field manager:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessInputNotificationController-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->instance:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createNotificationChannel(ILjava/lang/String;)V
    .locals 3

    .line 50
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createNotificationChannel title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->manager:Landroid/app/NotificationManager;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wake_up_network_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p2, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 55
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 56
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v0, -0x2

    .line 58
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->notification:Landroid/app/Notification;

    return-void
.end method

.method public static enableNotification(Landroid/content/Context;)V
    .locals 4

    .line 138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "app_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "app_uid"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;
    .locals 1

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->instance:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;

    return-object v0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static needPostNotiPermission(Landroid/content/Context;)Z
    .locals 3

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 115
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    move v2, p0

    :cond_0
    return v2
.end method

.method public static requestNotificationPermission(Landroid/app/Activity;)Z
    .locals 5

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 123
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 124
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldShowRequestPermissionRationale : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 126
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->enableNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 128
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    const/16 v0, 0x64

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private declared-synchronized showNotification(Landroid/app/Service;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->service:Landroid/app/Service;

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->resetNotification()V

    .line 85
    sget v0, Lcn/nubia/redmagickyi/common/R$mipmap;->redmagickyi_ic_launcher:I

    invoke-direct {p0, v0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->createNotificationChannel(ILjava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->notification:Landroid/app/Notification;

    const v0, 0x134ffa0

    invoke-virtual {p1, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelNotification(Z)V
    .locals 3

    const-string v0, "cancelNotification cancelWakeUp:"

    monitor-enter p0

    .line 91
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->resetNotification()V

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->service:Landroid/app/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 97
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetNotification()V
    .locals 2

    monitor-enter p0

    .line 102
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->TAG:Ljava/lang/String;

    const-string v1, "cancelNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x134ffa0

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->notification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetService()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->service:Landroid/app/Service;

    return-void
.end method

.method public showServiceRunForeground(Landroid/app/Service;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_payment_ai_function_alias:I

    invoke-virtual {p1, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_asr_notification_title:I

    invoke-virtual {p1, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/NetworkNotificationController;->showNotification(Landroid/app/Service;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
