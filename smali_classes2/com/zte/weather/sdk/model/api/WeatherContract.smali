.class public Lcom/zte/weather/sdk/model/api/WeatherContract;
.super Ljava/lang/Object;
.source "WeatherContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/api/WeatherContract$WeatherDataColumn;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.weather.api"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final DEFAULT_CITY_WEATHER:Ljava/lang/String; = "DefaultCityWeather"

.field public static final DEFAULT_CITY_WEATHER_URI:Landroid/net/Uri;

.field public static final LOC_CITY_WEATHER:Ljava/lang/String; = "LocCityWeather"

.field public static final LOC_CITY_WEATHER_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "WeatherContract"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "content://cn.nubia.weather.api"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/api/WeatherContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 240
    const-string v1, "LocCityWeather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/zte/weather/sdk/model/api/WeatherContract;->LOC_CITY_WEATHER_URI:Landroid/net/Uri;

    .line 241
    const-string v1, "DefaultCityWeather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/api/WeatherContract;->DEFAULT_CITY_WEATHER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCityInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Lcom/zte/weather/sdk/model/city/City;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setCityId(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 118
    const-string v1, "zh"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setDistrict(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setCity(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setProvince(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setCountry(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getNameEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setDistrict(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getCityNameEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setCity(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getProvinceEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setProvince(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getCountryEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setCountry(Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneIsDayNightSaving()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneIsDayNightSaving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setDayNightSaving(I)V

    :cond_1
    return-void
.end method

.method public static addWeatherInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Weathers;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasCurrentConditiondata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1, v0}, Lcom/zte/weather/sdk/model/api/WeatherContract;->convertWeatherToDetail(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Weather;)Lcom/zte/weather/sdk/model/api/WeatherDetail;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setCurrent(Lcom/zte/weather/sdk/model/api/WeatherDetail;)V

    .line 94
    :cond_0
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasDailyForecastsData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/weather/Weathers;->getFiveDaysForecasts()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasYesterdayData()Z

    const/4 p2, 0x0

    .line 100
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 101
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/weather/sdk/model/weather/Weather;

    if-eqz v2, :cond_1

    .line 103
    invoke-static {p1, v2}, Lcom/zte/weather/sdk/model/api/WeatherContract;->convertWeatherToDetail(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Weather;)Lcom/zte/weather/sdk/model/api/WeatherDetail;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0, v1}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setDaysForecast(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public static convertWeatherToDetail(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Weather;)Lcom/zte/weather/sdk/model/api/WeatherDetail;
    .locals 10

    .line 139
    new-instance v0, Lcom/zte/weather/sdk/model/api/WeatherDetail;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/api/WeatherDetail;-><init>()V

    if-eqz p1, :cond_4

    .line 141
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getLocalDate()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getAirCondition()Lcom/zte/weather/sdk/model/weather/AirCondition;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/weather/AirCondition;->getAqiLevel()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/weather/AirCondition;->getAqi()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    move-object v4, v2

    .line 150
    :goto_0
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/mifavor/weather/sdk/helpers/TemperatureUtils;->getTemperatureOfCelsius(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Measurement;)Ljava/lang/Float;

    move-result-object v5

    .line 151
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getMinTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zte/mifavor/weather/sdk/helpers/TemperatureUtils;->getTemperatureOfCelsius(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Measurement;)Ljava/lang/Float;

    move-result-object v6

    .line 152
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getMaxTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/zte/mifavor/weather/sdk/helpers/TemperatureUtils;->getTemperatureOfCelsius(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Measurement;)Ljava/lang/Float;

    move-result-object v7

    .line 153
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getWindInfo()Lcom/zte/weather/sdk/model/weather/WindInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 157
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/weather/WindInfo;->getWindpower()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/weather/WindInfo;->getWindir()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v3

    .line 161
    :goto_1
    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setUpdateTime(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getEpochDate()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setTimeMills(Ljava/lang/Long;)V

    .line 163
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getWeatherTypeIcon()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setWeatherType(I)V

    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/zte/weather/sdk/model/api/WeatherContract;->getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setWeatherDescription(Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getWeatherTypeIconNight()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setWeatherTypeNight(I)V

    .line 172
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherContract;->getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setWeatherDescriptionNight(Ljava/lang/String;)V

    .line 175
    :cond_3
    invoke-virtual {v0, v4}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setAqiLevel(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v2}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setAqiValue(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v5}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setCurrentTemp(Ljava/lang/Float;)V

    .line 178
    invoke-virtual {v0, v7}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setMaxTemp(Ljava/lang/Float;)V

    .line 179
    invoke-virtual {v0, v6}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setMinTemp(Ljava/lang/Float;)V

    .line 180
    invoke-virtual {v0, v8}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setWindDirection(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->setWindPower(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method private static converterCityToWeatherInfo(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;)Lcom/zte/weather/sdk/model/api/WeatherInfo;
    .locals 1

    .line 208
    new-instance v0, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;-><init>()V

    .line 209
    invoke-static {v0, p1}, Lcom/zte/weather/sdk/model/api/WeatherContract;->addCityInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Lcom/zte/weather/sdk/model/city/City;)V

    .line 210
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getWeathers()Lcom/zte/weather/sdk/model/weather/Weathers;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    invoke-static {v0, p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherContract;->addWeatherInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Weathers;)V

    :cond_0
    return-object v0
.end method

.method public static fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/weather/sdk/model/api/WeatherInfo;
    .locals 2

    const/4 v0, 0x0

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/zte/weather/sdk/model/api/IConfig;

    invoke-static {p0, p1, p2, v0}, Lcom/zte/weather/sdk/model/api/WeatherContract;->fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zte/weather/sdk/model/api/IConfig;)Lcom/zte/weather/sdk/model/api/WeatherInfo;

    move-result-object p0

    return-object p0
.end method

.method public static fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zte/weather/sdk/model/api/IConfig;)Lcom/zte/weather/sdk/model/api/WeatherInfo;
    .locals 12

    const-string v0, "fetchWeatherByLatitudeAndLongitude city="

    const/4 v1, 0x0

    .line 37
    const-string v2, "WeatherContract"

    if-nez p0, :cond_0

    .line 38
    const-string p0, "fetchWeatherByLatitudeAndLongitude null context"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 42
    invoke-static {p2}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 45
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/16 v10, 0xa3

    move-object v5, p0

    move-object v11, p3

    invoke-static/range {v5 .. v11}, Lcom/zte/mifavor/weather/sdk/api/InternalApi;->fetchWeatherByLatitudeAndLongitude(Landroid/content/Context;DDILcom/zte/weather/sdk/model/api/IConfig;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v3

    if-nez v3, :cond_1

    .line 47
    const-string p0, "fetchWeatherByLatitudeAndLongitude null data"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 50
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 51
    invoke-interface {p3}, Lcom/zte/weather/sdk/model/api/IConfig;->needToFetchWeatherData()Z

    move-result p3

    if-nez p3, :cond_2

    .line 52
    const-string p0, "fetchWeatherByLatitudeAndLongitude city only"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    invoke-direct {p0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setLatitude(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setLongitude(Ljava/lang/String;)V

    .line 56
    invoke-static {p0, v3}, Lcom/zte/weather/sdk/model/api/WeatherContract;->addCityInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Lcom/zte/weather/sdk/model/city/City;)V

    return-object p0

    .line 59
    :cond_2
    invoke-virtual {v3}, Lcom/zte/weather/sdk/model/city/City;->getWeathers()Lcom/zte/weather/sdk/model/weather/Weathers;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 60
    invoke-virtual {p3}, Lcom/zte/weather/sdk/model/weather/Weathers;->getDataSavedFlag()I

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "fetchWeatherByLatitudeAndLongitude city and weather"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/api/WeatherInfo;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setLatitude(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->setLongitude(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, v3}, Lcom/zte/weather/sdk/model/api/WeatherContract;->addCityInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Lcom/zte/weather/sdk/model/city/City;)V

    .line 66
    invoke-static {v0, p0, p3}, Lcom/zte/weather/sdk/model/api/WeatherContract;->addWeatherInfo(Lcom/zte/weather/sdk/model/api/WeatherInfo;Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/Weathers;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    .line 78
    :cond_4
    const-string p0, "fetchWeatherByLatitudeAndLongitude invalid param"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getDefaultCityWeatherInfo(Landroid/content/Context;)Lcom/zte/weather/sdk/model/api/WeatherInfo;
    .locals 1

    .line 198
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryDefaultCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    const-string p0, "WeatherContract"

    const-string v0, "query default no city info"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    invoke-static {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherContract;->converterCityToWeatherInfo(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;)Lcom/zte/weather/sdk/model/api/WeatherInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getLocatedCityWeatherInfo(Landroid/content/Context;)Lcom/zte/weather/sdk/model/api/WeatherInfo;
    .locals 1

    .line 188
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryLocatedCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    const-string p0, "WeatherContract"

    const-string v0, "query located no city info"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    invoke-static {p0, v0}, Lcom/zte/weather/sdk/model/api/WeatherContract;->converterCityToWeatherInfo(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;)Lcom/zte/weather/sdk/model/api/WeatherInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weather_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static hasDoubleClock(Landroid/content/Context;)Z
    .locals 3

    .line 224
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryLocatedCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v0

    .line 225
    const-string v1, "WeatherContract"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 226
    const-string p0, "query no located city info"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 229
    :cond_0
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryDefaultCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object p0

    if-nez p0, :cond_1

    .line 231
    const-string p0, "query no default city info"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
