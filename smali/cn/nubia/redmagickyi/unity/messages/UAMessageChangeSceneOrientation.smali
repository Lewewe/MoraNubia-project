.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChangeSceneOrientation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation$Orientation;
    }
.end annotation


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# instance fields
.field orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->orientation:I

    return p0
.end method

.method public setOrientation(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->orientation:I

    return-void
.end method
