.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;
    }
.end annotation


# instance fields
.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;->type:I

    return p0
.end method

.method public setType(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->access$000(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;->type:I

    return-void
.end method
