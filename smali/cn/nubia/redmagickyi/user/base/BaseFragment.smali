.class public abstract Lcn/nubia/redmagickyi/user/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract initData()V
.end method

.method protected abstract initView()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseFragment;->initView()V

    .line 20
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseFragment;->initData()V

    return-void
.end method
