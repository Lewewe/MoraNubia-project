.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChargeType.java"


# instance fields
.field chargeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setType(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChargeType;->chargeType:I

    return-void
.end method
