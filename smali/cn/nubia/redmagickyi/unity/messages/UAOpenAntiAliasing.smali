.class public Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAOpenAntiAliasing.java"


# instance fields
.field isOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;->isOpen:Z

    return-void
.end method


# virtual methods
.method public isOpen()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;->isOpen:Z

    return p0
.end method

.method public setOpen(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;->isOpen:Z

    return-void
.end method
