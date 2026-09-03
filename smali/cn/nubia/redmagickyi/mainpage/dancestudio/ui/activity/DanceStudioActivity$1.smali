.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;
.super Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;
.source "DanceStudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;Landroid/content/Context;)V
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

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkFirstTimePlay(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$CheckPlayCallback;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1$2;

    invoke-direct {v1, p0, p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1$2;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$CheckPlayCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->shouldShowRemindPlayDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 169
    invoke-interface {p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$CheckPlayCallback;->onEnablePlay()V

    :cond_0
    return-void
.end method

.method public getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViewToBindedController()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isNoNetworkViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->isInDownloadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public isInDownloadMode()Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->isInDownloadMode()Z

    move-result p0

    return p0
.end method

.method public isOrientationLandScape()Z
    .locals 1

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadMore()V
    .locals 1

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;Z)V

    return-void
.end method

.method public onClickList()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getShortcut()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->initBackground(Landroid/graphics/Bitmap;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const-class v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getCurrentPosition()I

    move-result v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClickRotate()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->isOrientationLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->setRequestedOrientationFromAndroid(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->setRequestedOrientationFromAndroid(I)V

    :goto_0
    return-void
.end method

.method public onClickWallpaper(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->startDownload(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public onPageSelected(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)V
    .locals 0

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$300()Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$300()Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/inf/PreviewCallback;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;)Z

    :cond_0
    return-void
.end method

.method public onPlayError()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->showNoNetwork(Landroid/view/View$OnClickListener;)V

    return-void
.end method
