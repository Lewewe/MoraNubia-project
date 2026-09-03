.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChangePetSkin.java"


# instance fields
.field skinId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkinId()I
    .locals 0

    .line 7
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;->skinId:I

    return p0
.end method

.method public setSkinId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;->skinId:I

    return-void
.end method
