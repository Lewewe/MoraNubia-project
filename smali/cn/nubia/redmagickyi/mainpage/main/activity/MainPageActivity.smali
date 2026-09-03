.class public Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "MainPageActivity.java"


# static fields
.field public static final FROM_MAINPAGE:Ljava/lang/String; = "from_mainpage"

.field private static final TAG:Ljava/lang/String; = "MainPageActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    return-void
.end method

.method private gotoCTA()V
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string v1, "intent.action.redmagickyi.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "from_mainpage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private needToCTA()Z
    .locals 3

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "first"

    invoke-static {p0, v2, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer;->isNeedCheckCTA()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "first_mainpage"

    invoke-static {p0, v2, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, -0x1

    .line 55
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->setResult(I)V

    .line 56
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    return-void
.end method

.method protected initOrientation()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 48
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->setRequestedOrientationFromAndroid(I)V

    :cond_0
    const/4 v0, 0x7

    .line 50
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->setRequestedOrientationFromAndroid(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_mainpage:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->setContentView(I)V

    .line 26
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->layout_main:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->createChildFragmentMananger(I)V

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->initOrientation()V

    .line 28
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->needToCTA()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->gotoCTA()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getContainerId()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->showThisFragment(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;IZLcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRestart()V

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->needToCTA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->finish()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getContainerId()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->showThisFragment(Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;IZLcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
