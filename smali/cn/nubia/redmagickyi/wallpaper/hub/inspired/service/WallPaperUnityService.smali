.class public Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;
.super Landroid/service/wallpaper/WallpaperService;
.source "WallPaperUnityService.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;
.implements Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;
    }
.end annotation


# static fields
.field public static instance:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;


# instance fields
.field private final CHECK_UNITY_LAUNCH_TIMEOUT:I

.field private DATABASE_NAME:Ljava/lang/String;

.field private DESK_IS_VISIBEL:Z

.field private FIRST_START:Z

.field public final FLOAT_VIEW_HIDE:I

.field public final FLOAT_VIEW_SHOW:I

.field private HAS_CARE_THIS_TIME:Z

.field private final MSG_FJT_SHOW:I

.field private final TAG:Ljava/lang/String;

.field audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

.field bitmapTostring:Z

.field private bm:Landroid/graphics/Bitmap;

.field canOnClickToUnity:Z

.field private volatile cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

.field private floatView:Lcn/nubia/redmagickyi/care/utils/FloatView;

.field handler:Landroid/os/Handler;

.field private isMyOS:Z

.field private volatile isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

.field lastBgOrientation:Ljava/lang/Boolean;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private mVisibleSurfaces:I

.field modleinitfinish:Z

.field redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

.field screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

.field private strBitmapLandscape:Ljava/lang/String;

.field private strBitmapPort:Ljava/lang/String;

.field unitywallpaperinitfinish:Z

.field wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 95
    const-string v0, "WallPaperUnityService"

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 96
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FLOAT_VIEW_SHOW:I

    const/16 v0, 0x3e8

    .line 97
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FLOAT_VIEW_HIDE:I

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->CHECK_UNITY_LAUNCH_TIMEOUT:I

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->MSG_FJT_SHOW:I

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    .line 107
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->canOnClickToUnity:Z

    .line 115
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    .line 116
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->HAS_CARE_THIS_TIME:Z

    .line 117
    const-string v1, "redmagickyi.db"

    iput-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    .line 118
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    .line 282
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$3;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Landroid/graphics/Bitmap;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapPort:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->fjtShow()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/care/utils/FloatView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->floatView:Lcn/nubia/redmagickyi/care/utils/FloatView;

    return-object p0
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/care/utils/FloatView;
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->floatView:Lcn/nubia/redmagickyi/care/utils/FloatView;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->initWallPaper()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I
    .locals 0

    .line 94
    iget p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    return p0
.end method

.method static synthetic access$1402(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    return p1
.end method

.method static synthetic access$1408(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I
    .locals 2

    .line 94
    iget v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    return v0
.end method

.method static synthetic access$1410(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)I
    .locals 2

    .line 94
    iget v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mVisibleSurfaces:I

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    return p0
.end method

.method static synthetic access$1502(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->fjtHide()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->scheduleUnityLaunchTimeoutLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isMyOS:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapLandscape:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->updateWallpaperBackground(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->HAS_CARE_THIS_TIME:Z

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)Lcn/nubia/redmagickyi/util/CPUBoostManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    return-object p0
.end method

.method private fjtHide()V
    .locals 1

    .line 354
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;-><init>()V

    const/16 v0, 0x44e

    .line 357
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setMsgID(I)V

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setScale(I)V

    .line 359
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    :cond_0
    return-void
.end method

.method private fjtShow()V
    .locals 1

    .line 345
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 346
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;-><init>()V

    const/16 v0, 0x44e

    .line 347
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setMsgID(I)V

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->setScale(I)V

    .line 349
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    :cond_0
    return-void
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

    .line 933
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 934
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isMyOS:Z

    if-eqz v1, :cond_0

    .line 935
    const-string v1, "com.zte.mifavor.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 938
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 940
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 941
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

    .line 942
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 943
    const-string v2, "cn.nubia.gamelauncher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 944
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private initAudioCallback()V
    .locals 1

    .line 215
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$2;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    return-void
.end method

.method private initWallPaper()V
    .locals 4

    .line 167
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getImageWallPaperCache(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapPort:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getImageWallPaperCache(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapLandscape:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapPort:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapLandscape:Ljava/lang/String;

    .line 175
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapPort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapLandscape:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    const-string v0, "have cached bitmap"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 207
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bitmapTostring:Z

    .line 208
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->updateWallpaperBackground(Z)V

    goto :goto_2

    .line 176
    :cond_3
    :goto_1
    const-string v0, "no cached bitmap"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$1;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_2
    return-void
.end method

.method private isHomeWin()Z
    .locals 4

    .line 951
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 956
    :cond_0
    invoke-static {}, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->getVisibleActivity()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 957
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 958
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, v0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 964
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 965
    invoke-virtual {v3, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 966
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 967
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 972
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getHomes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_3
    return v2
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 447
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 448
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 449
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 451
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    .line 453
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->scheduleUnityLaunchTimeoutUnlocked()V

    .line 454
    const-class v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    :cond_1
    const/16 v2, 0x7d7

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_3

    .line 458
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkin(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2, v5, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    .line 460
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 461
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v6

    invoke-virtual {v2, v6, v5}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    .line 462
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->sendPreviewMessageToUnity(Z)V

    .line 463
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->modleinitfinish:Z

    .line 464
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getResources()Landroid/content/res/Resources;

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
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->updateWallpaperBackground(Z)V

    .line 465
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    if-eqz v2, :cond_3

    .line 466
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->releaseCPUBoost()V

    :cond_3
    const/16 v2, 0x7d1

    if-ne v1, v2, :cond_4

    .line 470
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->sendMotionTrack(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v2

    const-string v6, "interaction_wallpaper_touch"

    const-string v7, "mora"

    const-string v8, "cn.nubia.launcher"

    const-string v9, "interaction_dynamic_wallpaper"

    invoke-virtual {v2, v8, v9, v6, v7}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x7da

    if-ne v1, v2, :cond_5

    .line 474
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 475
    const-string v6, "isPause"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unity status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "WallPaperUnityService"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_0

    .line 479
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->unitywallpaperinitfinish:Z

    .line 481
    sget-object v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_7

    sget-object v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;

    iget-object v1, v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 482
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v2, v1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->updateWallpaperBackground(Z)V

    goto/16 :goto_0

    .line 484
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->updateWallpaperBackground(Z)V

    goto/16 :goto_0

    .line 488
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 491
    :cond_a
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private scheduleUnityLaunchTimeoutLocked()V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1030
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isMyOS:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x4e20

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    :goto_0
    const/4 v2, 0x0

    .line 1031
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    .line 1032
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    if-nez v2, :cond_2

    .line 1033
    new-instance v2, Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/util/CPUBoostManager;-><init>()V

    iput-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    .line 1034
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/redmagickyi/util/CPUBoostManager;->requestCPUBoost(J)V

    .line 1036
    :cond_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scheduleUnityLaunchTimeoutUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 1041
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isUnityLaunchTimeoutUnlocked:Ljava/lang/Boolean;

    .line 1042
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendMotionTrack(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1047
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 1048
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    move-object v1, p1

    .line 1049
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 1051
    const-string v3, "partName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1054
    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 1057
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v1, :cond_7

    .line 1060
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1062
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v1, v3

    goto :goto_2

    :sswitch_0
    const-string/jumbo v1, "xiong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_1
    const-string v1, "shou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_2
    const-string v1, "tui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "tou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_4
    const-string v2, "fu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1068
    :pswitch_0
    const-string p1, "mora_touch_xiong"

    goto :goto_3

    .line 1074
    :pswitch_1
    const-string p1, "mora_touch_shou"

    goto :goto_3

    .line 1077
    :pswitch_2
    const-string p1, "mora_touch_tui"

    goto :goto_3

    .line 1065
    :pswitch_3
    const-string p1, "mora_touch_tou"

    goto :goto_3

    .line 1071
    :pswitch_4
    const-string p1, "mora_touch_fu"

    :goto_3
    if-eqz p1, :cond_7

    .line 1082
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mora_interaction_wallpaper_touch"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, p0, v1, p1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0xccf -> :sswitch_4
        0x1c15a -> :sswitch_3
        0x1c208 -> :sswitch_2
        0x35dafb -> :sswitch_1
        0x6cc6dd7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWallpaperBackground(Z)V
    .locals 5

    const-string v0, "bm != null, orientation = "

    .line 506
    :try_start_0
    const-string v1, "SET_WALLPAPER_BACKGROUND"

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->unitywallpaperinitfinish:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->modleinitfinish:Z

    if-eqz v1, :cond_0

    .line 509
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;-><init>()V

    const/16 v4, 0x44d

    .line 510
    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setMsgID(I)V

    .line 511
    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setOrientation(I)V

    .line 512
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 514
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->bitmapTostring:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->modleinitfinish:Z

    if-eqz v1, :cond_5

    .line 516
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->lastBgOrientation:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    .line 518
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_3

    .line 519
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 521
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 525
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastBgOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->lastBgOrientation:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    if-eqz v2, :cond_6

    .line 527
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->lastBgOrientation:Ljava/lang/Boolean;

    .line 528
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    const/16 v1, 0x3f7

    .line 529
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    if-eqz p1, :cond_4

    .line 530
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapLandscape:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->strBitmapPort:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 531
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    goto :goto_3

    .line 534
    :cond_5
    const-string p1, "bm == null"

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 537
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method Log(Ljava/lang/String;)V
    .locals 0

    .line 110
    const-string p0, "WallPaperUnityService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnRedmagicCareCallback(I)V
    .locals 3

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "got care type\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallPaperUnityService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->modleinitfinish:Z

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->HAS_CARE_THIS_TIME:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->HAS_CARE_THIS_TIME:Z

    .line 553
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->UpdateCurrentCareTimes(I)V

    .line 554
    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->SendCaredDataToUnity(I)V

    .line 557
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->getCareTypeInt(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 560
    const-string p1, "mora_care_device"

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 562
    const-string p1, "mora_care_life"

    goto :goto_0

    .line 564
    :cond_3
    const-string p1, "mora_care_work"

    .line 566
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mora_care"

    const-string v2, "mora_care_action"

    invoke-virtual {v0, p0, v1, v2, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 549
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "not care\uff1a"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 440
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ScreenOn()Z
    .locals 1

    .line 979
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 980
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 982
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public ScreenUnLock()Z
    .locals 2

    const/4 v0, 0x0

    .line 989
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 992
    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 993
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 996
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public StartCare()V
    .locals 2

    .line 662
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->HasCheckCareItem(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const-string v0, "WallPaperUnityService"

    const-string v1, "start care:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 664
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->HAS_CARE_THIS_TIME:Z

    .line 665
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->StartCare()V

    :cond_0
    return-void
.end method

.method public StartDelayedCareTime()V
    .locals 4

    .line 631
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "WallPaperUnityService"

    if-nez v0, :cond_0

    .line 632
    const-string p0, "getDatabasePath(DATABASE_NAME).exists() not exit"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 635
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->HasCheckCareItem(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-nez v0, :cond_2

    .line 645
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    .line 646
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->setRedmagicCareCallback(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;)V

    .line 648
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$4;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 636
    :cond_3
    :goto_0
    const-string v0, "not StartCare() not open care item"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-eqz v0, :cond_4

    .line 638
    const-string v0, "redmagicManagerCallback.onDestory()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->onDestory()V

    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    :cond_4
    return-void
.end method

.method public bindShakeListener()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    const-string p0, "WallPaperUnityService"

    const-string v0, "getDatabasePath(DATABASE_NAME).exists() not exit"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1006
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->HasOpenSystemCare(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-nez v0, :cond_1

    .line 1008
    new-instance v0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    .line 1009
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->setRedmagicCareCallback(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$RedmagicCareInterface;)V

    .line 1011
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-eqz p0, :cond_2

    .line 1012
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->bindShakeListenerService()V

    :cond_2
    return-void
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 0

    .line 279
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getInstance()Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;)V

    sput-object v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;

    .line 393
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->instance:Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;
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

    .line 433
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 415
    const-string v0, "TAG"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 418
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 420
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->updateWallpaperBackground(Z)V

    .line 423
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 426
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->floatView:Lcn/nubia/redmagickyi/care/utils/FloatView;

    if-eqz p0, :cond_4

    .line 427
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/utils/FloatView;->UpdateFloatView()V

    :cond_4
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 124
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 125
    const-string v0, "onCreate"

    const-string v1, "WallPaperUnityService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->checkEnableWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string p0, "wallpaper unsupported."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changed wallpaper component is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 138
    :try_start_0
    const-class v3, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string v0, "unity wallpaper is not in use"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 148
    :catch_0
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isMyOS:Z

    .line 149
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 150
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->initWallPaper()V

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_4

    .line 152
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 154
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_5

    .line 155
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 157
    :cond_5
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 159
    const-string v0, "onCreate ()!!"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    .line 161
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->StartScreenBrocastReceiver()V

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->setScreenOnStatusListener(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;)V

    .line 163
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->initAudioCallback()V

    .line 164
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getInstance()Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService$MyEngine;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 364
    const-string v0, "onDestroy()!!!"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->Log(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 368
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->onDestory()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->audioCallback:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    if-eqz v0, :cond_2

    .line 374
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    .line 376
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    if-eqz p0, :cond_3

    .line 377
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->UnRegisterReceiver()V

    :cond_3
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 397
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onLowMemory()V

    .line 398
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
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
    .locals 4

    .line 571
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->onScreenOnStatus(Landroid/content/Context;Landroid/content/Intent;)V

    .line 574
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    const/4 v1, 0x0

    const-string v2, "WallPaperUnityService"

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    .line 577
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 578
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->StartDelayedCareTime()V

    .line 579
    const-string v0, "resume onScreenOnStatusListener start care:"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    if-eqz v0, :cond_2

    .line 581
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->FIRST_START:Z

    .line 582
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 583
    const-string v0, "resume FIRST_START"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_2
    const-string v0, "WallPaperStop stop"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 588
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 589
    const-string p1, "onScreenOnStatusListener:open screen"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p1, :cond_8

    .line 592
    invoke-virtual {p1, v3}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 593
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    goto/16 :goto_1

    .line 595
    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    iget-object p2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->handler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 597
    iget-object p2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 598
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_lock_time"

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    const-string p1, "onScreenOnStatusListener:lock screen"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result p1

    if-nez p1, :cond_8

    .line 604
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->fjtHide()V

    .line 606
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_8

    .line 607
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->WallPaperStop(Lcom/unity3d/player/UnityPlayer;)V

    goto :goto_1

    .line 611
    :cond_5
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 613
    const-string p1, "onScreenOnStatusListener:unlock screen"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 615
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    .line 616
    const-string p0, "onScreenOnStatusListener !getDatabasePath(DATABASE_NAME).exists()"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 619
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->ScreenUnLock()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->DESK_IS_VISIBEL:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->isHomeWin()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 620
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsMuteStatus(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 621
    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    goto :goto_1

    .line 623
    :cond_7
    invoke-static {v3, v3}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 405
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 407
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 408
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

.method public unbindShakeListener()V
    .locals 0

    .line 1018
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;->redmagicManagerCallback:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    if-eqz p0, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;->unbindShakeListenerService()V

    :cond_0
    return-void
.end method
