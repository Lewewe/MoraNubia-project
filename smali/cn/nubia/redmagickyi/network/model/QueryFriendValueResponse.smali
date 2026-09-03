.class public Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;
.super Ljava/lang/Object;
.source "QueryFriendValueResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

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
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->data:Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->data:Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->message:Ljava/lang/String;

    return-void
.end method
