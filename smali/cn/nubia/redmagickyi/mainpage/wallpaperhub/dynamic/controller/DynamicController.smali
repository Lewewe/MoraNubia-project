.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;
.source "DynamicController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
        ">;"
    }
.end annotation


# instance fields
.field private dynamicListLoadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->onLoadComplete()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->onLoadFailed()V

    return-void
.end method

.method private getStatusBarHeight(Landroid/app/Activity;)I
    .locals 0

    .line 80
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 82
    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWallPaperType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 2

    .line 69
    invoke-static {p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->setPreviewCallback(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    .line 70
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/DynamicOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "data"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    const-string v0, "position"

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->indexOfBean(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string p2, "margin_top"

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string p0, "margin_bottom"

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getVirtualBarHeigh(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p0, 0x3e9

    .line 75
    invoke-virtual {p1, p3, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    sget p0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_enter:I

    sget p2, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_open_exit:I

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

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

    .line 27
    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->onLoadFailed()V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->dynamicListLoadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    .line 58
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->load()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->release()V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->dynamicListLoadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->cancel()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->dynamicListLoadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    :cond_0
    return-void
.end method
