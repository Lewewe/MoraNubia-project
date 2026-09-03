.class public Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "VisualSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# instance fields
.field private SetShortCut:Z

.field private commit:Landroid/widget/TextView;

.field private isCommited:Z

.field private layoutSetIcon:Landroid/view/View;

.field private listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

.field private mainHandler:Landroid/os/Handler;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private previewCare:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

.field private previewIcon:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

.field private previewOpenDesk:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

.field private rootView:Landroid/view/View;

.field private setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private setCareTxt:Landroid/widget/TextView;

.field private setDynaTxt:Landroid/widget/TextView;

.field private setDynaWallpaper:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private setIcon:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private setIconTxt:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->SetShortCut:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->isCommited:Z

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/guide/view/GuideSwitch;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setDynaWallpaper:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/permission/PermissionUtil;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-object p0
.end method


# virtual methods
.method public SetCareStatus(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->isCareOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCareTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCareTxt:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e851eb8    # 0.26f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setAlpha(F)V

    return-void
.end method

.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 61
    instance-of v0, p1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 89
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 53
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public initData()V
    .locals 2

    .line 127
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v1, 0xea60

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-void
.end method

.method public initview(Landroid/view/View;)V
    .locals 2

    .line 131
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->visual_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->title:Landroid/widget/TextView;

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_set_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->layoutSetIcon:Landroid/view/View;

    .line 134
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_icon_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setIconTxt:Landroid/widget/TextView;

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_dyna_wallpaper_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setDynaTxt:Landroid/widget/TextView;

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_care_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCareTxt:Landroid/widget/TextView;

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sw_set_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setIcon:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 141
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_dyna_wallpaper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setDynaWallpaper:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 143
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setDynaWallpaper:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    new-instance v1, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$2;-><init>(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnTouchListener(Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;)V

    .line 161
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_care:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 162
    new-instance v1, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$3;-><init>(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnTouchListener(Lcn/nubia/redmagickyi/guide/view/GuideSwitch$OnTouchListener;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setCare:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->commit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->commit:Landroid/widget/TextView;

    .line 170
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->commit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->visual_guide_image_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewIcon:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    const/16 v1, 0x8

    .line 173
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    .line 174
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->visual_guide_image_desk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewOpenDesk:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    .line 175
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    .line 176
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->visual_guide_image_care:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewCare:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    .line 177
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->checkEnableShortCut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->layoutSetIcon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setIcon:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->layoutSetIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setIcon:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 185
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->SetCareStatus(Z)V

    .line 186
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setDynaWallpaper:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 193
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 194
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sw_set_icon:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->SetShortCut:Z

    goto :goto_0

    .line 198
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->SetShortCut:Z

    .line 200
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewIcon:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    goto :goto_1

    .line 201
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_dyna_wallpaper:I

    if-ne p1, v0, :cond_5

    .line 202
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    if-eqz p1, :cond_3

    .line 203
    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->SetRedMagicDesk(Z)V

    .line 205
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewOpenDesk:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    if-eqz p2, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->SetCareStatus(Z)V

    goto :goto_1

    .line 207
    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->set_care:I

    if-ne p1, v0, :cond_8

    .line 208
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    if-eqz p1, :cond_6

    .line 209
    invoke-interface {p1, p2}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->SetRedMadgickyiCare(Z)V

    .line 211
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewCare:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    if-eqz p2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->commit:I

    if-ne p1, v0, :cond_2

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    if-eqz p1, :cond_2

    .line 98
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->SetShortCut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->isCommited:Z

    .line 100
    invoke-interface {p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->AddShortCut()V

    .line 102
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->VisualSettings()V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->VisualSettings()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 69
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->fragment_app_start_visual_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->rootView:Landroid/view/View;

    .line 70
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->initview(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->initData()V

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 0

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 244
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->setDynaWallpaper:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->previewOpenDesk:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 115
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 116
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->isCommited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->listener:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$1;-><init>(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
