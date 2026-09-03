.class public Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;
.super Ljava/lang/Object;
.source "UnityBundleLocaleDataManager.java"


# static fields
.field public static final PREF_APP_BUNDLE_PATH:Ljava/lang/String; = "pref_app_bundle_path"

.field public static final PREF_APP_BUNDLE_RESTORE_CODE:Ljava/lang/String; = "pref_app_bundle_restore_code"

.field public static final PREF_APP_BUNDLE_UPGRADE:Ljava/lang/String; = "pref_app_bundle_upgrade"

.field public static final PREF_APP_BUNDLE_UPGRADE_DESCRIPTION:Ljava/lang/String; = "pref_app_bundle_upgrade_description"

.field public static final PREF_APP_BUNDLE_UPGRADE_INFO:Ljava/lang/String; = "pref_app_bundle_upgrade_info"

.field public static final PREF_APP_BUNDLE_VERSION:Ljava/lang/String; = "pref_app_bundle_version"

.field public static final PREF_APP_GAMESPACE_BG_SELECTED_RESTORE_CODE:Ljava/lang/String; = "pref_app_gamespace_bg_selected_restore_code"

.field public static final PREF_APP_INFO:Ljava/lang/String; = "pref_app_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBundleUpgrade(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgrading(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeInfo(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;)V

    return-void
.end method

.method public static clearLocalBundle(Landroid/content/Context;)V
    .locals 1

    .line 71
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->updateLocalBundlePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->updateLocalBundleVersion(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 88
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 90
    aget-object v2, p0, v0

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-nez v2, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    array-length p0, p0

    array-length p1, p1

    sub-int v2, p0, p1

    :goto_1
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static getBundleUpgradeDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 36
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_app_bundle_upgrade_description"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleUpgradeInfo(Landroid/content/Context;)Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;
    .locals 2

    .line 45
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_app_bundle_upgrade_info"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBundlePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 61
    const-string v0, "pref_app_bundle_path"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBundleVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 50
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 51
    const-string v0, "pref_app_bundle_version"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBundleUpgrading(Landroid/content/Context;)Z
    .locals 2

    .line 27
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_app_bundle_upgrade"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setBundleUpgradeDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 30
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 32
    const-string v0, "pref_app_bundle_upgrade_description"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setBundleUpgradeInfo(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;)V
    .locals 2

    .line 39
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_0

    .line 41
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;->toJson()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "pref_app_bundle_upgrade_info"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setBundleUpgrading(Landroid/content/Context;Z)V
    .locals 2

    .line 21
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 23
    const-string v0, "pref_app_bundle_upgrade"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateLocalBundlePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 66
    const-string v0, "pref_app_bundle_path"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static updateLocalBundleVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 54
    const-string v0, "pref_app_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 56
    const-string v0, "pref_app_bundle_version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
