.class public Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;
.super Ljava/lang/Object;
.source "EmailFetchResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;

.field private message:Ljava/lang/String;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 86
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->data:Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    .line 94
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->total:I

    return p0
.end method

.method public setCode(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->data:Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->total:I

    return-void
.end method
