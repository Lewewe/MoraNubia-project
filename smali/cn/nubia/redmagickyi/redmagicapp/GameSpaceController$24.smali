.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;


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

    .line 2086
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(ZLcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 5

    .line 2090
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_banner_update:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;)V

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer$OnEventListener;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3902(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    .line 2112
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->show(ILcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Z

    .line 2115
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2116
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    if-eqz p1, :cond_1

    .line 2117
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->app_version_update_layout_toast:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 2118
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->hideFragment()V

    :cond_1
    return-void
.end method
