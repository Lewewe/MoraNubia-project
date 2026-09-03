.class public Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;,
        Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener;
    }
.end annotation


# static fields
.field private static final MSG_ON_VOLUME_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SettingDialog"


# instance fields
.field private back:Landroid/widget/ImageView;

.field private cbAntiAliasing:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private handler:Landroid/os/Handler;

.field private isTabsClicked:Z

.field private layoutAntiAliasing:Landroid/view/ViewGroup;

.field private layoutBirthday:Landroid/view/ViewGroup;

.field private layoutDisplayPanel:Landroid/view/ViewGroup;

.field private layoutIdentify:Landroid/view/ViewGroup;

.field private layoutIdentifyBirthday:Landroid/view/ViewGroup;

.field private layoutOtherPanel:Landroid/view/ViewGroup;

.field private layoutVolumePanel:Landroid/view/ViewGroup;

.field private otherSettingsUIManager:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

.field private radioFrameRate30:Landroid/widget/RadioButton;

.field private radioFrameRate60:Landroid/widget/RadioButton;

.field private radioGroupFrameRate:Landroid/widget/RadioGroup;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private rootView:Landroid/view/ViewGroup;

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

.field private seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

.field private seekBarMainVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

.field private shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

.field private tvAntiAliasing:Landroid/widget/TextView;

.field private tvAudioVolume:Landroid/widget/TextView;

.field private tvBgmVolume:Landroid/widget/TextView;

.field private tvBirthday:Landroid/widget/TextView;

.field private tvFrameRate:Landroid/widget/TextView;

.field private tvIdentify:Landroid/widget/TextView;

.field private tvMainVolume:Landroid/widget/TextView;

.field private tvMainVolumeView:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private user_type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 76
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->otherSettingsUIManager:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->isTabsClicked:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->isTabsClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvBirthday:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvIdentify:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    return-object p0
.end method

.method private animRootView(Z)V
    .locals 5

    .line 237
    const-string v0, "always_visible"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 238
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 239
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x8

    .line 241
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 244
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 246
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 251
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 252
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v3, v4, :cond_2

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 257
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initAntiAliasing()V
    .locals 1

    .line 232
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v0

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->cbAntiAliasing:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarMainVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "main_volume"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initVolume(Landroid/widget/SeekBar;I)V

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "audio_volume"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initVolume(Landroid/widget/SeekBar;I)V

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bgm_volume"

    const/16 v3, 0x3c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initVolume(Landroid/widget/SeekBar;I)V

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarMainVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 208
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initFrameRate()V

    .line 209
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initAntiAliasing()V

    return-void
.end method

.method private initFrameRate()V
    .locals 4

    .line 217
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 118
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->back:Landroid/widget/ImageView;

    .line 119
    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvTitle:Landroid/widget/TextView;

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_volume_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutVolumePanel:Landroid/view/ViewGroup;

    .line 130
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_display_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutDisplayPanel:Landroid/view/ViewGroup;

    .line 131
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_other_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutOtherPanel:Landroid/view/ViewGroup;

    .line 133
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->sv_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 134
    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->scrollView:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 148
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_main_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvMainVolume:Landroid/widget/TextView;

    .line 149
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvMainVolume:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_audio_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvAudioVolume:Landroid/widget/TextView;

    .line 153
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvAudioVolume:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 156
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_bgm_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvBgmVolume:Landroid/widget/TextView;

    .line 157
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvBgmVolume:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_frame_rate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvFrameRate:Landroid/widget/TextView;

    .line 161
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvFrameRate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 163
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_frame_rate_30:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    .line 164
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_frame_rate_60:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    .line 166
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_group_frame_rate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioGroupFrameRate:Landroid/widget/RadioGroup;

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 170
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->anti_aliasing_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutAntiAliasing:Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_anti_aliasing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvAntiAliasing:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 174
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_anti_aliasing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->cbAntiAliasing:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 175
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->identify_birthday_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutIdentifyBirthday:Landroid/view/ViewGroup;

    .line 178
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_birthday:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutBirthday:Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_identify:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->layoutIdentify:Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->text_identify:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvIdentify:Landroid/widget/TextView;

    .line 187
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->text_birthday:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvBirthday:Landroid/widget/TextView;

    .line 188
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->main_volume_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarMainVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    .line 190
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->audio_volume_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    .line 192
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->bgm_volume_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initUserBirthData()V

    .line 195
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initIdentifyData()V

    .line 196
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->otherSettingsUIManager:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OtherSettingsUIManager;Landroid/view/View;)V

    return-void
.end method

.method private initVolume(Landroid/widget/SeekBar;I)V
    .locals 0

    .line 213
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private saveData()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarMainVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getDisplayProgress()I

    move-result v0

    .line 269
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getDisplayProgress()I

    move-result v1

    .line 270
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getDisplayProgress()I

    move-result v2

    .line 271
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 272
    sput v0, Lcn/nubia/redmagickyi/util/Utils;->MAIN_VOLUME:I

    .line 273
    sput v1, Lcn/nubia/redmagickyi/util/Utils;->AUDIO_VOLUME:I

    .line 274
    sput v2, Lcn/nubia/redmagickyi/util/Utils;->BGM_VOLUME:I

    .line 275
    const-string v3, "main_volume"

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v3, "audio_volume"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v3, "bgm_volume"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 281
    const-string v3, "unity_audio_volume"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    int-to-float v1, v2

    mul-float/2addr v1, v0

    .line 284
    const-string v0, "unity_bgm_volume"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendOnVolumeChanged(I)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 304
    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public LoadWebView(Ljava/lang/String;)V
    .locals 2

    .line 395
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_gamespace:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public initIdentifyData()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->user_type:I

    .line 403
    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-ne v0, v1, :cond_0

    .line 404
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvIdentify:Landroid/widget/TextView;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_user_type_secret:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 405
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne v0, v1, :cond_1

    .line 406
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvIdentify:Landroid/widget/TextView;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_user_type_student:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 407
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    if-ne v0, v1, :cond_2

    .line 408
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvIdentify:Landroid/widget/TextView;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_user_type_starff:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initUserBirthData()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUser_birthday()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvBirthday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->tvBirthday:Landroid/widget/TextView;

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onAnimationStart(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 369
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->cbAntiAliasing:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, p0, :cond_0

    .line 370
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 311
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->radio_frame_rate_30:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p1, :cond_0

    .line 312
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-virtual {p1, p2, v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 313
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 314
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 315
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 316
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->radio_frame_rate_60:I

    if-ne p2, p1, :cond_1

    .line 317
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object p1

    const/16 p2, 0x3c

    invoke-virtual {p1, p2, v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 318
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 319
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate60:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->radioFrameRate30:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 346
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->onHideFragment()V

    goto :goto_0

    .line 348
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->anti_aliasing_layout:I

    if-ne p1, v0, :cond_1

    .line 349
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->cbAntiAliasing:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 350
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_birthday:I

    if-ne p1, v0, :cond_2

    .line 351
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;)V

    .line 356
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->show()V

    goto :goto_0

    .line 357
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->user_identify:I

    if-ne p1, v0, :cond_3

    .line 358
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$6;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$6;-><init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;)V

    .line 363
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 109
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_settings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initView(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initData()V

    const/4 p2, 0x1

    .line 112
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->animRootView(Z)V

    .line 113
    const-string p0, "SettingDialog"

    const-string p2, "onCreateView"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onHideFragment()V
    .locals 1

    .line 376
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->animRootView(Z)V

    .line 378
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->saveData()V

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onProgressChanged "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getDisplayProgress()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SettingDialog"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->saveData()V

    .line 292
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarMainVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->sendOnVolumeChanged(I)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarAudioVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 295
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->sendOnVolumeChanged(I)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->seekBarBgmVolume:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x2

    .line 297
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->sendOnVolumeChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
