.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadPanel"
.end annotation


# instance fields
.field private downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

.field private downloadFile:Ljava/io/File;

.field private lastDownloadUrl:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_download_controller:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    return-void
.end method

.method static synthetic access$1502(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 418
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1602(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 418
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->lastDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->getPlayUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getPlayUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 4

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 495
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkOnUrlChanged(Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 503
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->getPlayUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->lastDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 505
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;->replay()V

    :cond_0
    const/4 p1, 0x0

    .line 509
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadFile:Ljava/io/File;

    .line 510
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->lastDownloadUrl:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 484
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-virtual {v1, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->getPlayUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 487
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public hide()V
    .locals 1

    .line 432
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->setVisibility(I)V

    return-void
.end method

.method public isInDownloadMode()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isRemindDownloadDialogShown()Z

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

    .line 440
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->onBackPressed()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 428
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->setVisibility(I)V

    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6

    .line 444
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->downloadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;

    new-instance v5, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;

    invoke-direct {v5, p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->startDownload(Ljava/lang/String;Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$1400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    .line 476
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method
