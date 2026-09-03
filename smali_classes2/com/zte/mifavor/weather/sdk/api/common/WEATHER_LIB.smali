.class public Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;
.super Ljava/lang/Object;
.source "WEATHER_LIB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch24HoursForecast(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;

    return-object p0
.end method

.method public static fetch24HoursForecastAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;

    return-object p0
.end method

.method public static fetchAbroadCityInfoByGeo(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/cityInfo"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;

    return-object p0
.end method

.method public static fetchAirQuality(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;

    return-object p0
.end method

.method public static fetchAqiYesterday(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse;

    return-object p0
.end method

.method public static fetchCurrentDetail(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;

    return-object p0
.end method

.method public static fetchCurrentDetailAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;

    return-object p0
.end method

.method public static fetchForecastDetail(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;

    return-object p0
.end method

.method public static fetchForecastDetailAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;

    return-object p0
.end method

.method public static fetchIndex7TypeAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;

    return-object p0
.end method

.method public static fetchIndex9Type(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;

    return-object p0
.end method

.method public static fetchMinutelyForecast(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/precipitation"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/MinutelyResponse;

    return-object p0
.end method

.method public static fetchSunRiseSet(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;

    return-object p0
.end method

.method public static fetchWarning(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/weather/common"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;

    return-object p0
.end method

.method public static searchAbroadCityInfo(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/city/searchCityInfo"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;

    return-object p0
.end method

.method public static searchHomeCityInfo(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;

    const-string v1, "v1/city/searchCityInfo"

    invoke-direct {v0, v1, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-class p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/WeatherOKHttpController;->load(Ljava/lang/Class;)Lcom/zte/mifavor/weather/sdk/api/common/BaseResponse;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;

    return-object p0
.end method
