.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;
.super Landroid/os/Handler;
.source "EmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field private dialog:Lcn/nubia/redmagickyi/view/BaseDialog;

.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    .line 312
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 313
    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->wm:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;)Landroid/view/WindowManager;
    .locals 0

    .line 307
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->wm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$3300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;)Z
    .locals 0

    .line 307
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->isOpDialogShowing()Z

    move-result p0

    return p0
.end method

.method private dismissOpDialog()V
    .locals 2

    .line 483
    const-string v0, "EmailFragment"

    const-string v1, "dismissOpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->dialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz p0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isOpDialogShowing()Z
    .locals 0

    .line 347
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->dialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private varargs showOpDialog(I[Landroid/view/View;)V
    .locals 7

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showOpDialog, op is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->isOpDialogShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    sget v1, Lcn/nubia/redmagickyi/main/R$style;->NonFocusedCustomDialog:I

    goto :goto_0

    :cond_1
    sget v1, Lcn/nubia/redmagickyi/main/R$style;->CustomDialog2:I

    :goto_0
    move v4, v1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;Landroid/content/Context;II[Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->dialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    .line 479
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method private toast()V
    .locals 2

    .line 490
    const-string v0, "EmailFragment"

    const-string v1, "toast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method private updateEmailContentState(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateEmailContentState, state is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 548
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/util/WebViewAgent;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/util/WebViewAgent;->loadData(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 543
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->toast()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 539
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateMailListState()V
    .locals 5

    .line 495
    const-string v0, "EmailFragment"

    const-string v1, "updateMailListState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mail_no_network:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 503
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojitongxun_nowifi:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$2600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/database/EmailManager;->queryAllEmail()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1402(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;Ljava/util/List;)Ljava/util/List;

    .line 506
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->updateList(Ljava/util/List;)V

    .line 507
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->notifyDataSetChanged()V

    .line 508
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->mail_no_mail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojitongxun_nomail:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 518
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 519
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->isRead()Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->getSelectPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 529
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$2900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/RecyclerViewEmptySupport;->scrollToPosition(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 321
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 337
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 338
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 339
    move-object v2, p1

    check-cast v2, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    :cond_3
    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->updateEmailContentState(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    goto :goto_0

    .line 334
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->updateMailListState()V

    goto :goto_0

    .line 331
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->toast()V

    goto :goto_0

    .line 328
    :cond_6
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->dismissOpDialog()V

    goto :goto_0

    .line 323
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 324
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 325
    move-object v2, p1

    check-cast v2, [Landroid/view/View;

    :cond_8
    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->showOpDialog(I[Landroid/view/View;)V

    :goto_0
    return-void
.end method
