.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;
.super Ljava/lang/Object;
.source "StaticsPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;
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

    .line 257
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_error_panel:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    .line 259
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_reload:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;)Landroid/widget/Button;
    .locals 0

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    return-object p0
.end method

.method private hideRemindDownloadDialog()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->dismiss()V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    :cond_0
    return-void
.end method

.method private hideRemindPlayDialog()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->dismiss()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public hideNoNetwork()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public isRemindDownloadDialogShown()Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

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

    .line 278
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

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

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_reload:I

    if-ne v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->hideNoNetwork()V

    :cond_1
    return-void
.end method

.method public shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 3

    .line 324
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/32 v1, 0x1400000

    cmp-long p1, p2, v1

    if-lez p1, :cond_1

    .line 326
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->hideRemindDownloadDialog()V

    .line 327
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel$2;

    invoke-direct {v2, p0, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    invoke-direct {p1, v1, v2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_title:I

    .line 336
    invoke-virtual {p4, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setTitle(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_download:I

    .line 337
    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p3, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_download_commit:I

    .line 338
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p3, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_cancel:I

    .line 339
    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCancelText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 340
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCanceledOnTouchOutside(Z)V

    .line 341
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->show()V

    const/4 p0, 0x1

    return p0

    .line 345
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_toast_remind_detail_download:I

    invoke-static {p1, p2, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 347
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->hideRemindDownloadDialog()V

    return v0
.end method

.method public shouldShowRemindPlayDialog(Ljava/lang/String;JLjava/lang/String;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 0

    .line 282
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$DownloadPanel;->getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->isFileUri(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 284
    sget-boolean p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->isRemindPlayDialogShown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 287
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    new-instance p4, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel$1;

    invoke-direct {p4, p0, p5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    invoke-direct {p1, p3, p4}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_title:I

    .line 297
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setTitle(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_preview:I

    .line 298
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_message_preview_commit:I

    .line 299
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_hub_remind_dialog_cancel:I

    .line 300
    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCancelText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 301
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->setCanceledOnTouchOutside(Z)V

    .line 302
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 308
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->hideRemindPlayDialog()V

    return p2
.end method

.method public showNoNetwork(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 266
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->listener:Landroid/view/View$OnClickListener;

    .line 267
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;Landroid/view/View;)V

    .line 269
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/activity/StaticsPreviewActivity;)Landroid/widget/Button;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
