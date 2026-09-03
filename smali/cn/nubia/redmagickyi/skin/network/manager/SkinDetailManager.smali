.class public Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "SkinDetailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;

.field private controller:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;

.field private id:I


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 19
    const-string v0, "SkinDetailManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->TAG:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->id:I

    .line 26
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->onSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->isCanceled:Z

    return p0
.end method

.method private onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method private onSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->controller:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;->cancel()V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 3

    .line 43
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 44
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)V

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->id:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->loadDetail(Ljava/lang/String;I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->controller:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;

    return-void
.end method
