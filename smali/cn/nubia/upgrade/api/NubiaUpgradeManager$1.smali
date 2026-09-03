.class Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;
.super Lcn/nubia/upgrade/service/a$a;
.source "NubiaUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {p0}, Lcn/nubia/upgrade/service/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCallingPid()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDownloadCallingPid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaUpgradeManager"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public onDownloadComplete(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download complete. (path)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaUpgradeManager"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v2

    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 6
    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 7
    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 8
    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 9
    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    .line 10
    invoke-static/range {v2 .. v7}, Lcn/nubia/upgrade/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "catch an exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    :goto_0
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 22
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object p2

    sget-object v0, Lcn/nubia/upgrade/http/a$b;->d:Lcn/nubia/upgrade/http/a$b;

    iput-object v0, p2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 24
    :cond_1
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 25
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 26
    invoke-interface {p2, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onDownloadError(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x3ee

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download error. (error code)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " report:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NubiaUpgradeManager"

    invoke-static {v4, v3}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 10
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 11
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 12
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 13
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 14
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 15
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 16
    invoke-static/range {v5 .. v10}, Lcn/nubia/upgrade/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "catch an exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 28
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 29
    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onDownloadPause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "NubiaUpgradeManager"

    const-string v1, "download pause."

    .line 1
    invoke-static {v0, v1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->c:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 11
    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDownloadProgress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaUpgradeManager"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 7
    invoke-interface {v0, p1}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResumeDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "NubiaUpgradeManager"

    const-string v1, "download resume."

    .line 1
    invoke-static {v0, v1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 11
    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStartDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "NubiaUpgradeManager"

    const-string v1, "download start."

    .line 1
    invoke-static {v0, v1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    iget-object p0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;->this$0:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-static {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 11
    invoke-interface {v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    goto :goto_0

    :cond_2
    return-void
.end method
