.class public Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;
.super Ljava/lang/Object;
.source "WeatherDataFetcher.java"


# static fields
.field private static final FORECASTS_DAYS_MAX:I = 0x4

.field private static final FORECASTS_HOURS_MAX:I = 0x19

.field private static final SHOW_DEBUG_TEMPS:Z = false

.field public static final SUPPORT_ABROAD:Z = true

.field public static final SUPPORT_GET_ABROAD_CITY_BY_GEO_ONLINE:Z = true

.field private static final TAG:Ljava/lang/String; = "WeatherDataFetcher"

.field public static sCountForFetchingData:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAirConditionInfo(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 3

    .line 804
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 805
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v1, "stationid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string p1, "type"

    const-string v1, "air"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :try_start_0
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchAirQuality(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 812
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferAirData(Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;)Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 814
    const-string v0, "WeatherDataFetcher"

    const-string v1, "addAirConditionInfo"

    invoke-static {v0, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getAirCondition()Lcom/zte/weather/sdk/model/weather/AirCondition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setAirCondition(Lcom/zte/weather/sdk/model/weather/AirCondition;)V

    const/16 p1, 0x20

    .line 818
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 823
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static addAlerts(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 3

    .line 855
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 856
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string v1, "stationid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string p1, "type"

    const-string v1, "alert"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :try_start_0
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchWarning(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 863
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferAlertsStruct(Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;)Lcom/zte/weather/sdk/model/weather/AlertInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 865
    const-string v0, "WeatherDataFetcher"

    const-string v1, "fetchAlerts"

    invoke-static {v0, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setAlertInfo(Lcom/zte/weather/sdk/model/weather/AlertInfo;)V

    const/16 p1, 0x8

    .line 867
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 871
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static addCurrentWeather(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 5

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "stationid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "WeatherDataFetcher"

    const-string v4, "type"

    if-eqz p1, :cond_1

    .line 532
    const-string p1, "current"

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :try_start_0
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchCurrentDetail(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 537
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferCurrentWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 538
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "addCurrentWeather"

    invoke-static {v3, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setCurrentCondition(Lcom/zte/weather/sdk/model/weather/Weather;)V

    .line 541
    invoke-virtual {p0, v1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 550
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 553
    :cond_1
    const-string p1, "afcurrent"

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :try_start_1
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchCurrentDetailAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 558
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferCurrentWeathersStructAbroad(Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 559
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const-string v0, "addCurrentWeather abroad"

    invoke-static {v3, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setCurrentCondition(Lcom/zte/weather/sdk/model/weather/Weather;)V

    .line 562
    invoke-virtual {p0, v1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception p0

    .line 571
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static addDailyForecast(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 6

    const-string v0, "fetchDailyForecast abroad todayWeather="

    .line 620
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 621
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "stationid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "type"

    const-string v5, "WeatherDataFetcher"

    if-eqz p1, :cond_2

    .line 627
    const-string p1, "forecast7d"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :try_start_0
    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchForecastDetail(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 632
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferDailyWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 633
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 634
    const-string v0, "fetchDailyForecast"

    invoke-static {v5, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/weather/sdk/model/weather/Weather;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/weather/Weather;->getMaxTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setMaxTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 640
    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/weather/Weather;->getMinTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setMinTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getFiveDaysForecasts()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setFiveDaysForecasts(Ljava/util/ArrayList;)V

    .line 651
    :goto_0
    invoke-virtual {p0, v2}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 655
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 658
    :cond_2
    const-string p1, "afforecast15d"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :try_start_1
    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchForecastDetailAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 663
    move-object v1, p1

    check-cast v1, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferDailyWeathersStructAbroad(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 665
    const-string v1, "fetchDailyForecast abroad"

    invoke-static {v5, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getFiveDaysForecasts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 668
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 670
    :cond_3
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setFiveDaysForecasts(Ljava/util/ArrayList;)V

    .line 673
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/weather/sdk/model/weather/Weather;

    if-eqz p1, :cond_4

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getSunRise()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getSunSet()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->appendSunriseAndSunsetForToday(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_4
    invoke-virtual {p0, v2}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 683
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method private static addHourlyForecast(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;I)V
    .locals 3

    .line 578
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 579
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "stationid"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    const-string v1, "WeatherDataFetcher"

    const-string v2, "type"

    if-eqz p1, :cond_0

    .line 584
    const-string p1, "forecast24h"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :try_start_0
    invoke-static {p2}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetch24HoursForecast(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 589
    move-object p2, p1

    check-cast p2, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferHourlyWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 591
    const-string p2, "fetchHourlyForecast"

    invoke-static {v1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setTwentyFourHoursForecasts(Ljava/util/ArrayList;)V

    .line 593
    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 597
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 600
    :cond_0
    const-string p1, "afforecast24h"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :try_start_1
    invoke-static {p2}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetch24HoursForecastAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 605
    move-object p2, p1

    check-cast p2, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferHourlyWeathersStructAbroad(Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 607
    const-string p2, "fetchHourlyForecast abroad"

    invoke-static {v1, p2}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setTwentyFourHoursForecasts(Ljava/util/ArrayList;)V

    .line 609
    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 613
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static addIndex(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 6

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 729
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v1, "stationid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->isChinese()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    const-string v2, "lang"

    const-string v3, "en"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_0
    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "addIndex"

    const-string v3, "WeatherDataFetcher"

    const-string v4, "type"

    const/16 v5, 0x40

    if-eqz p1, :cond_4

    .line 740
    const-string p1, "index9type"

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :try_start_0
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchIndex9Type(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 745
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferIndexData(Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;)Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 747
    invoke-static {v3, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfos(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfosEn(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    .line 756
    :goto_0
    invoke-virtual {p0, v5}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    goto :goto_3

    .line 758
    :cond_2
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    if-eqz v1, :cond_3

    .line 760
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfos(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    goto :goto_1

    .line 762
    :cond_3
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfosEn(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    .line 765
    :goto_1
    invoke-virtual {p0, v5}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    .line 766
    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/weather/Weathers;->setCurrentCondition(Lcom/zte/weather/sdk/model/weather/Weather;)V

    const/4 p1, 0x1

    .line 767
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 772
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 775
    :cond_4
    const-string p1, "index7Abroad"

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string p1, "ivsion"

    const-string v4, "v1"

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    :try_start_1
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchIndex7TypeAbroad(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 781
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferIndexDataAbraod(Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;)Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 783
    invoke-static {v3, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 787
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfos(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    goto :goto_2

    .line 789
    :cond_5
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfosEn(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    .line 792
    :goto_2
    invoke-virtual {p0, v5}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method private static addSunriseAndSunset(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 3

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 830
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v1, "stationid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string p1, "type"

    const-string v1, "riseset"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :try_start_0
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchSunRiseSet(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 837
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferSunriseAndSunset(Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;)Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 839
    const-string v0, "WeatherDataFetcher"

    const-string v1, "addSunriseAndSunset"

    invoke-static {v0, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getSunRise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunRise(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/Weather;->getSunSet()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunSet(Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 844
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 849
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static addYesterdayForecast(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V
    .locals 3

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 707
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v1, "stationid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string p1, "type"

    const-string v1, "yesterday"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :try_start_0
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchForecastDetail(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 714
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->transferDailyWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 716
    const-string v0, "WeatherDataFetcher"

    const-string v1, "fetchDailyForecast"

    invoke-static {v0, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setFiveDaysForecasts(Ljava/util/ArrayList;)V

    const/16 p1, 0x80

    .line 718
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 722
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static appendSunriseAndSunsetForToday(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunRise(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, p2}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunSet(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_0
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 696
    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunRise(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p2}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunSet(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/weather/Weathers;->setCurrentCondition(Lcom/zte/weather/sdk/model/weather/Weather;)V

    const/16 p1, 0x10

    .line 699
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    const/4 p1, 0x1

    .line 700
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    :goto_0
    return-void
.end method

.method public static countForFetchingData()V
    .locals 4

    .line 59
    sget-wide v0, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->sCountForFetchingData:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->sCountForFetchingData:J

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Fetched Count]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->sCountForFetchingData:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherDataFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fetchAbroadCitiesByGeoOnline(Landroid/content/Context;DD)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "DD)",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 360
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "type"

    const-string v1, "lonlatCity"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "lng"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string p3, "lat"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :try_start_0
    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->fetchAbroadCityInfoByGeo(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse;->getResult()Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    .line 377
    :cond_1
    const-string p2, "WeatherDataFetcher"

    const-string p3, "parse city info"

    invoke-static {p2, p3}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance p2, Lcom/zte/weather/sdk/model/city/City;

    invoke-direct {p2}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    .line 379
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getStationid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setLocationKey(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getCountry_name_en()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setCountryEn(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getProvince_name_en()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setProvinceEn(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getCity_name_en()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setNameEn(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getCountry_name_cn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setCountry(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getProvince_name_cn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setProvince(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getCity_name_cn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setName(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getTime_zone()Ljava/lang/String;

    move-result-object p3

    .line 387
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p4, :cond_3

    .line 389
    :try_start_1
    const-string p4, "++0"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 390
    const-string p3, "+0"

    .line 393
    :cond_2
    invoke-static {p3}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 395
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 397
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/zte/weather/sdk/model/city/City;->setUtc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 401
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/GeoAbroadCityInfoResponse$ResultBean;->getTimezone()Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 407
    invoke-virtual {p2, p0}, Lcom/zte/weather/sdk/model/city/City;->setTimezoneName(Ljava/lang/String;)V

    .line 410
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public static fetchCitiesByLatitudeAndLongitude(Landroid/content/Context;DDLcom/zte/weather/sdk/model/api/IConfig;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "DD",
            "Lcom/zte/weather/sdk/model/api/IConfig;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;"
        }
    .end annotation

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    .line 92
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 93
    sget-boolean v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    const-string v12, "WeatherDataFetcher"

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryByLatitudeAndLongitude latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->getAddressByLanguage(Landroid/content/Context;Ljava/util/Locale;DDLcom/zte/weather/sdk/model/api/IConfig;)Landroid/location/Address;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_1

    .line 99
    const-string v0, "address not found for zh"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    .line 103
    :cond_1
    invoke-virtual {v13}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "\u4e2d\u56fd"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->getAddressByLanguage(Landroid/content/Context;Ljava/util/Locale;DDLcom/zte/weather/sdk/model/api/IConfig;)Landroid/location/Address;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v14

    .line 107
    :goto_0
    sget-boolean v1, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    if-eqz v1, :cond_3

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryByLatitudeAndLongitude cityAddressZh="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cityAddressEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    invoke-virtual {v13}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    const-string v0, "using geo online interface for abroad"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object v0, v14

    check-cast v0, Landroid/content/Context;

    invoke-static {v14, v7, v8, v9, v10}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchAbroadCitiesByGeoOnline(Landroid/content/Context;DD)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 115
    :cond_4
    invoke-virtual {v13}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->getDistrictCanBeSearched(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v13}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v13}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_8

    .line 125
    move-object v4, v14

    check-cast v4, Landroid/content/Context;

    invoke-static {v14, v1, v5, v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 127
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 129
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v8, :cond_5

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "queryByLatitudeAndLongitude locality city="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    invoke-static {v2}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isSpecialCity(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 137
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    .line 139
    :cond_6
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    and-int/2addr v9, v10

    .line 140
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    :goto_2
    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    .line 144
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_7
    invoke-static {v14, v1, v6, v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 152
    invoke-static {v4, v7}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->appendEnglishNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 157
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 158
    move-object v4, v14

    check-cast v4, Landroid/content/Context;

    invoke-static {v14, v2, v5, v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 159
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 160
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 162
    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 163
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v8, :cond_9

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "queryByLatitudeAndLongitude subAdminArea city="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 169
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 171
    invoke-virtual {v8}, Lcom/zte/weather/sdk/model/city/City;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    :cond_a
    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    .line 176
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 182
    :cond_b
    invoke-static {v14, v2, v6, v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 184
    invoke-static {v4, v2}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->appendEnglishNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 189
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 190
    move-object v2, v14

    check-cast v2, Landroid/content/Context;

    invoke-static {v14, v1, v5, v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 192
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 194
    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 195
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v5, :cond_d

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "queryByLatitudeAndLongitude special locality city="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v5}, Lcom/zte/weather/sdk/model/city/City;->getProvince()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 201
    invoke-virtual {v5}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_d

    .line 203
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 209
    :cond_e
    invoke-static {v14, v1, v6, v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 211
    invoke-static {v2, v0}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->appendEnglishNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_f
    return-object v11
.end method

.method public static fetchCitiesByName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-static {v0, p1, v2, v2}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 71
    invoke-static {v3, v4}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->appendEnglishNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 75
    :cond_0
    invoke-static {v0, p1, v1, v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-static {v0, p1, v2, v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-static {v3, p1}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->appendEnglishNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 84
    :cond_1
    sget-boolean p1, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    if-eqz p1, :cond_2

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "search reault="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WeatherDataFetcher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public static fetchCitiesByNameOnline(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "WeatherDataFetcher"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 223
    const-string p0, "empty name"

    invoke-static {v0, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 226
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 227
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getApiKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v2, "type"

    const-string v3, "searchCity"

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "1"

    if-eqz p3, :cond_1

    const-string v3, "0"

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const-string v4, "domestic"

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 230
    const-string v3, "cn"

    goto :goto_1

    :cond_2
    const-string v3, "en"

    :goto_1
    const-string v4, "language"

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v3, "city"

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string p1, "complete"

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const-string v2, "parse city info"

    if-eqz p3, :cond_b

    .line 236
    const-string p3, "ivsion"

    const-string v3, "v1"

    invoke-virtual {p0, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :try_start_0
    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->searchAbroadCityInfo(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 241
    move-object p3, p0

    check-cast p3, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse;->getResult()Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 247
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_a

    .line 248
    invoke-static {v0, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 251
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 252
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;

    if-eqz p3, :cond_4

    .line 254
    new-instance v0, Lcom/zte/weather/sdk/model/city/City;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    .line 255
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getStationid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setLocationKey(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 257
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getNation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCountry(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getProv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setProvince(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getNation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCountryEn(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getProv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setProvinceEn(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setNameEn(Ljava/lang/String;)V

    .line 266
    :goto_3
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getUtc()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_7

    .line 269
    :try_start_1
    const-string v2, "++0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    const-string v1, "+0"

    .line 273
    :cond_6
    invoke-static {v1}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 275
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 277
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setUtc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 281
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    :cond_7
    :goto_4
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getTimezone()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 287
    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setTimezoneName(Ljava/lang/String;)V

    .line 290
    :cond_8
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setLatitude(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedAbroadCityInfoResponse$ResultBean$AbroadCityInfo;->getLon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/zte/weather/sdk/model/city/City;->setLongitude(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :cond_9
    return-object p1

    :cond_a
    return-object v1

    :catch_1
    move-exception p0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 308
    :cond_b
    :try_start_3
    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WEATHER_LIB;->searchHomeCityInfo(Ljava/util/HashMap;)Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 310
    move-object p3, p0

    check-cast p3, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse;->getResult()Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v1

    .line 315
    :cond_c
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean;->getData()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 316
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_10

    .line 317
    invoke-static {v0, v2}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 320
    :cond_d
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 321
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;

    if-eqz p3, :cond_d

    .line 323
    new-instance v0, Lcom/zte/weather/sdk/model/city/City;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    .line 324
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getStationid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setLocationKey(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    .line 326
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getNation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCountry(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getProv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setProvince(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCityName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getDistrict()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/zte/weather/sdk/model/city/City;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 331
    :cond_e
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getNation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCountryEn(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getProv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->makeFirstLetterUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setProvinceEn(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->makeFirstLetterUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCityNameEn(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Lcom/zte/mifavor/weather/sdk/api/common/SearchedHomeCityInfoResponse$ResultBean$HomeCityInfo;->getDistrict()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->makeFirstLetterUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/zte/weather/sdk/model/city/City;->setNameEn(Ljava/lang/String;)V

    .line 337
    :goto_6
    const-string p3, "Asia/Shanghai"

    invoke-virtual {v0, p3}, Lcom/zte/weather/sdk/model/city/City;->setTimezoneName(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :cond_f
    return-object p1

    :cond_10
    return-object v1

    :catch_2
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-object p1
.end method

.method public static fetchWeatherData(ILjava/lang/String;)Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 3

    .line 479
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weathers;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weathers;-><init>()V

    .line 480
    invoke-virtual {v0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setLocationKey(Ljava/lang/String;)V

    const/16 v1, 0xff

    .line 481
    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 482
    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setLastQueryType(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x27

    .line 483
    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 484
    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setLastQueryType(I)V

    .line 487
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchWeatherData query type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getLastQueryType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataFetcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasCurrentConditionType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addCurrentWeather(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 492
    :cond_2
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasHourlyForecastsType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 493
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->getHourlyForecastHour()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addHourlyForecast(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;I)V

    .line 496
    :cond_3
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasYesterday(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 497
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addYesterdayForecast(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 500
    :cond_4
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasDailyForecastsType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 501
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addDailyForecast(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 504
    :cond_5
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasIndexType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 505
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addIndex(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 508
    :cond_6
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasAQI(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 509
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addAirConditionInfo(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 512
    :cond_7
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasSunriseAndSunset(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 513
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addSunriseAndSunset(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 516
    :cond_8
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasAlerts(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 517
    invoke-static {v0, p1}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->addAlerts(Lcom/zte/weather/sdk/model/weather/Weathers;Ljava/lang/String;)V

    .line 520
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->setLastModified(J)V

    .line 521
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataFetcher;->countForFetchingData()V

    return-object v0
.end method

.method public static getAddressByLanguage(Landroid/content/Context;Ljava/util/Locale;DDLcom/zte/weather/sdk/model/api/IConfig;)Landroid/location/Address;
    .locals 8

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAddressByLanguage Locale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherDataFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/logger/LogUtils;->encryptLocationMessage(Ljava/lang/String;)[B

    move-result-object v0

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p6, :cond_1

    .line 425
    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->getAddressListZh()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->getAddressListZh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "getAddressByLanguage I"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->getAddressListZh()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 431
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    if-eqz p6, :cond_3

    .line 440
    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->getAddressListEn()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->getAddressListEn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    const-string v0, "getAddressByLanguage II"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-interface {p6}, Lcom/zte/weather/sdk/model/api/IConfig;->getAddressListEn()Ljava/util/List;

    move-result-object p6

    if-eqz p6, :cond_3

    .line 443
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 444
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    .line 446
    :cond_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    if-eqz v0, :cond_2

    return-object v0

    .line 455
    :cond_3
    const-string p6, "getAddressByLanguage III"

    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p6, 0x0

    .line 458
    :try_start_0
    new-instance v2, Landroid/location/Geocoder;

    invoke-direct {v2, p0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v7, 0x5

    move-wide v3, p2

    move-wide v5, p4

    .line 459
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 460
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 461
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 463
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 464
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    return-object p1

    :cond_5
    return-object p6

    :catch_0
    move-exception p0

    .line 473
    const-string p1, "city converter exception II"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p6
.end method

.method public static getDefaultWeathers(Lcom/zte/weather/sdk/model/city/City;I)Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 11

    if-eqz p0, :cond_5

    .line 877
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 878
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weathers;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weathers;-><init>()V

    .line 879
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 884
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 887
    :goto_0
    invoke-static {p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasCurrentConditionType(I)Z

    move-result p0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    .line 888
    new-instance p0, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {p0}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 889
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 890
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setIsDayTime(Ljava/lang/Boolean;)V

    .line 891
    invoke-static {v5}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getDayAfter(I)Ljava/util/Calendar;

    move-result-object v6

    .line 892
    invoke-static {v6, v1}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->generateTimeStringFromCalendar(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    div-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 894
    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->setCurrentCondition(Lcom/zte/weather/sdk/model/weather/Weather;)V

    .line 895
    invoke-virtual {v0, v4}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    .line 902
    :cond_0
    invoke-static {p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasHourlyForecastsType(I)Z

    move-result p0

    const/4 v6, 0x4

    if-eqz p0, :cond_2

    .line 903
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_1
    const/16 v8, 0x19

    if-ge v7, v8, :cond_1

    .line 906
    new-instance v8, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v8}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 907
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 908
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/weather/sdk/model/weather/Weather;->setIsDayTime(Ljava/lang/Boolean;)V

    .line 909
    invoke-static {v7}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getHourAfter(I)Ljava/util/Calendar;

    move-result-object v9

    .line 910
    invoke-static {v9, v1}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->generateTimeStringFromCalendar(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    .line 911
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 912
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 915
    :cond_1
    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->setTwentyFourHoursForecasts(Ljava/util/ArrayList;)V

    .line 916
    invoke-virtual {v0, v6}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    .line 919
    :cond_2
    invoke-static {p1}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasDailyForecastsType(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 920
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move p1, v5

    :goto_2
    if-ge p1, v6, :cond_3

    .line 923
    new-instance v4, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v4}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 924
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    add-int/lit8 p1, p1, 0x1

    .line 925
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getDayAfter(I)Ljava/util/Calendar;

    move-result-object v7

    .line 926
    invoke-static {v7, v1}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->generateTimeStringFromCalendar(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 928
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 931
    :cond_3
    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->setFiveDaysForecasts(Ljava/util/ArrayList;)V

    const/4 p0, 0x2

    .line 932
    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->addDataSavedFlag(I)V

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
