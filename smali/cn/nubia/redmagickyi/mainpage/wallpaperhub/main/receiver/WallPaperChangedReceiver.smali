.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/receiver/WallPaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallPaperChangedReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"

.field public static final TAG:Ljava/lang/String; = "WallpaperChangedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 3

    .line 45
    const-string v0, "WallpaperChangedReceiver"

    const-string v1, "regist WALLPAPER_CHANGED receiver completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/receiver/WallPaperChangedReceiver;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/receiver/WallPaperChangedReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 24
    const-string p0, "WallpaperChangedReceiver"

    :try_start_0
    const-string p2, "receive wallpaper changed"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object p2

    const/4 v0, 0x0

    .line 26
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_0

    .line 27
    const-string v1, "Desktop"

    goto :goto_1

    :cond_0
    const-string v1, "LockScreen"

    .line 28
    :goto_1
    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed wallpaper component is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wallpaperType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const-string v1, "unity wallpaper set success!!"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->handleLiveWallPaperChanged([Landroid/app/WallpaperInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_2
    return-void
.end method
