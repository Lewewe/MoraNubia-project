.class Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;
.super Landroid/os/Handler;
.source "MediaDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;Landroid/os/Looper;)V
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

    .line 164
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;->onDownloadFailed()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->release()V

    goto :goto_0

    .line 169
    :cond_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 171
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    aget-wide v6, p1, v1

    .line 172
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$2;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    move-result-object v0

    move-wide v1, v2

    move-wide v3, v6

    invoke-interface/range {v0 .. v5}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;->onDownloading(JJI)V

    :goto_0
    return-void
.end method
