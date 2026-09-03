.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;
.source "BaseInspiredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private skinNetworkCallback:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V

    .line 114
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->registChangeSkinNetworkCallback()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadFailed()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadComplete()V

    return-void
.end method

.method private getStatusBarHeight(Landroid/app/Activity;)I
    .locals 0

    .line 95
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 97
    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private onLoadComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->isOfflineMode()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->updateWallPaperList(ZLjava/util/List;)V

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadComplete()V

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    :goto_0
    return-void
.end method

.method private registChangeSkinNetworkCallback()V
    .locals 1

    .line 107
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->skinNetworkCallback:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;)V

    return-void
.end method

.method private unregistChangeSkinNetworkCallback()V
    .locals 0

    .line 111
    const-class p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWallPaperType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 1

    .line 89
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v0, "margin_top"

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-class p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->getSkinId()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->PreviewWallPaper(Landroid/app/Activity;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 35
    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    return-void
.end method

.method public abstract isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
.end method

.method public loadData()V
    .locals 1

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->enable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkins()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadComplete(Ljava/util/List;)V

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->onLoadComplete(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected onMergeComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 162
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$4;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$4;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->release()V

    .line 103
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->unregistChangeSkinNetworkCallback()V

    return-void
.end method
