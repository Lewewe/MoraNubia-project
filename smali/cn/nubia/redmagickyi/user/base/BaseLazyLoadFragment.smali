.class public abstract Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;
.super Lcn/nubia/redmagickyi/user/base/BaseFragment;
.source "BaseLazyLoadFragment.java"


# instance fields
.field private mIsDataLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseFragment;-><init>()V

    return-void
.end method

.method private startLoadData()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->lazyLoadData()V

    .line 51
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->mIsDataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->mIsDataLoaded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract lazyLoadData()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 19
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->startLoadData()V

    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->startLoadData()V

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseLazyLoadFragment;->onVisibilityChanged(Z)V

    return-void
.end method
