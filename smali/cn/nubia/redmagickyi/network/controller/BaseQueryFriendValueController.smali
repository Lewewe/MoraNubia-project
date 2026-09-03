.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseQueryFriendValueController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$Task;,
        Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoginToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;->mLoginToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;->mLoginToken:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;
    .locals 2

    .line 17
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$1;)V

    .line 18
    const-class v1, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;->load()Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    move-result-object p0

    return-object p0
.end method
