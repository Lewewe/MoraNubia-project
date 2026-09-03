.class public Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessagePlay.java"


# instance fields
.field motionId:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setMotionId(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->motionId:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->type:I

    return-void
.end method
