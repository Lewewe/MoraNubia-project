.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;
.source "BaseStaticsListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/controller/BaseStaticsListLoadController;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StaticsListLoadManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperListLoadManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method


# virtual methods
.method protected getLoadController()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
    .locals 1

    .line 32
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)V

    return-object v0
.end method

.method protected getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;
    .locals 0

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsOnlineDataManager;

    move-result-object p0

    return-object p0
.end method
