.class public abstract Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseBundleLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;->load()Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;

    move-result-object p0

    return-object p0
.end method

.method public load()Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;
    .locals 2

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController$Task;-><init>(Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController$1;)V

    .line 20
    const-class v1, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method
