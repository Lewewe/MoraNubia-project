.class Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusUIController"
.end annotation


# instance fields
.field private btnNoNetwork:Landroid/widget/Button;

.field private errorPanel:Landroid/view/View;

.field private loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

.field private mIvVideoviewPlay:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;)V
    .locals 0

    .line 493
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)Z
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->isErrorPanelShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->hideErrorPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->hidePlayIcon()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->hideLoading()V

    return-void
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->showLoading()V

    return-void
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->showPlayIcon()V

    return-void
.end method

.method static synthetic access$2500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->showErrorPanel()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->initView()V

    return-void
.end method

.method private hideErrorPanel()V
    .locals 1

    .line 546
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->errorPanel:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 547
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideLoading()V
    .locals 1

    .line 522
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 523
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/LoadingView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hidePlayIcon()V
    .locals 1

    .line 534
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->mIvVideoviewPlay:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 535
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_videoview_play:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->mIvVideoviewPlay:Landroid/widget/ImageView;

    .line 501
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_loading:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/LoadingView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    .line 503
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/LoadingView;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->error_panel:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->errorPanel:Landroid/view/View;

    .line 508
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$2700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Landroid/view/View;F)V

    .line 509
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_content_not_network:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->btnNoNetwork:Landroid/widget/Button;

    .line 510
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 511
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->btnNoNetwork:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 512
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->btnNoNetwork:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isErrorPanelShowing()Z
    .locals 0

    .line 552
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->errorPanel:Landroid/view/View;

    if-eqz p0, :cond_0

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

.method private showErrorPanel()V
    .locals 1

    .line 540
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->errorPanel:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 1

    .line 516
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/LoadingView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showPlayIcon()V
    .locals 1

    .line 528
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->mIvVideoviewPlay:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 558
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_videoview_play:I

    if-ne p1, v0, :cond_1

    .line 559
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 560
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    if-eqz p1, :cond_0

    .line 561
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->performReplay()V

    goto :goto_0

    .line 562
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    instance-of p1, p1, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    if-eqz p1, :cond_3

    .line 563
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->performReplay()V

    goto :goto_0

    .line 566
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_content_not_network:I

    if-ne p1, v0, :cond_3

    .line 567
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->hideErrorPanel()V

    .line 568
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$1600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 569
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$2600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;Z)V

    :cond_3
    :goto_0
    return-void
.end method
