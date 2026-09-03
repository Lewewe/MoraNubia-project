.class public Lcn/nubia/redmagickyi/network/model/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

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

    .line 48
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;
    .locals 0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse;->data:Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse;->data:Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse;->message:Ljava/lang/String;

    return-void
.end method
