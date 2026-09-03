.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;
.super Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;
.source "RemindMobileDataDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog$Type;
    }
.end annotation


# static fields
.field public static final TYPE_DOWNLOAD:I = 0x1

.field public static final TYPE_VIEW:I


# instance fields
.field private fileLength:J

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p6}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V

    .line 30
    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->type:I

    .line 31
    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->url:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->fileLength:J

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 5

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setTitle(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_dialog_btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setCancelText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 40
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->type:I

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    iget-wide v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->fileLength:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    .line 51
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_detail_download_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_detail_download:I

    iget-wide v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->fileLength:J

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 55
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_btn_update_download:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    goto :goto_2

    .line 42
    :cond_2
    iget-wide v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->fileLength:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_detail_video_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    goto :goto_1

    .line 45
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_detail_video:I

    iget-wide v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->fileLength:J

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    .line 47
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_dialog_remind_btn_update_video:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;

    :goto_2
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setFileLength(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->fileLength:J

    .line 68
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->updateUI()V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/dialog/RemindMobileDataDialog;->url:Ljava/lang/String;

    return-void
.end method
