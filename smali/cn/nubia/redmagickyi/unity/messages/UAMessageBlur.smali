.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageBlur;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageBlur.java"


# instance fields
.field isOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setOpen(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageBlur;->isOpen:Z

    return-void
.end method
