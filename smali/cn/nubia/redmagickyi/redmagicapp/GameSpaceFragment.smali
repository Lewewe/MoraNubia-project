.class public Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;
.source "GameSpaceFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isEverSendEnterTrack:Z

.field private isOnBackgroundReadyFailed:Z

.field private isOnModelLoadFailed:Z

.field private isOnSceneLoadFailed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnSceneLoadFailed:Z

    .line 44
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnModelLoadFailed:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnBackgroundReadyFailed:Z

    .line 308
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isEverSendEnterTrack:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private sendEnterTrack(Ljava/lang/String;)V
    .locals 3

    .line 310
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isEverSendEnterTrack:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isEverSendEnterTrack:Z

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    sget-object v1, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->DEFAULT_EVENT_NAME:Ljava/lang/String;

    const-string v2, "mora_app_enter"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "mora_homepage_enter"

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    const-string v1, "mora_homepage_account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->sendEnterTrack(Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateNubiaAcctInfo(Landroid/content/Context;)V
    .locals 7

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "nubia"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static/range {v0 .. v6}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    .line 188
    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;

    invoke-direct {v1, p0, v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;Lcn/nubia/accountsdk/fullclient/AccountFullClient;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;)V

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 277
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPress()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onBackPress()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundReady()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onBackgroundReady()V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnBackgroundReadyFailed:Z

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onBackgroundReady()V

    :cond_0
    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    .line 297
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 49
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->gamespace_main:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    check-cast p3, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p2, p3, p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Landroid/view/View;Landroid/content/Intent;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    .line 51
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnSceneLoadFailed:Z

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->onSceneLoadFinish()V

    .line 54
    :cond_0
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnModelLoadFailed:Z

    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->onModelLoadFinish()V

    .line 57
    :cond_1
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnBackgroundReadyFailed:Z

    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->onBackgroundReady()V

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->destroy()V

    :cond_0
    return-void
.end method

.method public onModelLoadFinish()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onModelLoadFinish()V

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->modelLoadFinish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnModelLoadFailed:Z

    :goto_0
    return-void
.end method

.method public onMotionComing(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onMotionComing(I)V

    :cond_0
    return-void
.end method

.method public onMotionListChanged()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    .line 304
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onMotionListChanged()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onPause()V

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 118
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onResume()V

    .line 119
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-nez v0, :cond_5

    .line 120
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->updateNubiaAcctInfo(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 123
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/Account;->IsLogin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const-string v7, "nubia"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static/range {v1 .. v7}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/util/HttpRequestorParams;IZLjava/lang/String;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object v0

    .line 127
    sget-object v1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/account/Account;->getOpenId()Ljava/lang/String;

    move-result-object v1

    .line 128
    sget-object v2, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/account/Account;->getShowName()Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onComplete: nickName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    .line 133
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->TAG:Ljava/lang/String;

    const-string v5, "onComplete: account changed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 149
    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    const-string v1, "pref_acct_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    const-string v1, "pref_nubia_acct"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 156
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V

    .line 165
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_6

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onResume()V

    :cond_6
    return-void
.end method

.method public onSceneLoadFinish()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onSceneLoadFinish()V

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->sceneLoadFinish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->isOnSceneLoadFailed:Z

    :goto_0
    return-void
.end method

.method public onTakeShot(Ljava/lang/String;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onTakeShot(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public playWeatherMotion()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->playWeatherMotion()V

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    instance-of v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    check-cast p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->playWeatherMotion()V

    :cond_0
    return-void
.end method
