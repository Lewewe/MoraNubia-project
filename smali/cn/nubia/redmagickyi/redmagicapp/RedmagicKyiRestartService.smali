.class public Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiRestartService;
.super Landroid/app/IntentService;
.source "RedmagicKyiRestartService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RedmagicKyiRestartService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const-string v0, "RedmagicKyiRestartService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 p0, 0x0

    .line 48
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 22
    const-string p1, "RedmagicKyiRestartService"

    const-string v0, "onHandleIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 30
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiRestartService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiRestartService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiRestartService;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.main"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    const-string v1, "activity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiRestartService;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
