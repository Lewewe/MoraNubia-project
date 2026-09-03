.class public abstract Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "BundleLoadManager.java"


# static fields
.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_LOAD_FAILED:I = 0x4

.field private static final STATE_LOAD_PREPARE:I = 0x0

.field private static final STATE_LOAD_SUCCESS_HAS_UPGRADE:I = 0x3

.field private static final STATE_LOAD_SUCCESS_NOT_UPGRADE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BundleLoadManager"


# instance fields
.field private volatile state:I


# direct methods
.method public varargs constructor <init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->state:I

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->state:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->getNoBundleVersionUpgrade()V

    return-void
.end method

.method private getNoBundleVersionUpgrade()V
    .locals 2

    .line 93
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgrading(Landroid/content/Context;Z)V

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->onNoBundleVersionUpgrade()V

    return-void
.end method


# virtual methods
.method public doLoad()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->state:I

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;-><init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;)V

    .line 89
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->load()Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;

    return-void
.end method

.method public load()V
    .locals 2

    .line 30
    iget v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->getNoBundleVersionUpgrade()V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->doLoad()V

    :goto_0
    return-void
.end method

.method protected abstract onHasBundleVersionUpgrade(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V
.end method

.method protected abstract onNoBundleVersionUpgrade()V
.end method
