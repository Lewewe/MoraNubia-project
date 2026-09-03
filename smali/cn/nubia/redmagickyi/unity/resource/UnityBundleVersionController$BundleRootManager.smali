.class Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$BundleRootManager;
.super Ljava/lang/Object;
.source "UnityBundleVersionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BundleRootManager"
.end annotation


# static fields
.field private static final BUNDLE_RESTORE_CODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$BundleRootManager;->isAvalid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController$BundleRootManager;->isMasterBundleVersionV123()Z

    move-result v0

    return v0
.end method

.method private static isAvalid()Z
    .locals 4

    .line 83
    const-string v0, "pref_app_bundle_restore_code"

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->access$300(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v3, v1, :cond_0

    .line 84
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getLocalBundlePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->access$400(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 102
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->updateLocalBundlePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->updateLocalBundleVersion(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method private static isMasterBundleVersionV123()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
