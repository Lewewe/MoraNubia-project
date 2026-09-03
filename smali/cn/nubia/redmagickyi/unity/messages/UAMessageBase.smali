.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.super Ljava/lang/Object;
.source "UAMessageBase.java"


# instance fields
.field msgID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgID()I
    .locals 0

    .line 7
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;->msgID:I

    return p0
.end method

.method public setMsgID(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;->msgID:I

    return-void
.end method
