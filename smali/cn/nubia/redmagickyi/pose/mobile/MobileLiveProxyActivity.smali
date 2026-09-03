.class public Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;
.super Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;
.source "MobileLiveProxyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileLiveProxyActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;-><init>()V

    return-void
.end method

.method private checkRelaunch()V
    .locals 3

    .line 33
    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->isLiveRelaunching(Landroid/content/Context;)Z

    move-result v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is relaunching: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobileLiveProxyActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->live_scene_loading:I

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 38
    :cond_0
    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->setLiveRelaunching(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected onGuideDismiss()V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;->startLiveService()V

    .line 19
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NUBIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHENQIJIYUAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected final startLiveService()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;->checkRelaunch()V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveProxyActivity;->moveTaskToBack(Z)Z

    return-void
.end method
