.class public Lcn/nubia/redmagickyi/crop/base/FragmentBase;
.super Landroidx/fragment/app/Fragment;
.source "FragmentBase.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/base/FragmentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentBase"


# instance fields
.field private currentMiss:J

.field protected mContext:Landroid/app/Activity;

.field public mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

.field private mDialog:Lcn/nubia/redmagickyi/crop/editor/common/Dialog;

.field private mIsFinished:Z

.field protected mUri:Landroid/net/Uri;

.field protected mVideoSaveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mIsFinished:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mDialog:Lcn/nubia/redmagickyi/crop/editor/common/Dialog;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mContext:Landroid/app/Activity;

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPress()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->show()V

    return-void

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->currentMiss:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->onFinish()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->currentMiss:J

    .line 104
    new-instance v0, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->player_press_again:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->release()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    .line 91
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mIsFinished:Z

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->unregistAudioFocus()V

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->onPause()V

    .line 69
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->onResume()V

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/BaseController;->registAudioFocus()V

    .line 60
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
