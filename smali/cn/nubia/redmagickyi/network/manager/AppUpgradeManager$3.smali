.class Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$500(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;->onDownloadFailed()V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$600(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 287
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$500(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 288
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->release()V

    goto :goto_0

    .line 281
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 282
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->access$500(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$OnDownloadListener;->onDownloading(I)V

    :goto_0
    return-void
.end method
