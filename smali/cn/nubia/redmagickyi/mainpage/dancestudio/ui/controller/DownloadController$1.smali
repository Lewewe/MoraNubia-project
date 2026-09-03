.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->checkStartDownload(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->startDownload(Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onBackPressed()V

    :goto_0
    return-void
.end method
