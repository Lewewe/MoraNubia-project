.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkPanel"
.end annotation


# instance fields
.field private btnNoNetwork:Landroid/widget/Button;

.field private isFirstTimePlay:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private noNetworkView:Landroid/view/View;

.field private remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

.field private remindPlayCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

.field private remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isFirstTimePlay:Z

    .line 307
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->error_panel:I

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    .line 308
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_content_not_network:I

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    .line 309
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 310
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 311
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->btnNoNetwork:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;Z)Z
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isFirstTimePlay:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;
    .locals 0

    .line 298
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    return-object p0
.end method

.method private hideRemindDownloadDialog()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 393
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setDismissListener(Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    .line 394
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->dismiss()V

    .line 395
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    :cond_0
    return-void
.end method

.method private hideRemindPlayDialog()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setDismissListener(Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    .line 365
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->dismiss()V

    .line 366
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public hideNoNetwork()V
    .locals 1

    .line 324
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isNoNetworkViewShown()Z
    .locals 0

    .line 315
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRemindDownloadDialogShown()Z
    .locals 0

    .line 371
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->isShowing()Z

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

    .line 328
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->isShowing()Z

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

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_content_not_network:I

    if-ne v0, v1, :cond_1

    .line 402
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->hideNoNetwork()V

    :cond_1
    return-void
.end method

.method public shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 8

    .line 375
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isRemindDownloadDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->hideRemindDownloadDialog()V

    .line 379
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;-><init>(Landroid/content/Context;ILjava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindDownloadDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    .line 380
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->show()V

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 385
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_toast_remind_detail_download:I

    invoke-static {p1, p2, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 387
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->hideRemindDownloadDialog()V

    return v1
.end method

.method public shouldShowRemindPlayDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
    .locals 7

    .line 332
    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    .line 333
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/VideoPlayerDanceStudio;->isFileUri(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_3

    .line 334
    iget-boolean p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isFirstTimePlay:Z

    if-eqz p4, :cond_2

    .line 335
    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p4}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 336
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->isRemindPlayDialogShown()Z

    move-result p4

    if-nez p4, :cond_0

    .line 337
    new-instance p4, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    new-instance v6, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel$1;

    invoke-direct {v6, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;)V

    const/4 v2, 0x0

    move-object v0, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;-><init>(Landroid/content/Context;ILjava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    .line 344
    invoke-virtual {p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->show()V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 346
    iget-object p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    invoke-virtual {p4, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setUrl(Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->remindPlayDialog:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;

    invoke-virtual {p0, p2, p3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setFileLength(J)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_3

    .line 352
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/videoplayer/util/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 353
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_toast_remind_detail_video:I

    invoke-static {p2, p3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 354
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p2, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 358
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->hideRemindPlayDialog()V

    return v0
.end method

.method public showNoNetwork(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->listener:Landroid/view/View$OnClickListener;

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateUIByOrientation(Z)V
    .locals 1

    .line 412
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->noNetworkView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 413
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$NetworkPanel;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_otherpage:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
