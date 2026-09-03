.class public Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;
.super Ljava/lang/Object;
.source "QueryFriendValueResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private friendliness_sum:I

.field private level:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendValue()I
    .locals 0

    .line 12
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->friendliness_sum:I

    return p0
.end method

.method public getLevel()I
    .locals 0

    .line 16
    iget p0, p0, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->level:I

    return p0
.end method
