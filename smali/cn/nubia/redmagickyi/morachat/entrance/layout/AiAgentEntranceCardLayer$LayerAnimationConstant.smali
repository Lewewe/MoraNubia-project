.class Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;
.super Ljava/lang/Object;
.source "AiAgentEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayerAnimationConstant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;,
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;,
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;,
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;,
        Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Root;
    }
.end annotation


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 546
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3900()Landroid/content/Context;
    .locals 1

    .line 545
    sget-object v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant;->context:Landroid/content/Context;

    return-object v0
.end method
