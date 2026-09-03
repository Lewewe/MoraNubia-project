.class Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;
.super Ljava/lang/Object;
.source "AiAgentEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# static fields
.field private static marginBottom:F

.field private static marginStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 583
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_61_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;->marginStart:F

    .line 584
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->access$3900()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_106_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;->marginBottom:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3600()F
    .locals 1

    .line 582
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;->marginStart:F

    return v0
.end method

.method static synthetic access$3700()F
    .locals 1

    .line 582
    sget v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;->marginBottom:F

    return v0
.end method
