.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;
.super Ljava/lang/Object;
.source "WeatherCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SevenForecast"
.end annotation


# instance fields
.field public getTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "get_time"
    .end annotation
.end field

.field public humidity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "humidity"
    .end annotation
.end field

.field public iconDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_day"
    .end annotation
.end field

.field public iconNight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_night"
    .end annotation
.end field

.field public moonDown:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moon_down"
    .end annotation
.end field

.field public moonPhase:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moon_phase"
    .end annotation
.end field

.field public moonRise:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moon_rise"
    .end annotation
.end field

.field public mslp:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mslp"
    .end annotation
.end field

.field public pop:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pop"
    .end annotation
.end field

.field public predictDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "predict_date"
    .end annotation
.end field

.field public qpf:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qpf"
    .end annotation
.end field

.field public sunDown:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sun_down"
    .end annotation
.end field

.field public sunRise:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sun_rise"
    .end annotation
.end field

.field public tempHigh:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp_high"
    .end annotation
.end field

.field public tempLow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp_low"
    .end annotation
.end field

.field public updateTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_time"
    .end annotation
.end field

.field public uvi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uvi"
    .end annotation
.end field

.field public weatherDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_day"
    .end annotation
.end field

.field public weatherIdDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_id_day"
    .end annotation
.end field

.field public weatherIdNight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_id_night"
    .end annotation
.end field

.field public weatherNight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_night"
    .end annotation
.end field

.field public windDegreesDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_degrees_day"
    .end annotation
.end field

.field public windDegreesNight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_degrees_night"
    .end annotation
.end field

.field public windDirDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_dir_day"
    .end annotation
.end field

.field public windDirIdDay:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_dir_id_day"
    .end annotation
.end field

.field public windDirIdNight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_dir_id_night"
    .end annotation
.end field

.field public windDirNight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_dir_night"
    .end annotation
.end field

.field public windLevelDay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_level_day"
    .end annotation
.end field

.field public windLevelNight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_level_night"
    .end annotation
.end field

.field public wspdDay:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wspd_day"
    .end annotation
.end field

.field public wspdNight:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wspd_night"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 109
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getHumidity()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getHumidity()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconDay()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconNight()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconNight()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMslp()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMslp()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPop()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPop()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getQpf()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getQpf()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempHigh()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempHigh()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempLow()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempLow()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUvi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUvi()I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdDay()I

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdNight()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdNight()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesDay()I

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesNight()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesNight()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdDay()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdNight()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdNight()I

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdDay()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdDay()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdNight()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdNight()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getGetTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getGetTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_0

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_0
    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonDown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonDown()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_1

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_1
    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonPhase()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_18

    if-eqz v3, :cond_19

    goto :goto_2

    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_2
    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonRise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonRise()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1a

    if-eqz v3, :cond_1b

    goto :goto_3

    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_3
    return v2

    :cond_1b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPredictDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPredictDate()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1c

    if-eqz v3, :cond_1d

    goto :goto_4

    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_4
    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunDown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunDown()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1e

    if-eqz v3, :cond_1f

    goto :goto_5

    :cond_1e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    :goto_5
    return v2

    :cond_1f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunRise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunRise()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_20

    if-eqz v3, :cond_21

    goto :goto_6

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    :goto_6
    return v2

    :cond_21
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUpdateTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_22

    if-eqz v3, :cond_23

    goto :goto_7

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_7
    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherDay()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_24

    if-eqz v3, :cond_25

    goto :goto_8

    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :goto_8
    return v2

    :cond_25
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherNight()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_26

    if-eqz v3, :cond_27

    goto :goto_9

    :cond_26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :goto_9
    return v2

    :cond_27
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirDay()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_28

    if-eqz v3, :cond_29

    goto :goto_a

    :cond_28
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_a
    return v2

    :cond_29
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirNight()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2a

    if-eqz v3, :cond_2b

    goto :goto_b

    :cond_2a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    :goto_b
    return v2

    :cond_2b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelDay()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2c

    if-eqz v3, :cond_2d

    goto :goto_c

    :cond_2c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    :goto_c
    return v2

    :cond_2d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelNight()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelNight()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_2e

    if-eqz p1, :cond_2f

    goto :goto_d

    :cond_2e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    :goto_d
    return v2

    :cond_2f
    return v0
.end method

.method public getGetTime()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTime:Ljava/lang/String;

    return-object p0
.end method

.method public getHumidity()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->humidity:I

    return p0
.end method

.method public getIconDay()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->iconDay:I

    return p0
.end method

.method public getIconNight()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->iconNight:I

    return p0
.end method

.method public getMoonDown()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->moonDown:Ljava/lang/String;

    return-object p0
.end method

.method public getMoonPhase()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->moonPhase:Ljava/lang/String;

    return-object p0
.end method

.method public getMoonRise()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->moonRise:Ljava/lang/String;

    return-object p0
.end method

.method public getMslp()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->mslp:I

    return p0
.end method

.method public getPop()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->pop:I

    return p0
.end method

.method public getPredictDate()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->predictDate:Ljava/lang/String;

    return-object p0
.end method

.method public getQpf()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->qpf:I

    return p0
.end method

.method public getSunDown()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->sunDown:Ljava/lang/String;

    return-object p0
.end method

.method public getSunRise()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->sunRise:Ljava/lang/String;

    return-object p0
.end method

.method public getTempHigh()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->tempHigh:I

    return p0
.end method

.method public getTempLow()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->tempLow:I

    return p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getUvi()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->uvi:I

    return p0
.end method

.method public getWeatherDay()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherDay:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherIdDay()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherIdDay:I

    return p0
.end method

.method public getWeatherIdNight()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherIdNight:I

    return p0
.end method

.method public getWeatherNight()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherNight:Ljava/lang/String;

    return-object p0
.end method

.method public getWindDegreesDay()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDegreesDay:I

    return p0
.end method

.method public getWindDegreesNight()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDegreesNight:I

    return p0
.end method

.method public getWindDirDay()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirDay:Ljava/lang/String;

    return-object p0
.end method

.method public getWindDirIdDay()I
    .locals 0

    .line 135
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirIdDay:I

    return p0
.end method

.method public getWindDirIdNight()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirIdNight:I

    return p0
.end method

.method public getWindDirNight()Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirNight:Ljava/lang/String;

    return-object p0
.end method

.method public getWindLevelDay()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windLevelDay:Ljava/lang/String;

    return-object p0
.end method

.method public getWindLevelNight()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windLevelNight:Ljava/lang/String;

    return-object p0
.end method

.method public getWspdDay()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->wspdDay:D

    return-wide v0
.end method

.method public getWspdNight()D
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->wspdNight:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 109
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getHumidity()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconDay()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconNight()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMslp()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPop()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getQpf()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempHigh()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempLow()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUvi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdDay()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdNight()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesDay()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesNight()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdDay()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdNight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdDay()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdNight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getGetTime()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonDown()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonPhase()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonRise()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPredictDate()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunDown()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunRise()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherDay()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherNight()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirDay()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirNight()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelDay()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_c

    move v2, v3

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelNight()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    return v0
.end method

.method public setGetTime(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTime:Ljava/lang/String;

    return-void
.end method

.method public setHumidity(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->humidity:I

    return-void
.end method

.method public setIconDay(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->iconDay:I

    return-void
.end method

.method public setIconNight(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->iconNight:I

    return-void
.end method

.method public setMoonDown(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->moonDown:Ljava/lang/String;

    return-void
.end method

.method public setMoonPhase(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->moonPhase:Ljava/lang/String;

    return-void
.end method

.method public setMoonRise(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->moonRise:Ljava/lang/String;

    return-void
.end method

.method public setMslp(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->mslp:I

    return-void
.end method

.method public setPop(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->pop:I

    return-void
.end method

.method public setPredictDate(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->predictDate:Ljava/lang/String;

    return-void
.end method

.method public setQpf(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->qpf:I

    return-void
.end method

.method public setSunDown(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->sunDown:Ljava/lang/String;

    return-void
.end method

.method public setSunRise(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->sunRise:Ljava/lang/String;

    return-void
.end method

.method public setTempHigh(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->tempHigh:I

    return-void
.end method

.method public setTempLow(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->tempLow:I

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setUvi(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->uvi:I

    return-void
.end method

.method public setWeatherDay(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherDay:Ljava/lang/String;

    return-void
.end method

.method public setWeatherIdDay(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherIdDay:I

    return-void
.end method

.method public setWeatherIdNight(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherIdNight:I

    return-void
.end method

.method public setWeatherNight(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->weatherNight:Ljava/lang/String;

    return-void
.end method

.method public setWindDegreesDay(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDegreesDay:I

    return-void
.end method

.method public setWindDegreesNight(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDegreesNight:I

    return-void
.end method

.method public setWindDirDay(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirDay:Ljava/lang/String;

    return-void
.end method

.method public setWindDirIdDay(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirIdDay:I

    return-void
.end method

.method public setWindDirIdNight(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirIdNight:I

    return-void
.end method

.method public setWindDirNight(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windDirNight:Ljava/lang/String;

    return-void
.end method

.method public setWindLevelDay(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windLevelDay:Ljava/lang/String;

    return-void
.end method

.method public setWindLevelNight(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->windLevelNight:Ljava/lang/String;

    return-void
.end method

.method public setWspdDay(D)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->wspdDay:D

    return-void
.end method

.method public setWspdNight(D)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->wspdNight:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherCard.SevenForecast(getTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getGetTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", humidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getHumidity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getIconNight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moonDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonDown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moonPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moonRise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMoonRise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mslp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getMslp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", predictDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getPredictDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getQpf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunDown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunRise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getSunRise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tempHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempHigh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tempLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getTempLow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uvi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getUvi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherIdDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherIdNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherIdNight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWeatherNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDegreesDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDegreesNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDegreesNight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDirDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDirIdDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDirIdNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirIdNight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDirNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindDirNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windLevelDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windLevelNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWindLevelNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wspdDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdDay()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wspdNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;->getWspdNight()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
