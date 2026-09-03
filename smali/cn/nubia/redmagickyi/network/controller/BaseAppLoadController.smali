.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseAppLoadController;
.super Ljava/lang/Object;
.source "BaseAppLoadController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseAppLoadController;
    .locals 1

    .line 11
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->getNewVersion(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/network/controller/BaseAppLoadController;->onSuccess(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)V

    :goto_0
    return-object p0
.end method

.method public abstract onError(I)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)V
.end method
