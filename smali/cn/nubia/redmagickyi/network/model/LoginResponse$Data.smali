.class public Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/model/LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/network/model/LoginResponse;

.field private token_id:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->this$0:Lcn/nubia/redmagickyi/network/model/LoginResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->avatar:Ljava/lang/String;

    return-object p0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public getToken_id()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->token_id:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->user_id:Ljava/lang/String;

    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setToken_id(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->token_id:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->user_id:Ljava/lang/String;

    return-void
.end method
