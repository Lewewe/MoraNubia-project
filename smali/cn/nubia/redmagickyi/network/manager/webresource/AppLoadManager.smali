.class public Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "AppLoadManager.java"


# static fields
.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_LOAD_FAILED:I = 0x4

.field private static final STATE_LOAD_PREPARE:I = 0x0

.field private static final STATE_LOAD_SUCCESS_HAS_UPGRADE:I = 0x3

.field private static final STATE_LOAD_SUCCESS_NOT_UPGRADE:I = 0x2


# instance fields
.field private volatile state:I


# direct methods
.method public varargs constructor <init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->state:I

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->state:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->getNoAppVersionUpgrade()V

    return-void
.end method

.method private doLoad()V
    .locals 3

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->net_work_bad:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 61
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 62
    iput v1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->state:I

    .line 63
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;)V

    .line 86
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;->load()Lcn/nubia/redmagickyi/network/controller/BaseAppLoadController;

    return-void
.end method

.method private getNoAppVersionUpgrade()V
    .locals 2

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->setAppVersionUpgrading(Landroid/content/Context;Z)V

    .line 91
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->net_work_bad:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->next()V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 2

    .line 33
    iget v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->getNoAppVersionUpgrade()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->doLoad()V

    :goto_0
    return-void
.end method
