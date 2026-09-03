.class public Lcom/zte/mifavor/weather/sdk/api/InternalApi;
.super Ljava/lang/Object;
.source "InternalApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;DDILcom/zte/weather/sdk/model/api/IConfig;)Lcom/zte/weather/sdk/model/city/City;
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p6

    .line 36
    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByLatitudeAndLongitude(Landroid/content/Context;DDLcom/zte/weather/sdk/model/api/IConfig;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    .line 37
    const-string p2, "ExternalApi"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    .line 38
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/city/City;

    if-nez p0, :cond_0

    .line 40
    const-string p0, "fetchWeatherByLatitudeAndLongitude null city"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    if-eqz p6, :cond_1

    .line 42
    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->needToFetchWeatherData()Z

    move-result p1

    if-nez p1, :cond_1

    .line 43
    const-string p1, "fetchWeatherByLatitudeAndLongitude no weather data needed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchWeatherData(ILjava/lang/String;)Lcom/zte/weather/sdk/model/weather/Weathers;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/city/City;->setWeathers(Lcom/zte/weather/sdk/model/weather/Weathers;)V

    .line 51
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "fetchWeatherByLatitudeAndLongitude id="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " w="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 55
    :cond_3
    const-string p0, "fetchWeatherByLatitudeAndLongitude null location"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static getDefaultCityWeather(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;
    .locals 2

    .line 18
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryLocatedCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v0

    .line 19
    const-string v1, "ExternalApi"

    if-nez v0, :cond_1

    .line 20
    const-string v0, "getDefaultCityWeather has not located city"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryDefaultCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    const-string v0, "getDefaultCityWeather has default city"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 26
    :cond_0
    const-string p0, "getDefaultCityWeather none"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_1
    const-string p0, "getDefaultCityWeather has located city"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
