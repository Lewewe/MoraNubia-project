.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;
.super Ljava/lang/Object;
.source "StaticsPreviewActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$OnDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->startDownload(ILjava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$wallapperId:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->val$wallapperId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel()V
    .locals 1

    .line 406
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->hide()V

    .line 412
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    .line 413
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->notifyDataSetChanged()V

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download success, name is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StaticsPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->val$wallapperId:I

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$WallPaperManager;->setWallpaper(ILjava/io/File;)V

    return-void
.end method

.method public shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 3

    .line 399
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->access$1200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long/2addr p2, v0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 401
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z

    move-result p0

    return p0
.end method
