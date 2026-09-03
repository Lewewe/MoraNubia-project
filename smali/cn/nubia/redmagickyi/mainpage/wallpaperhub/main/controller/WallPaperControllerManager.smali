.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;
.super Ljava/lang/Object;
.source "WallPaperControllerManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;


# instance fields
.field private context:Landroid/app/Activity;

.field private dataCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

.field private dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

.field private inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

.field private staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->context:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dataCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    return-void
.end method


# virtual methods
.method public getController(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->getWallPaperType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    return-object p0

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->getWallPaperType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    return-object p0

    .line 56
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    return-object p0
.end method

.method public gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->getController(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    move-result-object v0

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->context:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->gotoPreview(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V

    return-void
.end method

.method public init(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V
    .locals 2

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    .line 29
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    return-void
.end method

.method public isHaveNewAdd()Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->isHaveNewAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->isHaveNewAdd()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 85
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->isHaveNewAdd()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isLoadComplete()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->isLoaded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadData()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->loadData()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->loadData()V

    .line 45
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->loadData()V

    :cond_2
    return-void
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z
    .locals 1

    .line 73
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->getController(I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z

    move-result p0

    return p0
.end method

.method public onLoadComplete()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->isLoadComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dataCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;->onLoadComplete()V

    :cond_0
    return-void
.end method

.method public onLoadFailed()V
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dataCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;->onLoadFailed()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->staticsController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/StaticsController;->release()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->dynamicController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DynamicController;->release()V

    .line 67
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->inspiredController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->release()V

    :cond_2
    return-void
.end method
