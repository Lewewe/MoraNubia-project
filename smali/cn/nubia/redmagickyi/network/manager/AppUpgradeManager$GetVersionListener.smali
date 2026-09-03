.class Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;
.super Ljava/lang/Object;
.source "AppUpgradeManager.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVersionListener"
.end annotation


# instance fields
.field retryCount:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->retryCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;-><init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 150
    iget v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->retryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$300(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->getNewVersion(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$300(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;->onError(I)V

    :goto_0
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$102(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;

    .line 120
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$200(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    .line 121
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$300(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$100(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;->onSuccess(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)V

    return-void
.end method

.method public onGetNoVersion()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$300(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$GetVersionListener;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnGetNewVersionListener;->onSuccess(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)V

    return-void
.end method
