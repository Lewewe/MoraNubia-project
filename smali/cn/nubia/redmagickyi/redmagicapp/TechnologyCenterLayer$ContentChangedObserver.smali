.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;
.super Landroid/database/ContentObserver;
.source "TechnologyCenterLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentChangedObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;
    }
.end annotation


# instance fields
.field private handler:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;

.field private isWallPaperChanged:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    const/4 p1, 0x0

    .line 656
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 657
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->handler:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)Z
    .locals 0

    .line 647
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->isWallPaperChanged:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)V
    .locals 0

    .line 647
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->onWallPaperChanged()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;
    .locals 0

    .line 647
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->handler:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;

    return-object p0
.end method

.method private onWallPaperChanged()V
    .locals 4

    .line 680
    const-string v0, "TechnologyCenterDialog"

    const-string v1, "Handle WallPaper Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->handler:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)V

    .line 692
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->isWallPaperChanged:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 681
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$ContentChangedHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 693
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->isWallPaperChanged:Z

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 662
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 663
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 664
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 665
    const-string p2, "magic_elves_wallpaper_choosed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 666
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$1000(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 667
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getId()I

    move-result p1

    const-class p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperChoosed()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 668
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->isWallPaperChanged:Z

    goto :goto_0

    .line 669
    :cond_0
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getId()I

    move-result p1

    const-class p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperChoosed()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 670
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->isWallPaperChanged:Z

    goto :goto_0

    .line 673
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->onWallPaperChanged()V

    :cond_2
    :goto_0
    return-void
.end method
