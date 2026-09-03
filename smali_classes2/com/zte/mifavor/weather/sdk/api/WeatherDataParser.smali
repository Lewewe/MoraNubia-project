.class Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;
.super Ljava/lang/Object;
.source "WeatherDataParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherDataParser"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWindDirection(Ljava/lang/String;)I
    .locals 1

    .line 147
    const-string v0, "C"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_0
    const-string v0, "EN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 151
    :cond_1
    const-string v0, "E"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 153
    :cond_2
    const-string v0, "ES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 155
    :cond_3
    const-string v0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 157
    :cond_4
    const-string v0, "WS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 159
    :cond_5
    const-string v0, "W"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x6

    return p0

    .line 161
    :cond_6
    const-string v0, "WN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    .line 164
    :cond_7
    const-string v0, "N"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    goto :goto_0

    :cond_8
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static transferAirData(Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;)Lcom/zte/weather/sdk/model/weather/Weather;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 556
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transferAirData airQualityBeans.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataParser"

    invoke-static {v2, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 558
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean;

    if-nez p0, :cond_1

    return-object v0

    .line 562
    :cond_1
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 563
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean;->getP()Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 565
    new-instance v1, Lcom/zte/weather/sdk/model/weather/AirCondition;

    invoke-direct {v1}, Lcom/zte/weather/sdk/model/weather/AirCondition;-><init>()V

    .line 566
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;->getAQI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zte/weather/sdk/model/weather/AirCondition;->setAqi(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/AirQualityResponse$AirQualityBean$PBean;->getAQILEVEL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/zte/weather/sdk/model/weather/AirCondition;->setAqiLevel(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setAirCondition(Lcom/zte/weather/sdk/model/weather/AirCondition;)V

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "transferAirData"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method static transferAlertsStruct(Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;)Lcom/zte/weather/sdk/model/weather/AlertInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 621
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transferAlertsStruct.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataParser"

    invoke-static {v2, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 623
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;

    if-nez p0, :cond_1

    return-object v0

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean;->getW()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 628
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 629
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;

    if-nez p0, :cond_2

    return-object v0

    .line 633
    :cond_2
    new-instance v0, Lcom/zte/weather/sdk/model/weather/AlertInfo;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/AlertInfo;-><init>()V

    .line 634
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;->getAlertid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/weather/AlertInfo;->setAlertid(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/WarningResponse$WarningBean$WBean;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/weather/AlertInfo;->setText(Ljava/lang/String;)V

    .line 636
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "transferAlertsStruct alertInfo="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method static transferCurrentWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transferWeathersStruct originalModel.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse;->getResult()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WeatherDataParser"

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 49
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;->getCurrent()Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 54
    new-instance v4, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v4}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 55
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;->getUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getCalendarFromTimeString_YMD_HM(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 61
    :cond_2
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getWeatherIndex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getWeather()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherDescription(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 65
    new-instance v5, Lcom/zte/weather/sdk/model/weather/Measurement;

    const-string v6, ""

    const/16 v7, 0x11

    invoke-direct {v5, v1, v6, v7}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 69
    :cond_3
    new-instance v1, Lcom/zte/weather/sdk/model/weather/WindInfo;

    invoke-direct {v1}, Lcom/zte/weather/sdk/model/weather/WindInfo;-><init>()V

    .line 70
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getWindpower()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/weather/sdk/model/weather/WindInfo;->setWindpower(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getWindDirectionDegree()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/weather/sdk/model/weather/WindInfo;->setWindDirectionDegree(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getWinddir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/weather/sdk/model/weather/WindInfo;->setWindir(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setWindInfo(Lcom/zte/weather/sdk/model/weather/WindInfo;)V

    .line 74
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailResponse$CurrentDetailResult$CurrentDetail;->getHumidity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 75
    invoke-virtual {v4, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setHumidity(Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "transformCommonWeatherModel weathers.size="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method static transferCurrentWeathersStructAbroad(Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transferWeathersStruct originalModel.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse;->getResult()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WeatherDataParser"

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 99
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;

    if-eqz v1, :cond_1

    .line 102
    new-instance v3, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v3}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 103
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getCalendarFromTimeString_YMD_HMS(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 106
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getWxIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getTemp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    const/16 v5, 0x11

    .line 111
    const-string v6, ""

    if-eqz v4, :cond_3

    .line 112
    new-instance v7, Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-direct {v7, v4, v6, v5}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v3, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 116
    :cond_3
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getTempMax24()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 118
    new-instance v7, Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-direct {v7, v4, v6, v5}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v3, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setMaxTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 122
    :cond_4
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getTempMin24()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 124
    new-instance v7, Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-direct {v7, v4, v6, v5}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v3, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setMinTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 128
    :cond_5
    new-instance v4, Lcom/zte/weather/sdk/model/weather/WindInfo;

    invoke-direct {v4}, Lcom/zte/weather/sdk/model/weather/WindInfo;-><init>()V

    .line 129
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getWSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/WindInfo;->setWindpower(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getWDirText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/mifavor/weather/sdk/api/WeatherDataParser;->getWindDirection(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/WindInfo;->setWindir(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setWindInfo(Lcom/zte/weather/sdk/model/weather/WindInfo;)V

    .line 132
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/CurrentDetailAbroadResponse$ResultBean;->getHumid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-virtual {v3, v1}, Lcom/zte/weather/sdk/model/weather/Weather;->setHumidity(Ljava/lang/Integer;)V

    .line 134
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 138
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "transformCommonWeatherModel weathers.size="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method static transferDailyWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 281
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 282
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean;

    if-nez p0, :cond_1

    return-object v0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean;->getForecast()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 287
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transferDailyWeathersStruct dailyForecasts.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherDataParser"

    invoke-static {v1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 292
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;

    if-eqz v2, :cond_2

    .line 296
    :try_start_0
    new-instance v3, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v3}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 297
    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;->getForecasttime()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 299
    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getCalendarFromTimeString_YMD(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 301
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 304
    :cond_3
    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;->getWeather_index_am()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;->getWeather_am()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherDescription(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;->getWeather_index_pm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIconNight(Ljava/lang/Integer;)V

    .line 307
    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;->getTemperature_am()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x11

    .line 308
    const-string v6, ""

    if-eqz v4, :cond_4

    .line 309
    :try_start_1
    new-instance v7, Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-direct {v7, v4, v6, v5}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 310
    invoke-virtual {v3, v7}, Lcom/zte/weather/sdk/model/weather/Weather;->setMaxTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 313
    :cond_4
    invoke-virtual {v2}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastResponse$DailyForecastBean$ForecastBean;->getTemperature_pm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 315
    new-instance v4, Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-direct {v4, v2, v6, v5}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setMinTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 319
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 326
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "transferDailyWeathersStruct weathers.size="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method static transferDailyWeathersStructAbroad(Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 343
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 344
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean;

    if-nez p0, :cond_1

    return-object v1

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean;->getForecast()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 349
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transferDailyWeathersStruct abroad forecastBeans.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataParser"

    invoke-static {v2, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 354
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 355
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;

    if-eqz v3, :cond_2

    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 362
    :cond_3
    :try_start_0
    new-instance v4, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v4}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 363
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getValidDate()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 365
    invoke-static {v5}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getCalendarFromTimeString_YMD(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 367
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 370
    :cond_4
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getDay()Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 371
    invoke-virtual {v5}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 372
    invoke-virtual {v5}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 375
    :cond_5
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getNight()Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 376
    invoke-virtual {v5}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 377
    invoke-virtual {v5}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$NightBean;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIconNight(Ljava/lang/Integer;)V

    .line 380
    :cond_6
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getMaxTemp()I

    move-result v5

    .line 381
    new-instance v6, Lcom/zte/weather/sdk/model/weather/Measurement;

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v7, 0x11

    invoke-direct {v6, v5, v0, v7}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 382
    invoke-virtual {v4, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setMaxTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 383
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getMinTemp()I

    move-result v5

    .line 384
    new-instance v6, Lcom/zte/weather/sdk/model/weather/Measurement;

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v6, v5, v0, v7}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 385
    invoke-virtual {v4, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setMinTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 386
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getRise()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->generateHourAndMinuteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunRise(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;->getSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->generateHourAndMinuteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v4, v3}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunSet(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 392
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 397
    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "transferDailyWeathersStruct weathers.size="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method

.method static transferHourlyWeathersStruct(Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    const-string v0, ""

    const-string v1, "\u2103"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 174
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean;

    if-nez p0, :cond_1

    return-object v2

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean;->getJh()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v2

    .line 182
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "transferHourlyWeathersStruct originalModel.size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WeatherDataParser"

    invoke-static {v4, v3}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 186
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;

    if-eqz v3, :cond_3

    .line 190
    :try_start_0
    new-instance v5, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v5}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 191
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;->getJf()Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-virtual {v5, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 193
    invoke-static {v6}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getCalendarFromTimeString_YMDHM(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 195
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 198
    :cond_4
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;->getJa()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 199
    invoke-virtual {v3}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastResponse$HourForecastBean$JhBean;->getJb()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 201
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 204
    new-instance v6, Lcom/zte/weather/sdk/model/weather/Measurement;

    const/16 v7, 0x11

    invoke-direct {v6, v3, v0, v7}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v5, v6}, Lcom/zte/weather/sdk/model/weather/Weather;->setTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 209
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 216
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "transferHourlyWeathersStruct weathers.size="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v2
.end method

.method static transferHourlyWeathersStructAbroad(Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 231
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 232
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse$ResultBean;

    if-nez p0, :cond_1

    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse$ResultBean;->getValue()Ljava/util/List;

    move-result-object p0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transferHourlyWeathersStruct abroad originalModel.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataParser"

    invoke-static {v2, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 241
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse$ResultBean$ValueBean;

    if-eqz v1, :cond_2

    .line 245
    :try_start_0
    new-instance v3, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v3}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 246
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse$ResultBean$ValueBean;->getDateTime_db()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setLocalDate(Ljava/lang/String;)V

    .line 248
    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/helpers/TimeTools;->getCalendarFromTimeString_YMD_HMS(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 250
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setEpochDate(Ljava/lang/Long;)V

    .line 253
    :cond_3
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse$ResultBean$ValueBean;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/mifavor/weather/sdk/api/WeatherConverter;->getWeatherType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setWeatherTypeIcon(Ljava/lang/Integer;)V

    .line 254
    invoke-virtual {v1}, Lcom/zte/mifavor/weather/sdk/api/common/HourForecastAbroadResponse$ResultBean$ValueBean;->getTemp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/weather/sdk/helpers/CommonUtils;->stringToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 256
    new-instance v4, Lcom/zte/weather/sdk/model/weather/Measurement;

    const-string v5, ""

    const/16 v6, 0x11

    invoke-direct {v4, v1, v5, v6}, Lcom/zte/weather/sdk/model/weather/Measurement;-><init>(Ljava/lang/Double;Ljava/lang/String;I)V

    .line 257
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V

    .line 260
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 267
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "transferHourlyWeathersStruct abroad weathers.size="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method static transferIndexData(Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;)Lcom/zte/weather/sdk/model/weather/Weather;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 414
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 415
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean;

    if-nez p0, :cond_1

    return-object v0

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean;->getIndex()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 420
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "transferIndexData indexBeans.size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WeatherDataParser"

    invoke-static {v2, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v3, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v3}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 423
    new-instance v4, Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    invoke-direct {v4}, Lcom/zte/weather/sdk/model/weather/IndexInfoList;-><init>()V

    .line 424
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 429
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 430
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfos(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "transferIndexData indexInfos.size="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zte/weather/sdk/model/weather/IndexInfoList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 435
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;

    if-eqz v0, :cond_2

    .line 439
    :try_start_0
    new-instance v5, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;

    invoke-direct {v5}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;-><init>()V

    .line 440
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->getIndex_level()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setLevel(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/api/common/Index9TypeResponse$IndexTypeBean$IndexBean;->getIndex_type()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setTypeString(Ljava/lang/String;)V

    .line 443
    const-string v6, "co"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x5

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 445
    :cond_4
    const-string v6, "ct"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 447
    :cond_5
    const-string v6, "dy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x7

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 449
    :cond_6
    const-string v6, "tr"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x6

    .line 450
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 451
    :cond_7
    const-string v6, "gm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v0, 0x4

    .line 452
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 453
    :cond_8
    const-string v6, "uv"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v0, 0x3

    .line 454
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 455
    :cond_9
    const-string v6, "xc"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v0, 0x1

    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 458
    :cond_a
    const-string v6, "yd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no such index type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x2

    .line 463
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    .line 466
    :goto_1
    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/IndexInfoList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 468
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    return-object v0
.end method

.method static transferIndexDataAbraod(Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;)Lcom/zte/weather/sdk/model/weather/Weather;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 486
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 487
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;

    if-nez p0, :cond_1

    return-object v0

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean;->getI()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 492
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transferIndexDataAbraod indexBeans.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherDataParser"

    invoke-static {v1, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v2, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v2}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 495
    new-instance v3, Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    invoke-direct {v3}, Lcom/zte/weather/sdk/model/weather/IndexInfoList;-><init>()V

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 501
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    invoke-virtual {v2, v3}, Lcom/zte/weather/sdk/model/weather/Weather;->setIndexInfos(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "transferIndexData indexInfos.size="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zte/weather/sdk/model/weather/IndexInfoList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 507
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;

    if-eqz v0, :cond_2

    .line 511
    :try_start_0
    new-instance v4, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;

    invoke-direct {v4}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;-><init>()V

    .line 512
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;->getIndex_level()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setLevel(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/api/common/Index7TypeAbroadResponse$ResultBean$IBean;->getIndex_type()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setTypeString(Ljava/lang/String;)V

    .line 515
    const-string v5, "dy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x7

    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 517
    :cond_4
    const-string v5, "gm"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x4

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 519
    :cond_5
    const-string v5, "uv"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x3

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 521
    :cond_6
    const-string v5, "xc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v0, 0x1

    .line 522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 523
    :cond_7
    const-string v5, "pb"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v0, 0xa

    .line 524
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 525
    :cond_8
    const-string v5, "cl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v0, 0x9

    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    goto :goto_1

    .line 528
    :cond_9
    const-string v5, "qc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such index type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x8

    .line 533
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zte/weather/sdk/model/weather/IndexInfoList$IndexInfo;->setType(Ljava/lang/Integer;)V

    .line 536
    :goto_1
    invoke-virtual {v3, v4}, Lcom/zte/weather/sdk/model/weather/IndexInfoList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 538
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    return-object v0
.end method

.method static transferSunriseAndSunset(Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;)Lcom/zte/weather/sdk/model/weather/Weather;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;->getResult()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 585
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transferSunriseAndSunset.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataParser"

    invoke-static {v2, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 587
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse$SunRiseSetBean;

    if-nez p0, :cond_1

    return-object v0

    .line 591
    :cond_1
    new-instance v3, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-direct {v3}, Lcom/zte/weather/sdk/model/weather/Weather;-><init>()V

    .line 592
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse$SunRiseSetBean;->getSunrise_sunset()Ljava/lang/String;

    move-result-object p0

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "transferSunriseAndSunset:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    .line 597
    :cond_2
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "transferSunriseAndSunset split= "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p0, :cond_4

    .line 602
    array-length v0, p0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    aget-object v0, p0, v1

    invoke-virtual {v3, v0}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunRise(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 604
    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Lcom/zte/weather/sdk/model/weather/Weather;->setSunSet(Ljava/lang/String;)V

    :cond_4
    return-object v3

    :cond_5
    return-object v0
.end method
