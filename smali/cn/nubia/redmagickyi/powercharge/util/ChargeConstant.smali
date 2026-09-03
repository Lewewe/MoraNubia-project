.class public Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;
.super Ljava/lang/Object;
.source "ChargeConstant.java"


# static fields
.field public static final MODEL_ID_ONE:I = 0x0

.field public static final MODEL_ID_TWO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChargeConstant"

.field static chargeStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init()V
    .locals 8

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    new-instance v7, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_magic_power_charge_style_one:I

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->power_item_selected_touyin_style_one:I

    new-instance v6, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;-><init>()V

    const/4 v2, 0x0

    const-string v5, "magic_power_charge_one"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;-><init>(IIILjava/lang/String;Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    new-instance v7, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_magic_power_charge_style_two:I

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->power_item_selected_touyin_style_two:I

    new-instance v6, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;-><init>()V

    const/4 v2, 0x1

    const-string v5, "magic_power_charge_two"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;-><init>(IIILjava/lang/String;Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
