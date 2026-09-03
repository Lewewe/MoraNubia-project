.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->onDismiss(ZLcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2091
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 2

    .line 2094
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$3900(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateLayer;->dismiss(Z)Z

    .line 2096
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/util/PopDialogManager;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnAppUpdate(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V

    goto :goto_0

    .line 2097
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->isDownloadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    const-string v0, "GameSpaceActivity"

    const-string v1, "click to install apk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$24$1;->onUpdateFinished(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdateFinished(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2106
    const-string p0, "GameSpaceActivity"

    const-string v0, "perform install apk"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->startInstall()V

    :cond_0
    return-void
.end method
