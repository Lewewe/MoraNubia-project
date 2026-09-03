.class public Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;
.super Ljava/lang/Object;
.source "GameSpaceFuntionZonesController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;
.implements Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;


# instance fields
.field private aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

.field private cbDigitalHumanIcon:Landroid/widget/CheckBox;

.field private cbDigitalHumanText:Landroid/widget/CheckBox;

.field private cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

.field private cbTechCenterIcon:Landroid/widget/CheckBox;

.field private cbTechCenterText:Landroid/widget/CheckBox;

.field private cbTechCenterTextSelected:Landroid/widget/CheckBox;

.field private digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

.field private gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

.field private layoutBottomPanel:Landroid/view/View;

.field private layoutChangeSkin:Landroid/view/View;

.field private layoutDigitalHuman:Landroid/view/View;

.field private layoutMainPage:Landroid/view/View;

.field private layoutTechCenter:Landroid/view/View;

.field private layout_gamespace_function_zones:Landroid/view/View;

.field private redmagicARCamera:Landroid/view/View;

.field private redmagicCare:Landroid/view/View;

.field private redmagicChangeSkin:Landroid/widget/ImageView;

.field private redmagicChangeSkinUnreadDot:Landroid/widget/ImageView;

.field private redmagicLive:Landroid/view/View;

.field private redmagicMainPage:Landroid/widget/ImageView;

.field private redmagicMainpageUnreadDot:Landroid/widget/ImageView;

.field private redmagicPlaymate:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

.field private tipsChangeSkin:Landroid/widget/TextView;

.field private tvARCamera:Landroid/widget/TextView;

.field private tvCare:Landroid/widget/TextView;

.field private tvChangeSkin:Landroid/widget/TextView;

.field private tvDigitalHuman:Landroid/widget/TextView;

.field private tvLive:Landroid/widget/TextView;

.field private tvMainpage:Landroid/widget/TextView;

.field private tvPlaymate:Landroid/widget/TextView;

.field private tvTechCenter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    return-object p0
.end method

.method private customUI()V
    .locals 4

    .line 630
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 631
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    .line 632
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v0, v2, :cond_8

    .line 634
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvMainpage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 635
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 637
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvChangeSkin:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 638
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 639
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvChangeSkin:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 641
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Spanish:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 642
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_63_dp:I

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v2

    goto :goto_0

    .line 644
    :cond_1
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v2

    .line 646
    :goto_0
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v2, :cond_2

    .line 647
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 648
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvChangeSkin:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvPlaymate:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 652
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 654
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvCare:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 655
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 657
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvDigitalHuman:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 658
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 660
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvTechCenter:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 661
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 663
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvLive:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 664
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 666
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvARCamera:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 667
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 671
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_a

    .line 672
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub;->enable()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_1

    :cond_9
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_a
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 675
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->enable()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_2

    :cond_b
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 677
    :cond_c
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 678
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Care;->enable()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_3

    :cond_d
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_e
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 681
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->enable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 683
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSupportedDigitalHuman()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 684
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 686
    :cond_f
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 689
    :cond_10
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 692
    :cond_11
    :goto_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 693
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Live;->enable()Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_5

    :cond_12
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 695
    :cond_13
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    if-eqz p0, :cond_15

    .line 696
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$ARCamera;->enable()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_14
    move v1, v2

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method private getChildMarginStart(Landroid/view/View;IZ)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 713
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_6

    .line 716
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_5

    const/4 p1, 0x5

    if-eqz p3, :cond_3

    .line 726
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v0

    :cond_1
    if-ge p2, p1, :cond_2

    .line 729
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_18p67_dp:I

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result p0

    :goto_1
    add-int/2addr v0, p0

    return v0

    .line 732
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result p0

    goto :goto_1

    :cond_3
    if-ge p2, p1, :cond_4

    .line 737
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result p0

    return p0

    .line 740
    :cond_4
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_8_dp:I

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result p0

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v0
.end method

.method private getDimension(I)I
    .locals 0

    .line 757
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getParentMarginStart(IZ)I
    .locals 1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 702
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    goto :goto_0

    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result p0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 704
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    goto :goto_1

    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result p0

    return p0
.end method

.method private getVisibleChildCount(Landroid/view/ViewGroup;)I
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 748
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 749
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public expandAiAgentEntranceCard()V
    .locals 2

    .line 474
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDigitalHumanIconX()F
    .locals 0

    .line 466
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutBottomPanel:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    return-object p0
.end method

.method public hideChangeSkinUnreadDot()V
    .locals 1

    .line 418
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicChangeSkinUnreadDot:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 419
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideMainPageUnreadDot()V
    .locals 1

    .line 431
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicMainpageUnreadDot:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 432
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->rootView:Landroid/view/View;

    .line 54
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_gamespace_function_zones:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    .line 55
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_bottom_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutBottomPanel:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_playmate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_playmate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvPlaymate:Landroid/widget/TextView;

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_care:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_care:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvCare:Landroid/widget/TextView;

    .line 66
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_live:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_live:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvLive:Landroid/widget/TextView;

    .line 71
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_arcamera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_aracame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvARCamera:Landroid/widget/TextView;

    .line 76
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->technology_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 78
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_technology_center_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_technology_center_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_technology_center_text_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_technology_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvTechCenter:Landroid/widget/TextView;

    .line 93
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_digitalhuman:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 95
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_digitalhuman_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    if-eqz v0, :cond_9

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->gamespace_digitalhuman_selector:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 100
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->gamespace_digittalhuman_icon:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_digitalhuman_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    if-eqz v0, :cond_a

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    :cond_a
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_digitalhuman_text_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    :cond_b
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_digitalhuman:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvDigitalHuman:Landroid/widget/TextView;

    .line 115
    :cond_c
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_mainpage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 117
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_mainpage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicMainPage:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_mainpage_unread_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicMainpageUnreadDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_d
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_mainpage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvMainpage:Landroid/widget/TextView;

    .line 125
    :cond_e
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_changeskin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 127
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_changeskin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicChangeSkin:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->redmagic_changeskin_unread_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicChangeSkinUnreadDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 131
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_f
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tips_changeskin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tipsChangeSkin:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    const/4 v1, 0x4

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tipsChangeSkin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_10
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_changeskin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tvChangeSkin:Landroid/widget/TextView;

    .line 139
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_techcenter_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$OnEventListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    .line 140
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_digitalhuman_entrance_card_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 141
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_entrance_card_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;-><init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    :cond_11
    return-void
.end method

.method public onBackPress()Z
    .locals 3

    .line 387
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->hide()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->hide()V

    move v0, v1

    .line 395
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->packup()V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 201
    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    const/high16 v5, 0x3f900000    # 1.125f

    const-string v6, "scaleY"

    const-string v7, "scaleX"

    const-string v8, "alpha"

    const-string v9, "translationY"

    const/4 v10, 0x4

    const-wide/16 v11, 0xfa

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/16 v16, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/4 v4, 0x2

    if-ne v1, v3, :cond_5

    .line 202
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_0

    .line 203
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    :cond_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_1

    .line 206
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    if-eqz v2, :cond_4

    .line 209
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v1, :cond_14

    .line 210
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 211
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    new-array v2, v14, [Landroid/view/View;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->rootView:Landroid/view/View;

    sget v14, Lcn/nubia/redmagickyi/main/R$id;->layout_operator_zones:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->getRootView()Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v15

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setViewToDismiss([Landroid/view/View;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    new-array v2, v4, [Landroid/view/View;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->rootView:Landroid/view/View;

    sget v14, Lcn/nubia/redmagickyi/main/R$id;->layout_operator_zones:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v15

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setViewToDismiss([Landroid/view/View;)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    new-array v2, v15, [Landroid/view/View;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v17

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setViewToDismiss([Landroid/view/View;)V

    .line 220
    :goto_0
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->show()V

    .line 221
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->getViewToDismiss()[Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->searchDifferentOfViewToDismiss([Landroid/view/View;)[Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setViewToDismiss([Landroid/view/View;)V

    .line 222
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->hide()V

    .line 223
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v1, v13}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->setViewToDismiss(Landroid/view/View;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    .line 226
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 228
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    sget v10, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f8_dp:I

    .line 230
    invoke-direct {v0, v10}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v10

    int-to-float v10, v10

    new-array v11, v4, [F

    aput v16, v11, v17

    aput v10, v11, v15

    invoke-static {v3, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    new-array v9, v4, [F

    fill-array-data v9, :array_0

    .line 231
    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v15

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    .line 232
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v8

    new-array v9, v4, [F

    aput v8, v9, v17

    aput v5, v9, v15

    invoke-static {v3, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    .line 233
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v3

    new-array v4, v4, [F

    aput v3, v4, v17

    const v3, 0x3f90a3d7    # 1.13f

    aput v3, v4, v15

    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 229
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 238
    :cond_4
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v1, :cond_14

    .line 239
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->hide()V

    .line 240
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v1, v13}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->setViewToDismiss(Landroid/view/View;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    .line 243
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 244
    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 245
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f8_dp:I

    .line 247
    invoke-direct {v0, v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v5

    int-to-float v5, v5

    new-array v10, v4, [F

    aput v5, v10, v17

    aput v16, v10, v15

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    .line 248
    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v15

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    .line 249
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v5

    new-array v8, v4, [F

    aput v5, v8, v17

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v8, v15

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    .line 250
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v3

    new-array v4, v4, [F

    aput v3, v4, v17

    aput v5, v4, v15

    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 246
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 255
    :cond_5
    iget-object v14, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    if-ne v1, v14, :cond_7

    .line 256
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_6

    .line 257
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 259
    :cond_6
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_14

    .line 260
    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 262
    :cond_7
    iget-object v14, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterTextSelected:Landroid/widget/CheckBox;

    if-ne v1, v14, :cond_9

    .line 263
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_8

    .line 264
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterIcon:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    :cond_8
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_14

    .line 267
    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 269
    :cond_9
    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    if-ne v1, v3, :cond_10

    .line 270
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_a

    .line 271
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    :cond_a
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_b

    .line 274
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_b
    if-eqz v2, :cond_f

    .line 277
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    if-eqz v1, :cond_14

    .line 278
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 279
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 280
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 281
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 282
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->rootView:Landroid/view/View;

    sget v14, Lcn/nubia/redmagickyi/main/R$id;->layout_operator_zones:I

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v3, v17

    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->getRootView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v3, v15

    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setViewToDismiss([Landroid/view/View;)V

    goto :goto_1

    .line 284
    :cond_c
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    new-array v2, v4, [Landroid/view/View;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->rootView:Landroid/view/View;

    sget v14, Lcn/nubia/redmagickyi/main/R$id;->layout_operator_zones:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v15

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setViewToDismiss([Landroid/view/View;)V

    goto :goto_1

    .line 287
    :cond_d
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    new-array v2, v15, [Landroid/view/View;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v17

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setViewToDismiss([Landroid/view/View;)V

    .line 289
    :goto_1
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->show()V

    .line 290
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    iget-object v2, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->getViewToDismiss()[Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->searchDifferentOfViewToDismiss([Landroid/view/View;)[Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setViewToDismiss([Landroid/view/View;)V

    .line 291
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->hide()V

    .line 292
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v1, v13}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->setViewToDismiss(Landroid/view/View;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    .line 295
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 296
    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 297
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    sget v10, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f8_dp:I

    .line 299
    invoke-direct {v0, v10}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v10

    int-to-float v10, v10

    new-array v11, v4, [F

    aput v16, v11, v17

    aput v10, v11, v15

    invoke-static {v3, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    new-array v9, v4, [F

    fill-array-data v9, :array_2

    .line 300
    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v15

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    .line 301
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v8

    new-array v9, v4, [F

    aput v8, v9, v17

    aput v5, v9, v15

    invoke-static {v3, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    .line 302
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v3

    new-array v4, v4, [F

    aput v3, v4, v17

    const v3, 0x3f90a3d7    # 1.13f

    aput v3, v4, v15

    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 298
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 304
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 306
    :cond_e
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->AiAgentSettings()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onHideTechCenter()V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onHideDigitalHumanEntrance()V

    goto/16 :goto_2

    .line 312
    :cond_f
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 313
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    if-eqz v1, :cond_14

    .line 314
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->hide()V

    .line 315
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v1, v13}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->setViewToDismiss(Landroid/view/View;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    .line 318
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 319
    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 320
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f8_dp:I

    .line 322
    invoke-direct {v0, v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v5

    int-to-float v5, v5

    new-array v10, v4, [F

    aput v5, v10, v17

    aput v16, v10, v15

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v17

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    new-array v5, v4, [F

    fill-array-data v5, :array_3

    .line 323
    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v15

    iget-object v3, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    .line 324
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v5

    new-array v8, v4, [F

    aput v5, v8, v17

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v8, v15

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    .line 325
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getScaleX()F

    move-result v3

    new-array v4, v4, [F

    aput v3, v4, v17

    aput v5, v4, v15

    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 321
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 327
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 331
    :cond_10
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    if-ne v1, v4, :cond_12

    .line 332
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_11

    .line 333
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 335
    :cond_11
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_14

    .line 336
    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 338
    :cond_12
    iget-object v4, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanTextSelected:Landroid/widget/CheckBox;

    if-ne v1, v4, :cond_14

    .line 339
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_13

    .line 340
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanIcon:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    :cond_13
    iget-object v1, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_14

    .line 343
    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_14
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 167
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_playmate:I

    if-ne p1, v0, :cond_0

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Playmate()V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCardDelayed()V

    goto/16 :goto_2

    .line 170
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_care:I

    if-ne p1, v0, :cond_1

    .line 171
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Care()V

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCardDelayed()V

    goto/16 :goto_2

    .line 173
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_live:I

    if-ne p1, v0, :cond_2

    .line 174
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Live()V

    .line 175
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    goto/16 :goto_2

    .line 176
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_arcamera:I

    if-ne p1, v0, :cond_3

    .line 177
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ARCamera()V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCardDelayed()V

    goto :goto_2

    .line 179
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_mainpage:I

    if-eq p1, v0, :cond_9

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_mainpage_unread_dot:I

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 184
    :cond_4
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_changeskin:I

    if-eq p1, v0, :cond_7

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_changeskin_unread_dot:I

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 189
    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_changeskin:I

    if-ne p1, v0, :cond_b

    .line 190
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_b

    .line 191
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gotoLoginOrAccoutDetail()V

    .line 192
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    goto :goto_2

    .line 185
    :cond_7
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_b

    .line 186
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->ChangeSkin()V

    .line 187
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    goto :goto_2

    .line 180
    :cond_9
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_b

    .line 181
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->MainPage()V

    .line 182
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->packupAiAgentEntranceCard()V

    .line 195
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onHideTechCenter()V

    .line 196
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->onHideDigitalHumanEntrance()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 352
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    if-eqz p0, :cond_1

    .line 353
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onHideDigitalHumanEntrance()V
    .locals 1

    .line 459
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onHideTechCenter()V
    .locals 1

    .line 445
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 371
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tipsChangeSkin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsChangeSkinUI(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onResume()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->digitalHumanEntranceCardLayer:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onResume()V

    .line 365
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    if-eqz p0, :cond_2

    .line 366
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onResume()V

    :cond_2
    return-void
.end method

.method public onShowDigitalHumanEntrance()V
    .locals 1

    .line 452
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbDigitalHumanText:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 453
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onShowTechCenter()V
    .locals 1

    .line 438
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->cbTechCenterText:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public packupAiAgentEntranceCard()V
    .locals 2

    .line 490
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public packupAiAgentEntranceCardDelayed()V
    .locals 4

    .line 505
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showChangeSkinTips()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tipsChangeSkin:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layout_gamespace_function_zones:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 405
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tipsChangeSkin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->gameSpaceController:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->tipsChangeSkin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateTipsChangeSkinUI(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showChangeSkinUnreadDot()V
    .locals 1

    .line 412
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicChangeSkinUnreadDot:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showMainPageUnreadDot()V
    .locals 1

    .line 425
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicMainpageUnreadDot:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateUIByOrientation(Z)V
    .locals 7

    .line 516
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->customUI()V

    .line 517
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->aiAgentEntranceCardLayer:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->updateUIByOrientation(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 519
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 521
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 522
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 525
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 526
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 527
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_100_dp:I

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 528
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 533
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 534
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 535
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getVisibleChildCount(Landroid/view/ViewGroup;)I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getParentMarginStart(IZ)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 536
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 537
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 538
    move-object v4, v3

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x51

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 539
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v5, v1

    .line 541
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 542
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 543
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 544
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 547
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 548
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 549
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    :cond_4
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 552
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 553
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 554
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    :cond_5
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 557
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 558
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 559
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->getItemCount()I

    move-result v3

    if-gtz v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 563
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 564
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    invoke-direct {p0, v1, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 565
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 568
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 569
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    invoke-direct {p0, v1, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 570
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 573
    :cond_9
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 574
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 575
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_48_dp:I

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 576
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutMainPage:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :cond_a
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 580
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v3

    if-eqz v3, :cond_b

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_48_dp:I

    goto :goto_2

    :cond_b
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_88_dp:I

    :goto_2
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 581
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v3

    if-eqz v3, :cond_c

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_120_dp:I

    goto :goto_3

    :cond_c
    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_100_dp:I

    :goto_3
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 582
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutChangeSkin:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    :cond_d
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 588
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 589
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getVisibleChildCount(Landroid/view/ViewGroup;)I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getParentMarginStart(IZ)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 590
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 591
    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f4_dp:I

    invoke-direct {p0, v6}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getDimension(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 592
    move-object v4, v3

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x800055

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 593
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_e
    move v5, v1

    .line 595
    :goto_4
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 596
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 597
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 598
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutDigitalHuman:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :cond_f
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 601
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 602
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 603
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicPlaymate:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    :cond_10
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 606
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 608
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicCare:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    :cond_11
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    if-eqz v2, :cond_13

    .line 611
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 612
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    invoke-direct {p0, v3, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 613
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->layoutTechCenter:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->technologyCenterLayer:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->getItemCount()I

    move-result v3

    if-gtz v3, :cond_12

    goto :goto_5

    :cond_12
    move v0, v1

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_13
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 618
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    invoke-direct {p0, v1, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 619
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicLive:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    :cond_14
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 622
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 623
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    invoke-direct {p0, v1, v5, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->getChildMarginStart(Landroid/view/View;IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 624
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFuntionZonesController;->redmagicARCamera:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    :goto_6
    return-void
.end method
