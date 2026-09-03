.class Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;
.super Ljava/lang/Object;
.source "HasMoreResourceBundleController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HasMoreResourceBundleController"


# instance fields
.field private bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

.field private queryingNewestBundle:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->queryingNewestBundle:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->queryingNewestBundle:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private convertToIntArray(Ljava/lang/String;)[I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length v0, p1

    new-array v0, v0, [I

    .line 123
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 125
    aget-object v1, p1, p0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 116
    :cond_2
    :goto_1
    new-array p0, p0, [I

    return-object p0
.end method

.method private queryNewestBundle()V
    .locals 2

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->queryingNewestBundle:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->queryingNewestBundle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController$1;

    const/4 v1, 0x0

    new-array v1, v1, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    .line 71
    :cond_1
    const-string v0, "HasMoreResourceBundleController"

    const-string v1, "Querying newest bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->bundleLoadManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->doLoad()V

    :cond_2
    return-void
.end method


# virtual methods
.method public hasMore()Z
    .locals 4

    .line 32
    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->isBundleRootAvalid()Z

    move-result v0

    const-string v2, "HasMoreResourceBundleController"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getLocalBundlePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->queryNewestBundle()V

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getBundleUpgradeDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->isBundleSkinUpdated(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 41
    const-string p0, "Has more bcs skin updated."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_0
    const-string p0, "Has more bcs no bundle resource found."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public isBundleSkinUpdated(Ljava/lang/String;)Z
    .locals 4

    .line 81
    const-string v0, "HasMoreResourceBundleController"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 85
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x1

    .line 88
    :try_start_1
    const-string v3, "force_newskin_tips"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v3, p1, :cond_1

    .line 91
    :try_start_2
    const-string p0, "Force new skin tips."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    .line 96
    :catch_0
    :cond_1
    :try_start_3
    const-string v3, "digitalhuman_skins"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->convertToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/util/MathUtils;->isContentEqual([ILjava/util/List;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    xor-int/2addr p0, p1

    goto :goto_0

    :catch_1
    move p0, v2

    :goto_0
    if-eqz p0, :cond_2

    .line 101
    :try_start_4
    const-string p1, "DigitalHuman skins changed."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    return p0

    :catch_2
    move-exception p0

    .line 105
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v2
.end method
