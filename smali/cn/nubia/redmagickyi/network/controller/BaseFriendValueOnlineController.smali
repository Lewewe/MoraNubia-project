.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseFriendValueOnlineController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$UpdateTask;,
        Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private friendlinessSum:I

.field private loginToken:Ljava/lang/String;

.field private partsName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 14
    const-string v0, "BaseFriendValueOnlineController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->loginToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->partsName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)I
    .locals 0

    .line 9
    iget p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->friendlinessSum:I

    return p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->load()Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;

    move-result-object p0

    return-object p0
.end method

.method public sync(Ljava/lang/String;I)Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->loginToken:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->friendlinessSum:I

    .line 32
    new-instance p1, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$1;)V

    .line 33
    const-class p2, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->loginToken:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->partsName:Ljava/lang/String;

    .line 24
    new-instance p1, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$UpdateTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$UpdateTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$1;)V

    .line 25
    const-class p2, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$UpdateTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method
