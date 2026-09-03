.class public Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;
.super Landroid/service/wallpaper/WallpaperService;
.source "WallPaperPetService.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;
.implements Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;
    }
.end annotation


# static fields
.field public static instance:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;


# instance fields
.field private final CHECK_UNITY_LAUNCH_TIMEOUT:I

.field private DESK_IS_VISIBEL:Z

.field private FIRST_START:Z

.field private final TAG:Ljava/lang/String;

.field audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

.field canOnClickToUnity:Z

.field private volatile cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

.field handler:Landroid/os/Handler;

.field private isMyOS:Z

.field private volatile isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private mVisibleSurfaces:I

.field modleinitfinish:Z

.field private petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

.field screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

.field unitywallpaperinitfinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 73
    const-string v0, "WallPaperPetService"

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->CHECK_UNITY_LAUNCH_TIMEOUT:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    .line 78
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->canOnClickToUnity:Z

    .line 84
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->DESK_IS_VISIBEL:Z

    .line 85
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    .line 152
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$2;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcn/nubia/redmagickyi/util/CPUBoostManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->updateWallpaperBackground(Z)V

    return-void
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->DESK_IS_VISIBEL:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    return p1
.end method

.method static synthetic access$508(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I
    .locals 2

    .line 72
    iget v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    return v0
.end method

.method static synthetic access$510(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)I
    .locals 2

    .line 72
    iget v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mVisibleSurfaces:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->scheduleUnityLaunchTimeoutLocked()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isMyOS:Z

    return p0
.end method

.method private getHomes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 542
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isMyOS:Z

    if-eqz v1, :cond_0

    .line 543
    const-string v1, "com.zte.mifavor.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 548
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 549
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 550
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 551
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initAudioCallback()V
    .locals 1

    .line 115
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$1;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    return-void
.end method

.method private isHomeWin()Z
    .locals 3

    .line 559
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 563
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isMyOS:Z

    if-eqz v0, :cond_1

    return v1

    .line 567
    :cond_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 568
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 571
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getHomes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    return v2
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 241
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 242
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 243
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 245
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    .line 247
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->scheduleUnityLaunchTimeoutUnlocked()V

    .line 248
    const-class v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    :cond_1
    const/16 v2, 0x7d7

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_3

    .line 252
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->setPetStyle(Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;Z)V

    .line 254
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 255
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v6

    invoke-virtual {v2, v6, v5}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    .line 256
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->sendPreviewMessageToUnity(Z)V

    .line 257
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->modleinitfinish:Z

    .line 258
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->updateWallpaperBackground(Z)V

    .line 259
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    if-eqz v2, :cond_3

    .line 260
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->releaseCPUBoost()V

    :cond_3
    const/16 v2, 0x7da

    if-ne v1, v2, :cond_4

    .line 264
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v6, "isPause"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unity status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "WallPaperPetService"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_0

    .line 269
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->unitywallpaperinitfinish:Z

    .line 271
    sget-object v1, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_6

    sget-object v1, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 272
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v2, v1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->updateWallpaperBackground(Z)V

    goto/16 :goto_0

    .line 274
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->updateWallpaperBackground(Z)V

    goto/16 :goto_0

    .line 278
    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 281
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private scheduleUnityLaunchTimeoutLocked()V
    .locals 4

    .line 604
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isMyOS:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x4e20

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    :goto_0
    const/4 v2, 0x0

    .line 608
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    .line 609
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    if-nez v2, :cond_2

    .line 610
    new-instance v2, Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/CPUBoostManager;-><init>()V

    iput-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    .line 611
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->requestCPUBoost(J)V

    .line 613
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleUnityLaunchTimeoutUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 618
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    .line 619
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateWallpaperBackground(Z)V
    .locals 1

    .line 296
    :try_start_0
    const-string v0, "SET_WALLPAPER_BACKGROUND"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->unitywallpaperinitfinish:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->modleinitfinish:Z

    if-eqz p0, :cond_0

    .line 299
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;-><init>()V

    const/16 v0, 0x44d

    .line 300
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setMsgID(I)V

    .line 301
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setOrientation(I)V

    .line 302
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method Log(Ljava/lang/String;)V
    .locals 0

    .line 81
    const-string p0, "WallPaperPetService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 234
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ScreenOn()Z
    .locals 1

    .line 578
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 579
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 581
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public ScreenUnLock()Z
    .locals 2

    const/4 v0, 0x0

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 591
    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 592
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 595
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getInstance()Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;)V

    sput-object v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;

    .line 198
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 227
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 216
    const-string v0, "TAG"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 219
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isHomeWin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->updateWallpaperBackground(Z)V

    .line 222
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 93
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->checkEnableWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isMyOS:Z

    .line 97
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_3

    .line 99
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 101
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 102
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    .line 103
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 104
    const-string v0, "onCreate ()!!"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    .line 106
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->StartScreenBrocastReceiver()V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->setScreenOnStatusListener(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;)V

    .line 108
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->initAudioCallback()V

    .line 109
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->getInstance()Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService$MyEngine;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 175
    const-string v0, "onDestroy()!!!"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->Log(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 177
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    if-eqz v0, :cond_0

    .line 179
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    .line 181
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    if-eqz p0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->UnRegisterReceiver()V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 202
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onLowMemory()V

    .line 203
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 0

    return-void
.end method

.method public onPermissionRequested()V
    .locals 0

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    return-void
.end method

.method public onScreenOnStatusListener(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 312
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->DESK_IS_VISIBEL:Z

    const/4 v0, 0x0

    const-string v1, "WallPaperPetService"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    .line 315
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 316
    const-string p1, "resume onScreenOnStatusListener start care:"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    if-eqz p1, :cond_1

    .line 318
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->FIRST_START:Z

    .line 319
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 320
    const-string p1, "resume FIRST_START"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_1
    const-string p1, "WallPaperStop stop"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 325
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 326
    const-string p1, "onScreenOnStatusListener:open screen"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isHomeWin()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result p1

    if-nez p1, :cond_4

    .line 329
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 330
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    goto :goto_1

    .line 332
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 333
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->isHomeWin()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->ScreenUnLock()Z

    move-result p1

    if-nez p1, :cond_4

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->WallPaperStop(Lcom/unity3d/player/UnityPlayer;)V

    goto :goto_1

    .line 337
    :cond_3
    const-string p0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 339
    const-string p0, "onScreenOnStatusListener:unlock screen"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 210
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/desktoppet/service/WallPaperPetService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 0

    return-void
.end method
