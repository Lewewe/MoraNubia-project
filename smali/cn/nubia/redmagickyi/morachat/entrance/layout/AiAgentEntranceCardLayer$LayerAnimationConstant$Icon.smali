.class Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;
.super Ljava/lang/Object;
.source "AiAgentEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;
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

    .line 552
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_90p81_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->widthPackup:F

    .line 553
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_145p52_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->widthExpand:F

    .line 554
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_83_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->heightPackup:F

    .line 555
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_133_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->heightExpand:F

    .line 556
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60p22_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartPackup:F

    .line 557
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_46p22_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartExpand:F

    .line 558
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_125_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->marginBottom:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->widthPackup:F

    return v0
.end method

.method static synthetic access$400()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->widthExpand:F

    return v0
.end method

.method static synthetic access$500()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->heightPackup:F

    return v0
.end method

.method static synthetic access$600()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->heightExpand:F

    return v0
.end method

.method static synthetic access$700()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartPackup:F

    return v0
.end method

.method static synthetic access$800()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->marginStartExpand:F

    return v0
.end method

.method static synthetic access$900()F
    .locals 1

    .line 551
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->marginBottom:F

    return v0
.end method
