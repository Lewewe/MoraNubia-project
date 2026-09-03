.class Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Text"
.end annotation


# static fields
.field private static marginBottomExpand:F

.field private static marginBottomPackup:F

.field private static marginStartExpand:F

.field private static marginStartPackup:F

.field private static textSizeExpand:F

.field private static textSizePackup:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 613
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_77p4_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginStartPackup:F

    .line 614
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_44_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginStartExpand:F

    .line 615
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_119_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginBottomPackup:F

    .line 616
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_112_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginBottomExpand:F

    .line 617
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->textSizePackup:F

    .line 618
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant;->access$4100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->textSizeExpand:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500()F
    .locals 1

    .line 612
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginStartPackup:F

    return v0
.end method

.method static synthetic access$1600()F
    .locals 1

    .line 612
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginStartExpand:F

    return v0
.end method

.method static synthetic access$1700()F
    .locals 1

    .line 612
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginBottomPackup:F

    return v0
.end method

.method static synthetic access$1800()F
    .locals 1

    .line 612
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->marginBottomExpand:F

    return v0
.end method

.method static synthetic access$2000()F
    .locals 1

    .line 612
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->textSizePackup:F

    return v0
.end method

.method static synthetic access$2100()F
    .locals 1

    .line 612
    sget v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->textSizeExpand:F

    return v0
.end method
