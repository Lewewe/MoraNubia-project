.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static final BUNDLE_KEY_FROM_MAINPAGE:Ljava/lang/String; = "from_mainpage"

.field public static final BUNDLE_KEY_SKIN_ID:Ljava/lang/String; = "skin_id"

.field private static final TAG:Ljava/lang/String; = "Feature"


# instance fields
.field private iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

.field private mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    .line 53
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    return-void
.end method


# virtual methods
.method public ClearWallpaper(Landroid/content/Context;)V
    .locals 1

    .line 194
    const-string p0, "Feature"

    const-string v0, "ClearWallpaper"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clearWallpaper()V

    return-void
.end method

.method public HasSetUnityWallPaper(Landroid/content/Context;)Z
    .locals 9

    .line 206
    const-string v0, "Feature"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getWallpaperServices()[Ljava/lang/Class;

    move-result-object p0

    .line 207
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 210
    array-length v4, p0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 211
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    const-string p0, "unity wallpapaer has set!! by new service"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getRunningProcesses(Landroid/content/Context;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 219
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p1, 0x7d

    if-ne p0, p1, :cond_2

    .line 223
    const-string p0, "unity wallpapaer has set!! by process name"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 229
    const-string p1, "unity wallpapaer check error!!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    :cond_2
    const-string p0, "unity wallpapaer not set!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public PreviewWallPaper(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 2

    .line 160
    instance-of v0, p1, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getPreviewActivity(Landroid/app/Activity;)Ljava/lang/Class;

    move-result-object p0

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p3, :cond_0

    .line 164
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 166
    :cond_0
    const-string p0, "skin_id"

    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string p0, "from_mainpage"

    invoke-virtual {p3, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz v0, :cond_1

    .line 171
    sget p0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_enter:I

    sget p2, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_exit:I

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public SetSuccess(Landroid/app/Activity;)V
    .locals 1

    .line 200
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getSuccessText()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 201
    invoke-static {p1, p0, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public checkEnableWallPaper(Landroid/content/Context;)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->isEnableWallPaper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setIamgeWallpaper(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getId()I
    .locals 0

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getIndex()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->getId()I

    move-result p0

    return p0
.end method

.method public getWallPaperChoosed()I
    .locals 2

    .line 190
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->NONE:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->getId()I

    move-result v0

    const-string v1, "magic_elves_wallpaper_choosed"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getWallPaperConfig()Ljava/lang/String;
    .locals 2

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getSaveConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWallPaperConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getSaveConfigFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " config getUnityConfigData:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Feature"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveWallPaperChoosed()V
    .locals 3

    .line 185
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->NONE:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature$INDEX;->getId()I

    move-result v1

    const-string v2, "magic_elves_wallpaper_choosed"

    invoke-static {v0, v2, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 186
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getId()I

    move-result p0

    invoke-static {v0, v2, p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public saveWallPaperConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getSaveConfigFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public saveWallPaperConfig(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getSaveConfigKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendSceneConfigToUnity(Landroid/content/Context;)V
    .locals 2

    .line 69
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v1, 0x3fb

    .line 70
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperConfig()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setConfig(Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public setIamgeWallpaper(Landroid/content/Context;)V
    .locals 8

    .line 246
    const-string v0, "setIamgeWallpaper -> release failed, "

    const-string v1, ""

    const-string v2, "Feature"

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 251
    :try_start_0
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 252
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_1

    .line 254
    :try_start_1
    const-string v3, "bm == null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 265
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    .line 271
    :try_start_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->switchBitmapToStream(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    if-eqz v6, :cond_2

    .line 259
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v6, 0x1

    .line 260
    :try_start_4
    invoke-virtual {v3, v7, v4, v6, v6}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v7

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v7

    goto :goto_9

    :catch_1
    move-object v4, v7

    goto :goto_4

    .line 265
    :cond_2
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 268
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    .line 271
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 274
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_9

    :catch_3
    move-object v5, v4

    .line 263
    :catch_4
    :goto_4
    :try_start_6
    const-string v3, "setIamgeWallpaper Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 265
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 268
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 271
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    .line 274
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_8
    return-void

    :catchall_2
    move-exception v3

    .line 265
    :goto_9
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v4, :cond_6

    .line 268
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_a

    :catch_6
    move-exception p0

    goto :goto_b

    :cond_6
    :goto_a
    if-eqz v5, :cond_7

    .line 271
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    .line 274
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_7
    :goto_c
    throw v3
.end method

.method public setLiveWallPaper(Landroid/content/Context;ZZ)V
    .locals 1

    .line 102
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaperNotSurpportRemagicOS(Landroid/content/Context;ZZ)V

    :goto_0
    return-void
.end method

.method public setLiveWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;ZZ)V
    .locals 3

    .line 130
    :try_start_0
    const-string v0, "Feature"

    const-string v1, "setLiveWallPaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getWallpaperServices()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->setWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->saveWallPaperChoosed()V

    if-eqz p2, :cond_2

    .line 139
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 140
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 141
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaperNotSurpportRemagicOS(Landroid/content/Context;ZZ)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaperNotSurpportRemagicOS(Landroid/content/Context;ZZ)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaperNotSurpportRemagicOS(Landroid/content/Context;ZZ)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaperNotSurpportRemagicOS(Landroid/content/Context;ZZ)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLiveWallPaperNotSurpportRemagicOS(Landroid/content/Context;ZZ)V
    .locals 2

    .line 111
    const-string p2, "setLiveWallPaper"

    const-string v0, "Feature"

    :try_start_0
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    .line 113
    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->mWallPaperUtils:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    const-string v1, ""

    invoke-virtual {p3, p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->saveImageWallPaperCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 116
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getWallpaperServices()[Ljava/lang/Class;

    move-result-object p0

    const/4 p3, 0x0

    aget-object p0, p0, p3

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p0, p3, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->setWallPaperNotSurpportRemagicOS(Landroid/content/Context;Ljava/lang/Class;Ljava/io/File;Ljava/lang/Integer;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->saveWallPaperChoosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public switchScene(Landroid/content/Context;)V
    .locals 2

    .line 57
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v1, 0x3f2

    .line 58
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 59
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->iFeature:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/IFeature;->getSceneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperConfig()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setConfig(Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method
