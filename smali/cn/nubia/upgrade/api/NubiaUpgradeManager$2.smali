.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error occurred when try to get new version. error_code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaUpgradeManager"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 3

    const-string v0, "got a new version."

    .line 1
    const-string v1, "NubiaUpgradeManager"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "(new version data) "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;

    .line 5
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/c/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "in silent download mode, so start downloading."

    .line 12
    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    :cond_1
    return-void
.end method

.method public onGetNoVersion()V
    .locals 2

    const-string v0, "NubiaUpgradeManager"

    const-string v1, "no new version to upgrade."

    .line 1
    invoke-static {v0, v1}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->val$listener:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    :cond_0
    return-void
.end method
