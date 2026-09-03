.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;
.super Ljava/lang/Object;
.source "DynamicPreviewActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController$OnDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->startDownload(ILjava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$targetFile:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$wallpaperId:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 436
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$targetFile:Ljava/io/File;

    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$url:Ljava/lang/String;

    iput p5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$wallpaperId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel()V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download canceld, name is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$1200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 5

    .line 453
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->hide()V

    .line 454
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$1200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/pageslider/PagerLayoutManager;->setEnableScroll(Z)V

    .line 455
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->access$1302(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;Ljava/io/File;)Ljava/io/File;

    .line 456
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->access$1402(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 458
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

    const-string v1, "DynamicPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$targetFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 461
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$wallpaperId:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$targetFile:Ljava/io/File;

    invoke-virtual {p1, v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$WallPaperManager;->gotoSystemPreview(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    const-string p0, "rename wallpaper file error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 3

    .line 440
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->val$md5:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->getDownLoadFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
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

    .line 442
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$DownloadPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z

    move-result p0

    return p0
.end method
