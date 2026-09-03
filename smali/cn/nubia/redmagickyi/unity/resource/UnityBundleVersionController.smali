.class public Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;
.super Ljava/lang/Object;
.source "UnityBundleVersionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$BundleRootManager;,
        Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$GamespaceBackgroundManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->getProperty(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method private static getProperty(Ljava/lang/String;)I
    .locals 3

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_app_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isBundleRootAvalid()Z
    .locals 1

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$BundleRootManager;->access$000()Z

    move-result v0

    return v0
.end method

.method public static isMasterBundleVersionV123()Z
    .locals 1

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$BundleRootManager;->access$100()Z

    move-result v0

    return v0
.end method

.method public static isNeedToRestoreGamespaceBackgroundSelected()Z
    .locals 1

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$GamespaceBackgroundManager;->access$200()Z

    move-result v0

    return v0
.end method

.method public static mergeBundleResource(Landroid/content/Context;)V
    .locals 5

    .line 40
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getBundleUpgradeInfo(Landroid/content/Context;)Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeInfo(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;)V

    .line 42
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->isAvailable(Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->getNewBundlePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->updateLocalBundlePath(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 44
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgrading(Landroid/content/Context;Z)V

    .line 45
    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->getNewVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->updateLocalBundleVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->getExpiredBundlePath()[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    .line 49
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 50
    aget-object v3, v0, v1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 56
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 61
    :cond_2
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static setProperty(Ljava/lang/String;I)V
    .locals 3

    .line 148
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_app_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
