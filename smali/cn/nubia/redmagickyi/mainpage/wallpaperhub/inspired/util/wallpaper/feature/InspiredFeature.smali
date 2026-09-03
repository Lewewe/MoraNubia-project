.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;
.super Ljava/lang/Object;
.source "InspiredFeature.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;
    .locals 0

    .line 21
    sget-object p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->INSPIRED:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    return-object p0
.end method

.method public getPreviewActivity(Landroid/app/Activity;)Ljava/lang/Class;
    .locals 0

    .line 47
    instance-of p0, p1, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageProxyActivity;

    if-eqz p0, :cond_0

    .line 48
    const-class p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityProxyActivity;

    goto :goto_0

    .line 50
    :cond_0
    const-class p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    :goto_0
    return-object p0
.end method

.method public getSaveConfigFileName()Ljava/lang/String;
    .locals 0

    .line 31
    const-string p0, "config.txt"

    return-object p0
.end method

.method public getSaveConfigKey()Ljava/lang/String;
    .locals 0

    .line 36
    const-string p0, "magic_elves_interaction_wallpaper_config"

    return-object p0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 0

    .line 26
    const-string p0, "wallpaper"

    return-object p0
.end method

.method public getSuccessText()I
    .locals 0

    .line 57
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->tec_center_interactive_wallpaper_open_success:I

    return p0
.end method

.method public getWallpaperServices()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Landroid/service/wallpaper/WallpaperService;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    .line 41
    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcn/nubia/redmagickyi/wallpaper/hub/inspired/service/WallPaperUnityService;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-class v1, Lcn/nubia/redmagickyi/wallpaper/WallPaperUnityService;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public isEnableWallPaper()Z
    .locals 0

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->enable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;->isSupportInteractiveWallpaper()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub;->enable()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->enable()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
