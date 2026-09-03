.class public Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;
.super Ljava/lang/Object;
.source "SystemTimeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->data:Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->data:Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->message:Ljava/lang/String;

    return-void
.end method
