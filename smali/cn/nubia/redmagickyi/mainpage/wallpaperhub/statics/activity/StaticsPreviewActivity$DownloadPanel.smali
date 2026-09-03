.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;
.super Ljava/lang/Object;
.source "StaticsPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadPanel"
.end annotation


# instance fields
.field private downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_download_controller:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;
    .locals 0

    .line 371
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    return-object p0
.end method


# virtual methods
.method public getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 432
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 436
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->self()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/StaticsPreviewImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 437
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_1

    .line 438
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public hide()V
    .locals 1

    .line 383
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->setVisibility(I)V

    return-void
.end method

.method public isInDownloadMode()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->isRemindDownloadDialogShown()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 391
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->onBackPressed()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->setVisibility(I)V

    return-void
.end method

.method public startDownload(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    .line 395
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;

    invoke-direct {v6, p0, p3, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;Ljava/lang/String;I)V

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->startDownload(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$OnDownloadCallback;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    .line 423
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method
