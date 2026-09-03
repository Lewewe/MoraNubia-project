.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageDeviceFJT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT$Scale;
    }
.end annotation


# static fields
.field public static final SCALE_TO_0:I = 0x0

.field public static final SCALE_TO_1:I = 0x1


# instance fields
.field scale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getScale()I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->scale:I

    return p0
.end method

.method public setScale(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceFJT;->scale:I

    return-void
.end method
