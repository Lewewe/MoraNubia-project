.class Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Icon"
.end annotation


# static fields
.field private static heightExpand:F

.field private static heightPackup:F

.field private static marginBottom:F

.field private static marginStartExpand:F

.field private static marginStartPackup:F

.field private static widthExpand:F

.field private static widthPackup:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 604
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_90p81_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->widthPackup:F

    .line 605
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_167p4_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->widthExpand:F

    .line 606
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_83_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->heightPackup:F

    .line 607
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_153_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->heightExpand:F

    .line 608
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60p22_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartPackup:F

    .line 609
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3p22_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartExpand:F

    .line 610
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_121_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->marginBottom:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->heightExpand:F

    return v0
.end method

.method static synthetic access$1100()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartPackup:F

    return v0
.end method

.method static synthetic access$1200()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartExpand:F

    return v0
.end method

.method static synthetic access$1300()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->marginBottom:F

    return v0
.end method

.method static synthetic access$700()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->widthPackup:F

    return v0
.end method

.method static synthetic access$800()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->widthExpand:F

    return v0
.end method

.method static synthetic access$900()F
    .locals 1

    .line 603
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->heightPackup:F

    return v0
.end method
