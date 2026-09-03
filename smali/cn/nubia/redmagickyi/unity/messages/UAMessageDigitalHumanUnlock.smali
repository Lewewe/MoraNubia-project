.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanUnlock;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageDigitalHumanUnlock.java"


# instance fields
.field isUnlock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUnlock(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanUnlock;->isUnlock:Z

    return-void
.end method
