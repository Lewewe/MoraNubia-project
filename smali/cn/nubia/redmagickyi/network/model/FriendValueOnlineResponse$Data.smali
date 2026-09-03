.class public Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;
.super Ljava/lang/Object;
.source "FriendValueOnlineResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private friendliness_sum:I

.field private level:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendliness_sum()I
    .locals 0

    .line 13
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->friendliness_sum:I

    return p0
.end method

.method public getLevel()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->level:I

    return p0
.end method

.method public setFriendliness_sum(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->friendliness_sum:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->level:I

    return-void
.end method
