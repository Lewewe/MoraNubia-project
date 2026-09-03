.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController$OnDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->startDownload(Ljava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 444
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$1400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    .line 454
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->notifyCurrentPlayerDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 461
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->hide()V

    .line 462
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$1400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    .line 463
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/BaseDanceStudioAdapter;->notifyCurrentPlayerDataSetChanged()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->access$1502(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/io/File;)Ljava/io/File;

    .line 467
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->access$1602(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 469
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

    const-string v1, "DanceStudioActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$1800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->access$1700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->gotoMediaEditor(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 0

    .line 448
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z

    move-result p0

    return p0
.end method
