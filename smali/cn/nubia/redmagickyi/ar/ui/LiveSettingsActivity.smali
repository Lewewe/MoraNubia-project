.class public Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "LiveSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;
    }
.end annotation


# static fields
.field public static final FROM_PC_LIVE:Ljava/lang/String; = "from_pc_live"

.field private static final NAMES_LENGHT:I = 0x3

.field private static final PARENT_DIR:Ljava/lang/String; = "LiveIcon"


# instance fields
.field private back:Landroid/widget/ImageView;

.field private container:Landroid/widget/FrameLayout;

.field private fromPCLive:Z

.field private layoutPreviewImageMobile:Landroid/view/View;

.field private layoutPreviewImagePc:Landroid/view/View;

.field private liveGroup:Landroid/widget/RadioGroup;

.field private mobileLive:Landroid/widget/RadioButton;

.field private pcLive:Landroid/widget/RadioButton;

.field redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

.field redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

.field private title:Landroid/widget/TextView;

.field private tvMobilePreviewImageContent:Landroid/widget/TextView;

.field private tvPcPreviewImageContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 46
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    .line 47
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->fromPCLive:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvMobilePreviewImageContent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvPcPreviewImageContent:Landroid/widget/TextView;

    return-object p0
.end method

.method private switchFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkOrientation()V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->ARACTIVITY_TO_LIVE_SETTING:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->setRequestedOrientationFromAndroid(I)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 101
    aget v3, v0, v2

    aget v0, v0, v1

    if-le v3, v0, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->setRequestedOrientationFromAndroid(I)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->setRequestedOrientationFromAndroid(I)V

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 2

    .line 66
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->title:Landroid/widget/TextView;

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->back:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->live_radio_group:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->liveGroup:Landroid/widget/RadioGroup;

    .line 71
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mobile_live:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->mobileLive:Landroid/widget/RadioButton;

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pc_live:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->pcLive:Landroid/widget/RadioButton;

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->container:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->container:Landroid/widget/FrameLayout;

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_preview_image_content_mobile:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvMobilePreviewImageContent:Landroid/widget/TextView;

    .line 78
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_preview_image_content_pc:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvPcPreviewImageContent:Landroid/widget/TextView;

    .line 79
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_video_view_mobile:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->layoutPreviewImageMobile:Landroid/view/View;

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_video_view_pc:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->layoutPreviewImagePc:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->mobileLive:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->separat:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->separat:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 123
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->mobile_live:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, p1, :cond_0

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvPcPreviewImageContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvMobilePreviewImageContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->layoutPreviewImageMobile:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->layoutPreviewImagePc:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const-class p1, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->switchFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 129
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->pc_live:I

    if-ne p2, p1, :cond_1

    .line 130
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvMobilePreviewImageContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->tvPcPreviewImageContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->layoutPreviewImageMobile:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->layoutPreviewImagePc:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const-class p1, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->switchFragment(Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_1

    .line 113
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->fromPCLive:Z

    if-eqz p1, :cond_0

    .line 114
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_live_settings:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_pc_live"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->fromPCLive:Z

    .line 58
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->container:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->createChildFragmentMananger(I)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->CheckARIamgeData()V

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->CheckARSettingData()V

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->checkLocaleSkinImageData()V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->initView()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 278
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 279
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method
