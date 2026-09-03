.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageIdleState;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageIdleState.java"


# instance fields
.field isPlayIdle:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setIdleState(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIdleState;->isPlayIdle:Z

    return-void
.end method
