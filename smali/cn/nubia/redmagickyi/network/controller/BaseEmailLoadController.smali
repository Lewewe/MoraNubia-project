.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseEmailLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/EmailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private maxRetryCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 12
    const-string v0, "BaseEmailLoadController"

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;)Ljava/lang/Integer;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;
    .locals 2

    .line 16
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController$1;)V

    .line 17
    const-class v1, Lcn/nubia/redmagickyi/network/model/EmailResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->load()Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

    move-result-object p0

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;
    .locals 0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method
