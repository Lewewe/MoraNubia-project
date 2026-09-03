.class public Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;
.super Ljava/lang/Object;
.source "ChargeStyleBean.java"


# instance fields
.field private modelId:I

.field private styleView:Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

.field private techcenterThumbnailResId:I

.field private techcenterThumbnailSelectedResId:I

.field private techcenterVideoName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->modelId:I

    .line 16
    iput p2, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterThumbnailResId:I

    .line 17
    iput p3, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterThumbnailSelectedResId:I

    .line 18
    iput-object p4, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterVideoName:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->styleView:Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    return-void
.end method


# virtual methods
.method public getModelId()I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->modelId:I

    return p0
.end method

.method public getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->styleView:Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    return-object p0
.end method

.method public getTechcenterThumbnailResId()I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterThumbnailResId:I

    return p0
.end method

.method public getTechcenterThumbnailSelectedResId()I
    .locals 0

    .line 39
    iget p0, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterThumbnailSelectedResId:I

    return p0
.end method

.method public getTechcenterVideoName()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterVideoName:Ljava/lang/String;

    return-object p0
.end method

.method public setModelId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->modelId:I

    return-void
.end method

.method public setStyleView(Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->styleView:Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    return-void
.end method

.method public setTechcenterThumbnailResId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterThumbnailResId:I

    return-void
.end method

.method public setTechcenterThumbnailSelectedResId(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterThumbnailSelectedResId:I

    return-void
.end method

.method public setTechcenterVideoName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->techcenterVideoName:Ljava/lang/String;

    return-void
.end method
