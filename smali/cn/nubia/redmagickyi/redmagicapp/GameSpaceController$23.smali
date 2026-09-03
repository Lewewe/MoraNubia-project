.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2051
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(ZLcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)V
    .locals 5

    .line 2055
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_banner_update:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3702(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    .line 2074
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->show(ILcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Z

    .line 2077
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2078
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    if-eqz p1, :cond_1

    .line 2079
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_toast:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 2080
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$23;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->hideFragment()V

    :cond_1
    return-void
.end method
