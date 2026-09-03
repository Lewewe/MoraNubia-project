.class public Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseOrientationActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;


# instance fields
.field private childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static setActivityEnterAnimation(Landroid/app/Activity;)V
    .locals 2

    .line 165
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->in_alpha:I

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->out_alpha:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static setActivityExitAnimation(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 169
    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->out_alpha:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected checkOrientation()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->autoChangeOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gamespace"

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->setGameSpaceOrientation()V

    :cond_0
    return-void
.end method

.method public createChildFragmentMananger(I)V
    .locals 2

    .line 101
    new-instance v0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 174
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 159
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isEnableActivityExitAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->setActivityExitAnimation(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
    .locals 0

    .line 105
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isRequestHideBottomUIMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 200
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 203
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method protected isEnableActivityEnterAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isEnableActivityExitAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isRequestFeatureNoTitle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isRequestHideBottomUIMenu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isRequestFeatureNoTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->requestWindowFeature(I)Z

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->checkOrientation()V

    .line 41
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->hideBottomUIMenu()V

    .line 43
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->registMotionConfigCallback(Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 92
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->unregistMotionConfigCallback(Lcn/nubia/redmagickyi/unity/motion/inf/OnMotionConfigCallback;)V

    return-void
.end method

.method public onMotionListChanged()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->childFragmentManager:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->hideBottomUIMenu()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setGameSpaceOrientation()V
    .locals 1

    .line 116
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 117
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->setRequestedOrientationFromAndroid(I)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WARNING!!! Method [setRequestedOrientation] is deprecated, Please use Method [setRequestedOrientationFromAndroid] to change screen orientation."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRequestedOrientationFromAndroid(I)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isEnableActivityEnterAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    const-class p2, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->setActivityEnterAnimation(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
