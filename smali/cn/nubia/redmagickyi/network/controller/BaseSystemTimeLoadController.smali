.class public abstract Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseSystemTimeLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;
    .locals 2

    .line 13
    new-instance v0, Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController$1;)V

    .line 14
    const-class v1, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;->load()Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;

    move-result-object p0

    return-object p0
.end method
