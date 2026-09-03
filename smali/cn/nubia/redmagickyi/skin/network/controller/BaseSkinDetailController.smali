.class public abstract Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseSkinDetailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;->load()Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;

    move-result-object p0

    return-object p0
.end method

.method public load()Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;
    .locals 1

    .line 16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "loginToken cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadDetail(Ljava/lang/String;I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;
    .locals 2

    .line 20
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;-><init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$1;)V

    .line 21
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;->setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;->setId(I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;

    move-result-object p1

    const-class p2, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method
