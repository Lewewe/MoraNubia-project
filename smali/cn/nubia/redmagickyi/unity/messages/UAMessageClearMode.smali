.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageClearMode.java"


# instance fields
.field isPure:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public isPure()Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;->isPure:Z

    return p0
.end method

.method public setPure(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageClearMode;->isPure:Z

    return-void
.end method
