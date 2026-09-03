.class public abstract Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseGetTokenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/network/BaseGetTokenController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/user/model/HttpRespond;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;->load()Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;

    move-result-object p0

    return-object p0
.end method

.method public load()Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;
    .locals 1

    .line 13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Code cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load(Ljava/lang/String;)Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;
    .locals 2

    .line 17
    new-instance v0, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController$Task;-><init>(Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;Lcn/nubia/redmagickyi/user/network/BaseGetTokenController$1;)V

    .line 18
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController$Task;->setCode(Ljava/lang/String;)V

    .line 19
    const-class p1, Lcn/nubia/redmagickyi/user/model/HttpRespond;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method

.method protected final onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected final onSuccess(Lcn/nubia/redmagickyi/user/model/HttpRespond;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    check-cast p1, Lcn/nubia/redmagickyi/user/model/HttpRespond;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;->onSuccess(Lcn/nubia/redmagickyi/user/model/HttpRespond;)V

    return-void
.end method
