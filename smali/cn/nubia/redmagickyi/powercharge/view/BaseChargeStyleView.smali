.class public abstract Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;
.super Ljava/lang/Object;
.source "BaseChargeStyleView.java"


# instance fields
.field private lastOrientation:Ljava/lang/Integer;

.field private mImgChargeTipsMax:Landroid/view/View;

.field private mImgChargeTipsNeo:Landroid/view/View;

.field private mImgChargeTipsNormal:Landroid/view/View;

.field private mPowerBootView:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mTvBatteryCapacity:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initAlarmBootBg(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->isLandscape(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getChargeBgDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mPowerBootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->isLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getChargeBgDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected abstract getChargeBgDrawable(Z)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getContentView()I
.end method

.method public getDelayedDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDimension(I)I
    .locals 0

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getImgChargeTipsMax()Landroid/view/View;
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mImgChargeTipsMax:Landroid/view/View;

    return-object p0
.end method

.method public getImgChargeTipsNeo()Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mImgChargeTipsNeo:Landroid/view/View;

    return-object p0
.end method

.method public getImgChargeTipsNormal()Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mImgChargeTipsNormal:Landroid/view/View;

    return-object p0
.end method

.method public getPerviewDuration()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getTvBatteryCapacity()Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mTvBatteryCapacity:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTvTime()Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mTvTime:Landroid/widget/TextView;

    return-object p0
.end method

.method public initOrientationn(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 59
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->lastOrientation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 61
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->lastOrientation:Ljava/lang/Integer;

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->isLandscape(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->updateUIByOrientation(Landroid/view/ViewGroup;Z)V

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initAlarmBootBg(I)V

    .line 64
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->initSceneOrientation(I)V

    :cond_1
    return-void
.end method

.method public final initSceneOrientation(I)V
    .locals 2

    .line 51
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;-><init>()V

    const/16 v1, 0x44d

    .line 52
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setMsgID(I)V

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->isLandscape(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setOrientation(I)V

    .line 54
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 3

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getContentView()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->power_boot_foreground:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mPowerBootView:Landroid/view/View;

    .line 38
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->setTvBatteryCapacity(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mTvBatteryCapacity:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->setTvTime(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mTvTime:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->setImgChargeTipsNormal(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mImgChargeTipsNormal:Landroid/view/View;

    .line 41
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->setImgChargeTipsNeo(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mImgChargeTipsNeo:Landroid/view/View;

    .line 42
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->setImgChargeTipsMax(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->mImgChargeTipsMax:Landroid/view/View;

    return-void
.end method

.method protected final isLandscape(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract setImgChargeTipsMax(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract setImgChargeTipsNeo(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract setImgChargeTipsNormal(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract setTvBatteryCapacity(Landroid/view/ViewGroup;)Landroid/widget/TextView;
.end method

.method protected abstract setTvTime(Landroid/view/ViewGroup;)Landroid/widget/TextView;
.end method

.method protected abstract updateUIByOrientation(Landroid/view/ViewGroup;Z)V
.end method
