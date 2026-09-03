.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChangeFrameRate.java"


# instance fields
.field frameRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrameRate()I
    .locals 0

    .line 7
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;->frameRate:I

    return p0
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;->frameRate:I

    return-void
.end method
