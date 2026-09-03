.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseEmailFetchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;,
        Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private emailId:I

.field private loginToken:Ljava/lang/String;

.field private maxRteyTime:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 12
    const-string v0, "BaseEmailFetchController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->loginToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;)I
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->emailId:I

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;)Ljava/lang/Integer;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->maxRteyTime:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public fetchEmail(Ljava/lang/String;I)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->loginToken:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->emailId:I

    .line 33
    new-instance p1, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$1;)V

    .line 34
    const-class p2, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public load()Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
    .locals 2

    .line 20
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$1;)V

    .line 21
    const-class v1, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->load()Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    move-result-object p0

    return-object p0
.end method

.method public setMaxRteyTime(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->maxRteyTime:Ljava/lang/Integer;

    return-object p0
.end method
