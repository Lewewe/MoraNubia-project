.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;
.super Ljava/lang/Object;
.source "WeatherCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# instance fields
.field public comfort:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comfort"
    .end annotation
.end field

.field public condition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "condition"
    .end annotation
.end field

.field public conditionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "condition_id"
    .end annotation
.end field

.field public dewpoint:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dewpoint"
    .end annotation
.end field

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

.field public icon:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public mslp:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mslp"
    .end annotation
.end field

.field public obsTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "obs_time"
    .end annotation
.end field

.field public precip1h:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "precip1h"
    .end annotation
.end field

.field public pressure:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pressure"
    .end annotation
.end field

.field public realFeel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "real_feel"
    .end annotation
.end field

.field public realFeelNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "real_feel_num"
    .end annotation
.end field

.field public sundown:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sundown"
    .end annotation
.end field

.field public sunrise:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sunrise"
    .end annotation
.end field

.field public sunset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sunset"
    .end annotation
.end field

.field public temp:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "temp"
    .end annotation
.end field

.field public tips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tips"
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

.field public vis:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vis"
    .end annotation
.end field

.field public weather:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather"
    .end annotation
.end field

.field public weatherId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weather_id"
    .end annotation
.end field

.field public windDegrees:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_degrees"
    .end annotation
.end field

.field public windDir:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_dir"
    .end annotation
.end field

.field public windDirId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_dir_id"
    .end annotation
.end field

.field public windLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_level"
    .end annotation
.end field

.field public windSpeed:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wind_speed"
    .end annotation
.end field

.field public wspd:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wspd"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getComfort()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getComfort()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getDewpoint()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getDewpoint()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getHumidity()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getHumidity()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getIcon()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getIcon()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getMslp()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getMslp()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPrecip1h()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPrecip1h()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeelNum()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeelNum()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTemp()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTemp()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUvi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUvi()I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getVis()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getVis()I

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeatherId()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeatherId()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDirId()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDirId()I

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWspd()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWspd()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getCondition()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_0

    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_0
    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getConditionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getConditionId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_1

    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_1
    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getGetTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getGetTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_2

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_2
    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getObsTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getObsTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_3

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_3
    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPressure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPressure()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_18

    if-eqz v3, :cond_19

    goto :goto_4

    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_4
    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1a

    if-eqz v3, :cond_1b

    goto :goto_5

    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_5
    return v2

    :cond_1b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunrise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunrise()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1c

    if-eqz v3, :cond_1d

    goto :goto_6

    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_6
    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunset()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1e

    if-eqz v3, :cond_1f

    goto :goto_7

    :cond_1e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    :goto_7
    return v2

    :cond_1f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSundown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSundown()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_20

    if-eqz v3, :cond_21

    goto :goto_8

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    :goto_8
    return v2

    :cond_21
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTips()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_22

    if-eqz v3, :cond_23

    goto :goto_9

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_9
    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUpdateTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_24

    if-eqz v3, :cond_25

    goto :goto_a

    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :goto_a
    return v2

    :cond_25
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeather()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeather()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_26

    if-eqz v3, :cond_27

    goto :goto_b

    :cond_26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :goto_b
    return v2

    :cond_27
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDegrees()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDegrees()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_28

    if-eqz v3, :cond_29

    goto :goto_c

    :cond_28
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_c
    return v2

    :cond_29
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDir()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2a

    if-eqz v3, :cond_2b

    goto :goto_d

    :cond_2a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    :goto_d
    return v2

    :cond_2b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindLevel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2c

    if-eqz v3, :cond_2d

    goto :goto_e

    :cond_2c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    :goto_e
    return v2

    :cond_2d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindSpeed()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindSpeed()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_2e

    if-eqz p1, :cond_2f

    goto :goto_f

    :cond_2e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    :goto_f
    return v2

    :cond_2f
    return v0
.end method

.method public getComfort()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->comfort:I

    return p0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->condition:Ljava/lang/String;

    return-object p0
.end method

.method public getConditionId()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->conditionId:Ljava/lang/String;

    return-object p0
.end method

.method public getDewpoint()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->dewpoint:I

    return p0
.end method

.method public getGetTime()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTime:Ljava/lang/String;

    return-object p0
.end method

.method public getHumidity()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->humidity:I

    return p0
.end method

.method public getIcon()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->icon:I

    return p0
.end method

.method public getMslp()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->mslp:I

    return p0
.end method

.method public getObsTime()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->obsTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPrecip1h()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->precip1h:I

    return p0
.end method

.method public getPressure()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->pressure:Ljava/lang/String;

    return-object p0
.end method

.method public getRealFeel()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->realFeel:Ljava/lang/String;

    return-object p0
.end method

.method public getRealFeelNum()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->realFeelNum:I

    return p0
.end method

.method public getSundown()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->sundown:Ljava/lang/String;

    return-object p0
.end method

.method public getSunrise()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->sunrise:Ljava/lang/String;

    return-object p0
.end method

.method public getSunset()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->sunset:Ljava/lang/String;

    return-object p0
.end method

.method public getTemp()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->temp:I

    return p0
.end method

.method public getTips()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->tips:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getUvi()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->uvi:I

    return p0
.end method

.method public getVis()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->vis:I

    return p0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->weather:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherId()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->weatherId:I

    return p0
.end method

.method public getWindDegrees()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windDegrees:Ljava/lang/String;

    return-object p0
.end method

.method public getWindDir()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windDir:Ljava/lang/String;

    return-object p0
.end method

.method public getWindDirId()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windDirId:I

    return p0
.end method

.method public getWindLevel()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getWindSpeed()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windSpeed:Ljava/lang/String;

    return-object p0
.end method

.method public getWspd()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->wspd:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 76
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getComfort()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getDewpoint()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getHumidity()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getIcon()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getMslp()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPrecip1h()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeelNum()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTemp()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUvi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getVis()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeatherId()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDirId()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWspd()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getCondition()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getConditionId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getGetTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getObsTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPressure()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeel()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunrise()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunset()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSundown()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTips()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUpdateTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeather()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDegrees()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDir()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindLevel()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindSpeed()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    return v0
.end method

.method public setComfort(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->comfort:I

    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->condition:Ljava/lang/String;

    return-void
.end method

.method public setConditionId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->conditionId:Ljava/lang/String;

    return-void
.end method

.method public setDewpoint(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->dewpoint:I

    return-void
.end method

.method public setGetTime(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTime:Ljava/lang/String;

    return-void
.end method

.method public setHumidity(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->humidity:I

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->icon:I

    return-void
.end method

.method public setMslp(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->mslp:I

    return-void
.end method

.method public setObsTime(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->obsTime:Ljava/lang/String;

    return-void
.end method

.method public setPrecip1h(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->precip1h:I

    return-void
.end method

.method public setPressure(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->pressure:Ljava/lang/String;

    return-void
.end method

.method public setRealFeel(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->realFeel:Ljava/lang/String;

    return-void
.end method

.method public setRealFeelNum(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->realFeelNum:I

    return-void
.end method

.method public setSundown(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->sundown:Ljava/lang/String;

    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->sunrise:Ljava/lang/String;

    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->sunset:Ljava/lang/String;

    return-void
.end method

.method public setTemp(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->temp:I

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->tips:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setUvi(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->uvi:I

    return-void
.end method

.method public setVis(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->vis:I

    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->weather:Ljava/lang/String;

    return-void
.end method

.method public setWeatherId(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->weatherId:I

    return-void
.end method

.method public setWindDegrees(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windDegrees:Ljava/lang/String;

    return-void
.end method

.method public setWindDir(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windDir:Ljava/lang/String;

    return-void
.end method

.method public setWindDirId(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windDirId:I

    return-void
.end method

.method public setWindLevel(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windLevel:Ljava/lang/String;

    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->windSpeed:Ljava/lang/String;

    return-void
.end method

.method public setWspd(D)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->wspd:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherCard.Condition(comfort="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getComfort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getConditionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dewpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getDewpoint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getGetTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", humidity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getHumidity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mslp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getMslp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getObsTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", precip1h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPrecip1h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getPressure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realFeel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realFeelNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getRealFeelNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunrise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunrise()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSunset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sundown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getSundown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTemp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uvi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getUvi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getVis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeather()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWeatherId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDegrees()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windDirId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWindDirId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wspd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;->getWspd()D

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
