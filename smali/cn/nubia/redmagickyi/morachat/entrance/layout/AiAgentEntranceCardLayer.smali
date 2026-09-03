.class public Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;
.super Ljava/lang/Object;
.source "AiAgentEntranceCardLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;,
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;,
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "AiAgentEntranceCardLayer"


# instance fields
.field private context:Landroid/app/Activity;

.field private isPause:Z

.field private ivIcon:Landroid/widget/ImageView;

.field private ivSettings:Landroid/widget/ImageView;

.field private layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

.field private layoutExpandFooter:Landroid/view/View;

.field private layoutExpandHeader:Landroid/view/View;

.field private layoutPackupFooter:Landroid/view/View;

.field private onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

.field private permissionRequestingView:Landroid/widget/TextView;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private rootView:Landroid/view/View;

.field private tvAiAgentOff:Landroid/widget/TextView;

.field private tvAiAgentOn:Landroid/widget/TextView;

.field private tvDescr:Landroid/widget/TextView;

.field private tvPackupFooter:Landroid/widget/TextView;

.field private viewToDismiss:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v1, 0x11170

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    .line 55
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    .line 56
    new-instance p1, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    .line 57
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->initView()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isOrientationPortrait()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->ivIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvPackupFooter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layoutPackupFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layoutExpandFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->ivSettings:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layoutExpandHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->viewToDismiss:Landroid/view/View;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->ivIcon:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->ivSettings:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_expand_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layoutExpandHeader:Landroid/view/View;

    .line 76
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_packup_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layoutPackupFooter:Landroid/view/View;

    .line 78
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_expand_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layoutExpandFooter:Landroid/view/View;

    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_packup_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvPackupFooter:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_describe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvDescr:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_aiagent_on:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOn:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_aiagent_off:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOff:Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 0

    .line 290
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private onDisableAiAgentWindow()V
    .locals 0

    return-void
.end method

.method private onEnableAiAgentWindow()V
    .locals 2

    .line 251
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->startWakeup()Z

    .line 252
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_card_enable_toast:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method private updateUI()V
    .locals 6

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getCurrentWakeupWords()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_card_header_desc_1:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    sget v5, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_card_header_desc_2:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_card_header_desc_3:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    const/16 v0, 0x21

    invoke-virtual {v3, v2, v5, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvDescr:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isEnableWakeup()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isEnableSystemVoiceAssistant()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOff:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEnableAiAgentWindow()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isOnlyFullScreenChatForAIAgent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_ENTRANCE_CARD_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_ENTRANCE_CARD_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->onExpandAiAgentEntranceCard()V

    :cond_3
    return-void
.end method


# virtual methods
.method public expand()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isOnlyFullScreenChatForAIAgent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->startChatActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableLowPowerWakeup()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->launchAiAgentSettings()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onResume()V

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animIn(Z)V

    .line 167
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    if-eqz p0, :cond_4

    .line 168
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->onExpandAiAgentEntranceCard()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->isExpaneded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->onPackupAiAgentEntranceCard()V

    goto/16 :goto_1

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 211
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_icon:I

    if-eq p1, v0, :cond_7

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_expand_header:I

    if-eq p1, v0, :cond_7

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_packup_footer:I

    if-eq p1, v0, :cond_7

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_expand_footer:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 217
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_settings:I

    if-ne p1, v0, :cond_3

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->launchAiAgentSettings()V

    goto :goto_1

    .line 219
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_aiagent_off:I

    if-ne p1, v0, :cond_9

    .line 220
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->hasPermission()Z

    move-result p1

    .line 221
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isEnableSystemVoiceAssistant()Z

    move-result v0

    .line 222
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    if-nez v0, :cond_4

    .line 226
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_9

    .line 227
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->go2SystemVoiceAssistant(Landroid/content/Context;)V

    goto :goto_1

    .line 230
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEnableAiAgentWindow()V

    goto :goto_1

    .line 233
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz p1, :cond_9

    .line 234
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->tvAiAgentOff:Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionRequestingView:Landroid/widget/TextView;

    .line 235
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    goto :goto_1

    .line 240
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 241
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->gotoSystemSettings(Landroid/content/Context;Ljava/lang/Integer;Z)V

    goto :goto_1

    .line 212
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 213
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->onPackupAiAgentEntranceCard()V

    goto :goto_1

    .line 215
    :cond_8
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->onExpandAiAgentEntranceCard()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isPause:Z

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

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
    .locals 2

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionRequestingView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->permissionRequestingView:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isPause:Z

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->updateUI()V

    return-void
.end method

.method public packup()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onPause()V

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->rootView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animOut(Z)V

    .line 187
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;

    if-eqz p0, :cond_2

    .line 188
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$OnEventListener;->onPackupAiAgentEntranceCard()V

    :cond_2
    return-void
.end method

.method public setViewToDismiss(Landroid/view/View;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->viewToDismiss:Landroid/view/View;

    return-void
.end method

.method public updateUIByOrientation(Z)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isEnable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->isExpanded()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 299
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animIn(Z)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->layerAnimation:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animOut(Z)V

    :goto_0
    return-void
.end method
