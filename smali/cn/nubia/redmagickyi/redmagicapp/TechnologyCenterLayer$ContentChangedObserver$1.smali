.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;
.super Ljava/lang/Object;
.source "TechnologyCenterLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->onWallPaperChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 684
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getId()I

    move-result v0

    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperChoosed()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 685
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->SetSuccess(Landroid/app/Activity;)V

    .line 686
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    goto :goto_0

    .line 687
    :cond_0
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getId()I

    move-result v0

    const-class v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->getWallPaperChoosed()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 688
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->SetSuccess(Landroid/app/Activity;)V

    .line 689
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$ContentChangedObserver;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$100(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlTechCenter()V

    :cond_1
    :goto_0
    return-void
.end method
