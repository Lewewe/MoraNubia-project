.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChangeSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin$SkinType;
    }
.end annotation


# static fields
.field public static final SKIN_TYPE_CHANGE_ANIM:I = 0x2

.field public static final SKIN_TYPE_DEFAULT:I = 0x0

.field public static final SKIN_TYPE_ENTER_ANIM:I = 0x1


# instance fields
.field skinId:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkinId()I
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->skinId:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->type:I

    return p0
.end method

.method public setSkinId(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->skinId:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->type:I

    return-void
.end method
