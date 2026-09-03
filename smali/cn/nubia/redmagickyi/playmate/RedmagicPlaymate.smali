.class public Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "RedmagicPlaymate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;,
        Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;,
        Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;,
        Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;,
        Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;
    }
.end annotation


# static fields
.field public static final KEY_SAVED_STATES:Ljava/lang/String; = "key_saved_states"

.field private static final TAG:Ljava/lang/String; = "RedmagicPlaymate"


# instance fields
.field private back:Landroid/widget/ImageView;

.field private radioGroupTitle:Landroid/widget/RadioGroup;

.field private radioTitleBroadcast:Landroid/widget/RadioButton;

.field private radioTitleSupport:Landroid/widget/RadioButton;

.field private states:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

.field private statusUIController:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

.field private tvTitle:Landroid/widget/TextView;

.field private videoListLoader:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

.field private videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 45
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->statusUIController:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    .line 47
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoListLoader:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    .line 48
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->states:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->states:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    return-object p0
.end method

.method static synthetic access$1302(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->states:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoListLoader:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->statusUIController:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Landroid/view/View;F)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->setCorner(Landroid/view/View;F)V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Broadcast;->enable()Z

    move-result v0

    .line 107
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate$Aid;->enable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->finish()V

    .line 121
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoListLoader:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V

    return-void
.end method

.method private setCorner(Landroid/view/View;F)V
    .locals 1

    .line 219
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$3;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$3;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p0, 0x1

    .line 230
    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private showFragment(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    const-string v1, "key_saved_states"

    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->states:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->finish()V

    .line 157
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 158
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoListLoader:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 60
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->tvTitle:Landroid/widget/TextView;

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->back:Landroid/widget/ImageView;

    .line 63
    new-instance v1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_title_broadcast:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_title_support:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_group_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioGroupTitle:Landroid/widget/RadioGroup;

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->video_view_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_348_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 86
    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 87
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v2

    const v3, 0x401286bd

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_not_network:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_152_dp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_92_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 93
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int/2addr v2, v1

    .line 94
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 95
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v1, v1

    const v2, 0x3fd0b216

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 96
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->setCorner(Landroid/view/View;F)V

    .line 101
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->statusUIController:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$400(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 172
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 173
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 174
    const-class p1, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->showFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 177
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleSupport:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->radioTitleBroadcast:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 179
    const-class p1, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->showFragment(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_redmagic_playmates:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->setContentView(I)V

    .line 54
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->layout_redmagic_playmate_fragment:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->createChildFragmentMananger(I)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->initView()V

    .line 56
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoListLoader:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$900(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V

    .line 165
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$1000(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->videoPlayManager:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V

    return-void
.end method
