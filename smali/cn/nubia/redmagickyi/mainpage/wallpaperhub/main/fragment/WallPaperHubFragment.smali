.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;
.super Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
.source "WallPaperHubFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/WallPaperChangeInterface;
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;
    }
.end annotation


# static fields
.field public static final DYNAMIC_LIST_REQ:I = 0x3e9

.field public static final STATICS_LIST_REQ:I = 0x3e8

.field public static isFirstTimePlay:Z = true


# instance fields
.field private accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

.field private contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

.field private controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

.field private isInPreviewMode:Z

.field private isPause:Z

.field private mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private permissionRequesting:Z

.field private uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;-><init>()V

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isPause:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isInPreviewMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    return-object p0
.end method

.method private registContentObserver()V
    .locals 3

    .line 294
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    .line 295
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static release()V
    .locals 1

    .line 235
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->self()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->destroy()V

    .line 237
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->recycle()V

    return-void
.end method

.method private unregistContentObserver()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver$ContentChangedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver$ContentChangedHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public hasPermission(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;)Z
    .locals 3

    .line 269
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 271
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 275
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->TAG:Ljava/lang/String;

    const-string v2, "onResume requestPermission done"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 277
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->TAG:Ljava/lang/String;

    const-string v2, "onResume not HasAllPermissionOfRuntime"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->permissionRequesting:Z

    return v1

    .line 283
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->permissionRequesting:Z

    return v0
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 68
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    return-void
.end method

.method public initData(Z)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->onLoading()V

    .line 97
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    .line 110
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->init(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->setWallPaperOnChangeListener(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/WallPaperChangeInterface;)V

    .line 113
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->initAccountInfo(Z)V

    return-void
.end method

.method public initPermission()V
    .locals 3

    .line 253
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;)V

    const v2, 0xea60

    invoke-direct {v0, v2, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-void
.end method

.method protected initRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->initPermission()V

    return-void
.end method

.method protected isNeedToShowTabBadge()Z
    .locals 0

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->isHaveNewAdd()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAccountChanged()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAccountChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->deleteAll()V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->performRecreate()V

    :cond_0
    return-void
.end method

.method public onAccountInitComplete(Z)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->onLoadFailed()V

    .line 184
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->onAccountInitComplete(Z)V

    :cond_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getFragmentCallback()Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->onAccountInitComplete(Z)V

    .line 192
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    if-eqz p0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->loadData()V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 162
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/16 p2, 0x3e8

    const/4 v0, 0x0

    .line 164
    const-string v1, "position"

    if-ne p1, p2, :cond_0

    .line 165
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_1

    .line 171
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPress()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isInPreviewMode:Z

    return p0
.end method

.method public onMainFragmentResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onMainFragmentResume()V

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->initAccountInfo(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 218
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onPause()V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isPause:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 289
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 199
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onResume()V

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isPause:Z

    .line 201
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isInPreviewMode:Z

    .line 202
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->permissionRequesting:Z

    if-eqz v1, :cond_0

    .line 203
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->permissionRequesting:Z

    .line 204
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    if-eqz v0, :cond_1

    .line 209
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->contentChangedObserver:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$ContentChangedObserver;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 224
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onStop()V

    .line 225
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->unregistContentObserver()V

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->release()V

    .line 230
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->release()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 74
    sput-boolean p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->release()V

    .line 76
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->registContentObserver()V

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->enable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->checkLocaleSkinImageData()V

    :cond_0
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->initData(Z)V

    return-void
.end method

.method public onWallPaperChanged(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)V
    .locals 0

    return-void
.end method

.method public recreate()V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->unregistContentObserver()V

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->release()V

    .line 154
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->controllerManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    .line 156
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->release()V

    .line 157
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment$UIManager;

    return-void
.end method

.method protected reload()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->initData(Z)V

    return-void
.end method
