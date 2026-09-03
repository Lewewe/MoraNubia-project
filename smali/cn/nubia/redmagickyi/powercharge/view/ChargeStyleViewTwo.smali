.class public Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;
.super Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;
.source "ChargeStyleViewTwo.java"


# instance fields
.field private layoutStyle:Landroid/view/View;

.field private layoutTips:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChargeBgDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->power_bg_2:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getContentView()I
    .locals 0

    .line 23
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_power_charge_style_two:I

    return p0
.end method

.method public getDelayedDuration()J
    .locals 2

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPerviewDuration()J
    .locals 2

    .line 91
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x9c4

    :goto_0
    return-wide v0
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initView(Landroid/view/ViewGroup;)V

    .line 29
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_style:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->layoutStyle:Landroid/view/View;

    .line 30
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_tips:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->layoutTips:Landroid/view/View;

    return-void
.end method

.method protected setImgChargeTipsMax(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 59
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->img_charge_tips_max:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setImgChargeTipsNeo(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 54
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->img_charge_tips_neo:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setImgChargeTipsNormal(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 49
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->img_charge_tips_normal:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setTvBatteryCapacity(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 0

    .line 35
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->tv_battery_capacity:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method

.method protected setTvTime(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 0

    .line 42
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method

.method protected updateUIByOrientation(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->layoutStyle:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_width_land:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getDimension(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x800013

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 73
    :goto_1
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p2, :cond_3

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_margin_top_land:I

    goto :goto_2

    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_margin_top:I

    :goto_2
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getDimension(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p2, :cond_4

    .line 75
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_margin_bottom_land:I

    goto :goto_3

    :cond_4
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_margin_bottom:I

    :goto_3
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getDimension(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->layoutStyle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getTvBatteryCapacity()Landroid/widget/TextView;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_5

    .line 80
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_battery_capacity_margin_top_land:I

    goto :goto_4

    :cond_5
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_battery_capacity_margin_top:I

    :goto_4
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_6

    .line 82
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_battery_capacity_text_land:I

    goto :goto_5

    :cond_6
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_battery_capacity_text:I

    :goto_5
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->layoutTips:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_7

    .line 85
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_tips_normal_margin_top_land:I

    goto :goto_6

    :cond_7
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->power_charge_two_tips_normal_margin_top:I

    :goto_6
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->getDimension(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewTwo;->layoutTips:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
