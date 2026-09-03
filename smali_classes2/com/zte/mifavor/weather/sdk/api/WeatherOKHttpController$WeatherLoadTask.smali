.class public Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "WeatherOKHttpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WeatherLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;


# direct methods
.method protected constructor <init>(Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;->this$0:Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method private getBaseUrl()Ljava/lang/String;
    .locals 0

    .line 76
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->self()Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClient()Lokhttp3/OkHttpClient;
    .locals 0

    .line 67
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->self()Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 0

    .line 72
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->self()Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 3

    .line 56
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;->this$0:Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    invoke-static {v2}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->access$000(Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController$WeatherLoadTask;->this$0:Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->access$100(Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addGetParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->get()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method
