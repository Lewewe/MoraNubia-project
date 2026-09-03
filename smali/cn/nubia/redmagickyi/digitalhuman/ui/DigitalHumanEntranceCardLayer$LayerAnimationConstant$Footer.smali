.class Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Footer"
.end annotation


# static fields
.field private static heightExpand:F

.field private static heightExpandNew:F

.field private static heightPackup:F

.field private static marginBottom:F

.field private static marginBottomExpand:F

.field private static marginBottomPackup:F

.field private static marginStartExpand:F

.field private static marginStartPackup:F

.field private static packupOffset:F

.field private static widthExpand:F

.field private static widthExpandNew:F

.field private static widthPackup:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 621
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_96_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->widthPackup:F

    .line 622
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_312_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->widthExpand:F

    .line 623
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_44_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->heightPackup:F

    .line 624
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_65_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->heightExpand:F

    .line 625
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_63_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginStartPackup:F

    .line 626
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginStartExpand:F

    .line 627
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_110_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginBottomPackup:F

    .line 628
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_102_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginBottomExpand:F

    .line 629
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->packupOffset:F

    .line 630
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->widthExpandNew:F

    .line 631
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->heightExpandNew:F

    .line 632
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_115_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginBottom:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2300()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->widthPackup:F

    return v0
.end method

.method static synthetic access$2400()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->widthExpand:F

    return v0
.end method

.method static synthetic access$2500()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->heightPackup:F

    return v0
.end method

.method static synthetic access$2600()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->heightExpand:F

    return v0
.end method

.method static synthetic access$2700()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginStartPackup:F

    return v0
.end method

.method static synthetic access$2800()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginStartExpand:F

    return v0
.end method

.method static synthetic access$2900()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginBottomPackup:F

    return v0
.end method

.method static synthetic access$3000()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginBottomExpand:F

    return v0
.end method

.method static synthetic access$3200()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->packupOffset:F

    return v0
.end method

.method static synthetic access$3300()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->widthExpandNew:F

    return v0
.end method

.method static synthetic access$3400()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->heightExpandNew:F

    return v0
.end method

.method static synthetic access$3500()F
    .locals 1

    .line 620
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->marginBottom:F

    return v0
.end method
