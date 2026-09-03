.class Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;
.super Ljava/lang/Object;
.source "GetWeatherWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->detectLocation(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

.field final synthetic val$location:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;


# direct methods
.method constructor <init>(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    iput-object p2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->val$location:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$000(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->val$location:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->val$location:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zte/weather/sdk/model/api/WeatherContract;->fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/weather/sdk/model/api/WeatherInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$202(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;J)J

    .line 217
    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-static {v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$300(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;)Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$100(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    .line 218
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-static {p0, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$400(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/WeatherInfo;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;->this$0:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-static {p0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$300(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;)Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v1, v2, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->access$100(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    :goto_0
    return-void
.end method
