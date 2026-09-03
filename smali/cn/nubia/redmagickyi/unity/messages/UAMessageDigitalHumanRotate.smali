.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanRotate;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageDigitalHumanRotate.java"


# instance fields
.field rotation:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setRotation(F)V
    .locals 0

    .line 7
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanRotate;->rotation:F

    return-void
.end method
