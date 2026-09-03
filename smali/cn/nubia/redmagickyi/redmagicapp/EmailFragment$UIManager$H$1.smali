.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "EmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->showOpDialog(I[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

.field final synthetic val$focusedViews:[Landroid/view/View;

.field final synthetic val$op:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;Landroid/content/Context;II[Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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

    .line 355
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iput p4, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$op:I

    iput-object p5, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$focusedViews:[Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getScreenHeight()I
    .locals 0

    .line 404
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 379
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 380
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$focusedViews:[Landroid/view/View;

    if-eqz p0, :cond_1

    .line 381
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 383
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getContentView()I
    .locals 1

    .line 359
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$op:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 360
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_loading:I

    return p0

    .line 362
    :cond_0
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_request_bglocation_permission:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 7

    const/4 v0, 0x4

    .line 409
    iget v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$op:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 410
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->getScreenHeight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v4, v4, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->loading_bg_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->header_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 416
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 419
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 420
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->mail_loading_content:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$focusedViews:[Landroid/view/View;

    if-eqz p0, :cond_6

    .line 423
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_6

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    const v2, 0x3ecccccd    # 0.4f

    .line 425
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 432
    sget v3, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/4 v4, 0x1

    .line 433
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 434
    new-instance v5, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    sget v5, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 436
    new-instance v6, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    sget v5, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 438
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 439
    iget v5, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$op:I

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    const/16 v4, 0x8

    if-eq v5, v2, :cond_3

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_1

    .line 466
    :cond_2
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mail_delete_this_read:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 467
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->email_op_delete_dialog_title_delete_single_with_attachments:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 468
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->app_start_visual_agree:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 470
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 459
    :cond_3
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mail_delete_read:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 460
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->email_op_delete_dialog_title_delete_read_with_attachments:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 461
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->app_start_visual_agree:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 463
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 450
    :cond_4
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mail_delete_this_read:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 451
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->email_op_delete_dialog_title_delete_single:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 452
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->app_start_visual_agree:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 453
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 441
    :cond_5
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->mail_delete_read:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 442
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->email_op_delete_dialog_title_delete_read:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 443
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->mail_delete_read:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 444
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_1
    return-void
.end method

.method synthetic lambda$initView$0$cn-nubia-redmagickyi-redmagicapp-EmailFragment$UIManager$H$1(Landroid/view/View;)V
    .locals 0

    .line 434
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$1$cn-nubia-redmagickyi-redmagicapp-EmailFragment$UIManager$H$1(Landroid/view/View;)V
    .locals 0

    .line 436
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$2$cn-nubia-redmagickyi-redmagicapp-EmailFragment$UIManager$H$1(Landroid/view/View;)V
    .locals 0

    .line 445
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->dismiss()V

    .line 446
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V

    return-void
.end method

.method synthetic lambda$initView$3$cn-nubia-redmagickyi-redmagicapp-EmailFragment$UIManager$H$1(Landroid/view/View;)V
    .locals 0

    .line 454
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->dismiss()V

    .line 455
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V

    return-void
.end method

.method synthetic lambda$initView$4$cn-nubia-redmagickyi-redmagicapp-EmailFragment$UIManager$H$1(Landroid/view/View;)V
    .locals 0

    .line 463
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->dismiss()V

    return-void
.end method

.method synthetic lambda$initView$5$cn-nubia-redmagickyi-redmagicapp-EmailFragment$UIManager$H$1(Landroid/view/View;)V
    .locals 0

    .line 470
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 368
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->onBackPressed()V

    .line 369
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->onBackPress()Z

    goto :goto_0

    .line 372
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->onBackPressed()V

    .line 373
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    :goto_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 3

    .line 391
    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->val$op:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 392
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 393
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 394
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x1

    .line 395
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 396
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->getScreenHeight()I

    move-result v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H$1;->this$2:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager$H;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->header_height:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    if-gtz v1, :cond_0

    const/4 v1, -0x2

    .line 397
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x50

    .line 398
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
