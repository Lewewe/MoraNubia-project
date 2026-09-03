.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;
.super Ljava/lang/Object;
.source "DynamicPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkPanel"
.end annotation


# instance fields
.field private btnNoNetwork:Landroid/widget/Button;

.field private listener:Landroid/view/View$OnClickListener;

.field private noNetworkView:Landroid/view/View;

.field private remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

.field private remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_error_panel:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    .line 296
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_reload:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 299
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private hideRemindDownloadDialog()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->dismiss()V

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    :cond_0
    return-void
.end method

.method private hideRemindPlayDialog()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->dismiss()V

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public hideNoNetwork()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public isRemindDownloadDialogShown()Z
    .locals 0

    .line 356
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRemindPlayDialogShown()Z
    .locals 0

    .line 315
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_reload:I

    if-ne v0, v1, :cond_1

    .line 397
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->hideNoNetwork()V

    :cond_1
    return-void
.end method

.method public shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 3

    .line 360
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/32 v1, 0x1400000

    cmp-long p1, p2, v1

    if-lez p1, :cond_1

    .line 362
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->hideRemindDownloadDialog()V

    .line 363
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$2;

    invoke-direct {v2, p0, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    invoke-direct {p1, v1, v2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_title:I

    .line 372
    invoke-virtual {p4, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setTitle(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_download:I

    .line 373
    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p3, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_download_commit:I

    .line 374
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p3, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_cancel:I

    .line 375
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCancelText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 376
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCanceledOnTouchOutside(Z)V

    .line 377
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->show()V

    const/4 p0, 0x1

    return p0

    .line 381
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_toast_remind_detail_download:I

    invoke-static {p1, p2, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 383
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->hideRemindDownloadDialog()V

    return v0
.end method

.method public shouldShowRemindPlayDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 1

    .line 319
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/VideoPlayerDynamic;->isFileUri(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 320
    sget-boolean p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->isRemindPlayDialogShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 323
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;

    invoke-direct {v0, p0, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    invoke-direct {p1, p3, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_title:I

    .line 333
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setTitle(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_preview:I

    .line 334
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_preview_commit:I

    .line 335
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_cancel:I

    .line 336
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCancelText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 337
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCanceledOnTouchOutside(Z)V

    .line 338
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 344
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->hideRemindPlayDialog()V

    return p2
.end method

.method public showNoNetwork(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->listener:Landroid/view/View$OnClickListener;

    .line 304
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;Landroid/view/View;)V

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;)Landroid/widget/Button;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
