.class Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AppUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$400(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$400(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 247
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$500(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;)V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method
