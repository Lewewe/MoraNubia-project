.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "WallPaperHubMoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_DATA:Ljava/lang/String; = "data"

.field public static final BUNDLE_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final BUNDLE_KEY_VIEWTYPE:Ljava/lang/String; = "viewtype"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;"
        }
    .end annotation
.end field

.field private isInPreviewMode:Z

.field private myCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

.field private title:Ljava/lang/String;

.field private uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

.field private viewtype:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->viewtype:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->isInPreviewMode:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->myCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 89
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 127
    instance-of v0, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->myCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    :cond_0
    return-void
.end method

.method public final createEnterAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->nubia_task_open_enter:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public final createEnterAnimator()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createExitAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->nubia_task_close_exit:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public final createExitAnimator()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 55
    const-string p1, "viewtype"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->viewtype:I

    .line 56
    const-string p1, "title"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->title:Ljava/lang/String;

    .line 57
    const-string p1, "data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->data:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->myCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;->markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/16 p2, 0x3e8

    const/4 v0, 0x0

    .line 108
    const-string v1, "position"

    if-ne p1, p2, :cond_0

    .line 109
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_1

    .line 115
    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPress()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->isInPreviewMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 84
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onBackPress()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->onHideFragment()V

    :cond_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 64
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_wallpaperhub_more:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->isInPreviewMode:Z

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    if-eqz p0, :cond_0

    .line 145
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->data:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$1;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->uiManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$UIManager;

    .line 76
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->initView(Landroid/view/View;)V

    return-void

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;->onHideFragment()V

    return-void
.end method
