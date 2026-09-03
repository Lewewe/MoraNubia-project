.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageAdjustVolume;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageAdjustVolume.java"


# instance fields
.field volAudio:I

.field volBgm:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setVolAudio(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageAdjustVolume;->volAudio:I

    return-void
.end method

.method public setVolBgm(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageAdjustVolume;->volBgm:I

    return-void
.end method
