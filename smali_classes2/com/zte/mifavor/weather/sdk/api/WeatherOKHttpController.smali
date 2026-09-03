.class public Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "WeatherOKHttpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->mSubUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->mParams:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->mSubUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;)Ljava/util/HashMap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->mParams:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Class cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;-><init>(Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;)V

    const/4 p0, 0x1

    .line 35
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;->setSyncRequest(Z)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    if-eqz p0, :cond_0

    .line 37
    instance-of p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected final onSuccess(Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;)V
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

    .line 16
    check-cast p1, Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->onSuccess(Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;)V

    return-void
.end method
