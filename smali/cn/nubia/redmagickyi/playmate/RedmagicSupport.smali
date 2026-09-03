.class public Lcn/nubia/redmagickyi/playmate/RedmagicSupport;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "RedmagicSupport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;,
        Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTING_CLASS:Ljava/lang/String; = "cn.nubia.magicelvesbroadcast.customscences.CustomMagicActivity"

.field private static final CUSTOM_SETTING_EXTRA:Ljava/lang/String; = "focused_key"

.field private static final CUSTOM_SETTING_PACKAGE:Ljava/lang/String; = "cn.nubia.magicelvesbroadcast"

.field private static final MSG_PLAY_VIDEO:I = 0x1

.field private static isRedmagicSupportWithSettings:Ljava/lang/Boolean;


# instance fields
.field private cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private handler:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;

.field private isVideoStoping:Z

.field private lastGamePosition:I

.field private layoutCustomSetting:Landroid/view/View;

.field private layoutShowText:Landroid/view/View;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;",
            ">;"
        }
    .end annotation
.end field

.field private onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

.field private radioGroupLevel:Landroid/widget/RadioGroup;

.field private radioLevelHigh:Landroid/widget/RadioButton;

.field private radioLevelLow:Landroid/widget/RadioButton;

.field private recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

.field private redmagicSupportAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

.field private rootView:Landroid/view/View;

.field private savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

.field private supportChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

.field private tvCustomSetting:Landroid/widget/TextView;

.field private tvShowText:Landroid/widget/TextView;

.field private tvSupportLevel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isVideoStoping:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->updateShowTextCheckState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isVideoStoping:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Ljava/lang/String;I)I
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getGlobalSettingsInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->redmagicSupportAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Ljava/lang/String;I)I
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getCurrentFocusedBean()Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private getCurrentFocusedBean()Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;
    .locals 2

    .line 219
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 220
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentFocusedIndex()I
    .locals 2

    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getGlobalSettingsInt(Ljava/lang/String;I)I
    .locals 0

    .line 422
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSecureSettingsInt(Ljava/lang/String;I)I
    .locals 0

    .line 414
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initData()V
    .locals 7

    .line 164
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    .line 166
    sget-object v0, Lcn/nubia/redmagickyi/playmate/util/SupportedGames;->aidGames:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 167
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;

    .line 169
    new-instance v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;-><init>()V

    .line 170
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGame(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getGamePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGamePackageName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getPluginKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setPluginEnableSettingsKey(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getPluginEnableSettingsKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getGlobalSettingsInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setPluginEnable(Z)V

    .line 174
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getFunctionKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameCheckedSettingsKey(Ljava/lang/String;)V

    .line 175
    invoke-static {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameChecked(Z)V

    .line 176
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getLevelKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLowSettingsKey(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getLevelLowSettingsKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLow(Z)V

    .line 178
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getTextEffectKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setShowTextSettingsKey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getShowTextSettingsKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getSecureSettingsInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v1

    :goto_3
    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setShowText(Z)V

    .line 180
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getCustomFunctionKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setCustomSettingsKey(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/playmate/util/SupportedGames$Aid;->getResCode()I

    move-result v3

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setResCode(I)V

    .line 182
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 127
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_support_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->tvSupportLevel:Landroid/widget/TextView;

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_level_low:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_level_high:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    .line 134
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->radio_group_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioGroupLevel:Landroid/widget/RadioGroup;

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 138
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->show_text_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->layoutShowText:Landroid/view/View;

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->layoutShowText:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_show_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->tvShowText:Landroid/widget/TextView;

    .line 142
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->tvShowText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_show_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 145
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->custom_setting_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->layoutCustomSetting:Landroid/view/View;

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->layoutCustomSetting:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    sget-object v0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isRedmagicSupportWithSettings:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->layoutCustomSetting:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_custom_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->tvCustomSetting:Landroid/widget/TextView;

    .line 154
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->tvCustomSetting:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycle_view_game:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private putGlobalSettingsInt(Ljava/lang/String;I)V
    .locals 0

    .line 418
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private putSecureSettingsInt(Ljava/lang/String;I)V
    .locals 0

    .line 410
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private registContentObserver()V
    .locals 4

    .line 456
    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->supportChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

    .line 457
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->supportChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->supportChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregistContentObserver()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->supportChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->supportChangedObserver:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateShowTextCheckState(Z)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "once"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(ZZ)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setTag(Ljava/lang/Object;)V

    .line 305
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 121
    instance-of v0, p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->BottomIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->BottomOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected createIntercceptedView(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/view/View;
    .locals 1

    .line 83
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public finish()V
    .locals 0

    const/4 p0, 0x0

    .line 297
    sput-object p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isRedmagicSupportWithSettings:Ljava/lang/Boolean;

    return-void
.end method

.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 75
    const-string p1, "key_saved_states"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    .line 76
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getSupportArgs()[I

    move-result-object p1

    if-nez p1, :cond_0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    const/4 p1, 0x0

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setSupportArgs([I)V

    :cond_0
    return-void
.end method

.method public initAdapter()V
    .locals 6

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getGameY()I

    move-result v0

    .line 189
    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->getGamePosition()I

    move-result v1

    .line 190
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    move v0, v3

    move v1, v0

    .line 194
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setFocused(Z)V

    .line 196
    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-direct {v2, v4, v5}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->redmagicSupportAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    .line 197
    invoke-virtual {v2, p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->setRedmagicSupportItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;)V

    .line 198
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$1;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 204
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->redmagicSupportAdapter:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 205
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 209
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;

    invoke-direct {v3, p0, v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 374
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getCurrentFocusedBean()Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getShowTextSettingsKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->putSecureSettingsInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 354
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getCurrentFocusedBean()Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 356
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 357
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLow(Z)V

    .line 358
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getLevelLowSettingsKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->putSecureSettingsInt(Ljava/lang/String;I)V

    .line 359
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 360
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 361
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLow(Z)V

    .line 364
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getLevelLowSettingsKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->putSecureSettingsInt(Ljava/lang/String;I)V

    .line 365
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 366
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 262
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->show_text_layout:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 263
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->cbShowText:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->updateShowTextCheckState(Z)V

    goto :goto_0

    .line 264
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->custom_setting_layout:I

    if-ne p1, v0, :cond_2

    .line 266
    :try_start_0
    const-string p1, ""

    .line 267
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getCurrentFocusedBean()Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getCustomSettingsKey()Ljava/lang/String;

    move-result-object p1

    .line 271
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    const-string v2, "cn.nubia.magicelvesbroadcast"

    const-string v3, "cn.nubia.magicelvesbroadcast.customscences.CustomMagicActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "focused_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 274
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->startActivity(Landroid/content/Intent;)V

    .line 276
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isVideoStoping:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_custom_setting_error:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 90
    sget-object p3, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isRedmagicSupportWithSettings:Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 91
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 92
    const-string v1, "cn.nubia.magicelvesbroadcast"

    const-string v2, "cn.nubia.magicelvesbroadcast.customscences.CustomMagicActivity"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    sput-object p3, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isRedmagicSupportWithSettings:Ljava/lang/Boolean;

    .line 95
    :cond_1
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->layout_redmagic_supports:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->rootView:Landroid/view/View;

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->initData()V

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->rootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->initView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->initAdapter()V

    .line 99
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->registContentObserver()V

    .line 100
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 293
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->unregistContentObserver()V

    return-void
.end method

.method public onHideFragment()V
    .locals 3

    .line 251
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    .line 252
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->recyclerViewGame:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setGameY(I)V

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getCurrentFocusedIndex()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->setGamePosition(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->savedStates:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->saveState(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 246
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 238
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onResume()V

    .line 239
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isVideoStoping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->isVideoStoping:Z

    :cond_0
    return-void
.end method

.method public onSupportGameCheckboxTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 1

    .line 382
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 383
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isPluginEnable()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 384
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 385
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->redmagic_support_plugin_disable:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_0
    return p3

    :cond_1
    return p2
.end method

.method public onSupportGameCheckedChanged(Landroid/view/View;IZ)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 348
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameChecked(Z)V

    .line 349
    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameCheckedToStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)V

    return-void
.end method

.method public onSupportGameClick(Landroid/view/View;IZ)V
    .locals 1

    .line 311
    iput p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->lastGamePosition:I

    .line 312
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 313
    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 315
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 316
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isShowText()Z

    move-result p2

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->updateShowTextCheckState(Z)V

    .line 317
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isLevelLow()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 318
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 319
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 320
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 321
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 324
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 325
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelHigh:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 326
    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->radioLevelLow:Landroid/widget/RadioButton;

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 328
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 329
    iput v0, p2, Landroid/os/Message;->what:I

    .line 330
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getResCode()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 332
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->handler:Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$PlayHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSupportGameRepeatClick(Landroid/view/View;IZ)Z
    .locals 0

    .line 337
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPlaying()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 339
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onPlaymateOpListener:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;->getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 395
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->custom_setting_layout:I

    if-ne v0, v1, :cond_0

    .line 396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->function_lock_toast:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return p2

    .line 400
    :cond_0
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_level_low:I

    if-eq v0, v1, :cond_1

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->radio_level_high:I

    if-eq v0, v1, :cond_1

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->show_text_layout:I

    if-eq v0, v1, :cond_1

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_show_text:I

    if-ne v0, v1, :cond_2

    .line 401
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getCurrentFocusedIndex()I

    move-result v0

    if-ltz v0, :cond_2

    .line 403
    invoke-virtual {p0, p1, v0, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onSupportGameCheckboxTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public performReplay()V
    .locals 3

    .line 284
    iget v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->lastGamePosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onSupportGameClick(Landroid/view/View;IZ)V

    return-void
.end method
