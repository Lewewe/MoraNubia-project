.class Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->access$000(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->access$000(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownloadStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 152
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method
