.class public Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;
.super Ljava/lang/Object;
.source "FriendValueOnlineResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

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

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->code:I

    return p0
.end method

.method public getData()Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->data:Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->code:I

    return-void
.end method

.method public setData(Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->data:Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->message:Ljava/lang/String;

    return-void
.end method
