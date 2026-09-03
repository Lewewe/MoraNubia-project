.class public Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;,
        Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;,
        Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "DigitalHumanEntranceCardLayer"


# instance fields
.field private context:Landroid/app/Activity;

.field private isPause:Z

.field private ivIcon:Landroid/widget/ImageView;

.field private ivSettings:Landroid/widget/ImageView;

.field private layerEnterAnimation:Landroid/view/animation/AnimationSet;

.field private layerExitAnimation:Landroid/view/animation/AnimationSet;

.field private layoutCard:Landroid/view/View;

.field private layoutExpandFooter:Landroid/view/View;

.field private layoutExpandHeader:Landroid/view/View;

.field private layoutPackupFooter:Landroid/view/View;

.field private onEventListener:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;

.field private rootView:Landroid/view/View;

.field private tvPackupFooter:Landroid/widget/TextView;

.field private tvStatusOff:Landroid/widget/TextView;

.field private tvStatusOn:Landroid/widget/TextView;

.field private viewToDismiss:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    .line 60
    iput-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;

    .line 61
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->initView()V

    .line 62
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutExpandHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->ivIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvPackupFooter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutPackupFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isOrientationPortrait()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutExpandFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3600(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->ivSettings:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutCard:Landroid/view/View;

    return-object p0
.end method

.method private initAnimation()V
    .locals 9

    .line 173
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 174
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 175
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    .line 176
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    const-wide/16 v7, 0xfa

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 182
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 183
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    .line 184
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_card:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutCard:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->iv_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->ivIcon:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->iv_settings:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->ivSettings:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_expand_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutExpandHeader:Landroid/view/View;

    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_packup_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutPackupFooter:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_expand_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutExpandFooter:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_packup_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvPackupFooter:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_status_on:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOn:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_status_off:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOff:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setOnMarginClickListener()V

    return-void
.end method

.method private isOrientationPortrait()Z
    .locals 0

    .line 328
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$searchDifferentOfViewToDismiss$0(Ljava/util/Set;Landroid/view/View;)Z
    .locals 0

    .line 203
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private setOnMarginClickListener()V
    .locals 3

    .line 99
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutExpandHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 161
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layoutExpandHeader:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animIn(Z)V

    .line 226
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->isDigitalHumanStatusOn()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOff:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->digital_human_entrance_card_enable_toast:I

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 231
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOn:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOff:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->tvStatusOn:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public getViewToDismiss()[Landroid/view/View;
    .locals 0

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    return-object p0
.end method

.method public hide()V
    .locals 9

    .line 277
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onPause()V

    .line 282
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerExitAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    if-eqz v0, :cond_4

    .line 288
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-eqz v5, :cond_3

    .line 290
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 291
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 292
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    if-nez v6, :cond_3

    .line 295
    iget-object v6, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {v6}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v6

    const-wide/16 v7, 0xfa

    .line 296
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 297
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;

    if-eqz p0, :cond_5

    .line 304
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;->onHideDigitalHumanEntrance()V

    :cond_5
    return-void
.end method

.method public isEnable()Z
    .locals 0

    .line 212
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->enable()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

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

.method synthetic lambda$searchDifferentOfViewToDismiss$1$cn-nubia-redmagickyi-digitalhuman-ui-DigitalHumanEntranceCardLayer(I)[Landroid/view/View;
    .locals 0

    .line 204
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->hide()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_status_off:I

    if-ne v0, v1, :cond_2

    .line 321
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->gotoMainSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_status_on:I

    if-ne p1, v0, :cond_3

    .line 323
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->gotoDigitalHumanSettings(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isPause:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isPause:Z

    .line 217
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->updateUI()V

    return-void
.end method

.method public searchDifferentOfViewToDismiss([Landroid/view/View;)[Landroid/view/View;
    .locals 2

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 202
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 203
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)V

    .line 204
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public setViewToDismiss([Landroid/view/View;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 8

    .line 244
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onResume()V

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 252
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->layerEnterAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->viewToDismiss:[Landroid/view/View;

    if-eqz v0, :cond_4

    .line 256
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    .line 258
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    .line 259
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    if-eqz v5, :cond_3

    .line 262
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->context:Landroid/app/Activity;

    invoke-static {v5}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v5

    const-wide/16 v6, 0xfa

    .line 263
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onEventListener:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;

    if-eqz p0, :cond_5

    .line 271
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$OnEventListener;->onShowDigitalHumanEntrance()V

    :cond_5
    return-void
.end method
