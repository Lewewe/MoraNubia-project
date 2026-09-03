.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;
.super Ljava/lang/Object;
.source "BaseInspiredController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)V

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;)Landroid/app/Activity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadList(Landroid/content/Context;Z)V

    goto :goto_1

    .line 62
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    .line 64
    new-instance v2, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;-><init>()V

    .line 65
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setSkinId(I)V

    .line 66
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setDesc(Ljava/lang/String;)V

    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;Ljava/util/List;)V

    :goto_1
    return-void
.end method
