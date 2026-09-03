.class public Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;
.super Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;
.source "ChargeStyleViewOne.java"


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

    .line 122
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->power_bg:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getContentView()I
    .locals 0

    .line 21
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_power_charge_style_one:I

    return p0
.end method

.method public getDelayedDuration()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initView(Landroid/view/ViewGroup;)V

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_battery_capacity:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;-><init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_time:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$3;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$3;-><init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 95
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_time:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$4;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$4;-><init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 106
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_battery:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;-><init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setImgChargeTipsMax(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 65
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->img_charge_tips_max:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setImgChargeTipsNeo(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 60
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->img_charge_tips_neo:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setImgChargeTipsNormal(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 55
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->img_charge_tips_normal:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setTvBatteryCapacity(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1

    .line 27
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_battery_capacity:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;-><init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method protected setTvTime(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 0

    .line 48
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method

.method protected updateUIByOrientation(Landroid/view/ViewGroup;Z)V
    .locals 0

    return-void
.end method
