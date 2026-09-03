.class public Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;
.super Landroidx/fragment/app/Fragment;
.source "FragmentBase.java"

# interfaces
.implements Lcn/nubia/redmagickyi/model/UnityPlayerListener;


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->mContext:Landroid/app/Activity;

    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundReady()V
    .locals 0

    return-void
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onModelLoadFinish()V
    .locals 0

    return-void
.end method

.method public onMotionComing(I)V
    .locals 0

    return-void
.end method

.method public onMotionListChanged()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onSceneLoadFinish()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onTakeShot(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public playWeatherMotion()V
    .locals 0

    return-void
.end method
