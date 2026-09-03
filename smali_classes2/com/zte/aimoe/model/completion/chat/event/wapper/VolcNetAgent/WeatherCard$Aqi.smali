.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;
.super Ljava/lang/Object;
.source "WeatherCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aqi"
.end annotation


# instance fields
.field public aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aqi"
    .end annotation
.end field

.field public cityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city_name"
    .end annotation
.end field

.field public co:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "co"
    .end annotation
.end field

.field public coAqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "co_aqi"
    .end annotation
.end field

.field public coc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coc"
    .end annotation
.end field

.field public no2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "no2"
    .end annotation
.end field

.field public no2Aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "no2_aqi"
    .end annotation
.end field

.field public o3:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o3"
    .end annotation
.end field

.field public o3Aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o3_aqi"
    .end annotation
.end field

.field public o3c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "o3c"
    .end annotation
.end field

.field public pm10:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm10"
    .end annotation
.end field

.field public pm10Aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm10_aqi"
    .end annotation
.end field

.field public pm10c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm10c"
    .end annotation
.end field

.field public pm25:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm25"
    .end annotation
.end field

.field public pm25Aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm25_aqi"
    .end annotation
.end field

.field public pm25c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm25c"
    .end annotation
.end field

.field public primaryPollutant:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary_pollutant"
    .end annotation
.end field

.field public pubTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pub_time"
    .end annotation
.end field

.field public pubtime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pubtime"
    .end annotation
.end field

.field public qualityLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality_level"
    .end annotation
.end field

.field public rank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank"
    .end annotation
.end field

.field public so2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "so2"
    .end annotation
.end field

.field public so2Aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "so2_aqi"
    .end annotation
.end field

.field public so2c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "so2c"
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 35
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getAqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getAqi()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoAqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoAqi()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2Aqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2Aqi()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3Aqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3Aqi()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10Aqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10Aqi()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25Aqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25Aqi()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2Aqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2Aqi()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCityName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_0

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_0
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCo()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_1

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_1
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoc()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_2

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_2
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_3

    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_3
    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_4

    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_4
    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3c()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_5

    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :goto_5
    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_6

    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_6
    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10c()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_18

    if-eqz v3, :cond_19

    goto :goto_7

    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_7
    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1a

    if-eqz v3, :cond_1b

    goto :goto_8

    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_8
    return v2

    :cond_1b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25c()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1c

    if-eqz v3, :cond_1d

    goto :goto_9

    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_9
    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPrimaryPollutant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPrimaryPollutant()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1e

    if-eqz v3, :cond_1f

    goto :goto_a

    :cond_1e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    :goto_a
    return v2

    :cond_1f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_20

    if-eqz v3, :cond_21

    goto :goto_b

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    :goto_b
    return v2

    :cond_21
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_22

    if-eqz v3, :cond_23

    goto :goto_c

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_c
    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getQualityLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getQualityLevel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_24

    if-eqz v3, :cond_25

    goto :goto_d

    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :goto_d
    return v2

    :cond_25
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getRank()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_26

    if-eqz v3, :cond_27

    goto :goto_e

    :cond_26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :goto_e
    return v2

    :cond_27
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_28

    if-eqz v3, :cond_29

    goto :goto_f

    :cond_28
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_f
    return v2

    :cond_29
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2c()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2a

    if-eqz v3, :cond_2b

    goto :goto_10

    :cond_2a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    :goto_10
    return v2

    :cond_2b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_2c

    if-eqz p1, :cond_2d

    goto :goto_11

    :cond_2c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    :goto_11
    return v2

    :cond_2d
    return v0
.end method

.method public getAqi()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->aqi:I

    return p0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->cityName:Ljava/lang/String;

    return-object p0
.end method

.method public getCo()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->co:Ljava/lang/String;

    return-object p0
.end method

.method public getCoAqi()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->coAqi:I

    return p0
.end method

.method public getCoc()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->coc:Ljava/lang/String;

    return-object p0
.end method

.method public getNo2()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->no2:Ljava/lang/String;

    return-object p0
.end method

.method public getNo2Aqi()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->no2Aqi:I

    return p0
.end method

.method public getO3()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->o3:Ljava/lang/String;

    return-object p0
.end method

.method public getO3Aqi()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->o3Aqi:I

    return p0
.end method

.method public getO3c()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->o3c:Ljava/lang/String;

    return-object p0
.end method

.method public getPm10()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm10:Ljava/lang/String;

    return-object p0
.end method

.method public getPm10Aqi()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm10Aqi:I

    return p0
.end method

.method public getPm10c()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm10c:Ljava/lang/String;

    return-object p0
.end method

.method public getPm25()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm25:Ljava/lang/String;

    return-object p0
.end method

.method public getPm25Aqi()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm25Aqi:I

    return p0
.end method

.method public getPm25c()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm25c:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryPollutant()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->primaryPollutant:Ljava/lang/String;

    return-object p0
.end method

.method public getPubTime()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pubTime:Ljava/lang/String;

    return-object p0
.end method

.method public getQualityLevel()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->qualityLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getRank()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->rank:Ljava/lang/String;

    return-object p0
.end method

.method public getSo2()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->so2:Ljava/lang/String;

    return-object p0
.end method

.method public getSo2Aqi()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->so2Aqi:I

    return p0
.end method

.method public getSo2c()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->so2c:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 35
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getAqi()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoAqi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2Aqi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3Aqi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10Aqi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25Aqi()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2Aqi()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCityName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCo()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoc()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3c()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10c()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25c()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPrimaryPollutant()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getQualityLevel()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getRank()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2c()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getValue()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v0, v3

    return v0
.end method

.method public setAqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->aqi:I

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCo(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->co:Ljava/lang/String;

    return-void
.end method

.method public setCoAqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->coAqi:I

    return-void
.end method

.method public setCoc(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->coc:Ljava/lang/String;

    return-void
.end method

.method public setNo2(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->no2:Ljava/lang/String;

    return-void
.end method

.method public setNo2Aqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->no2Aqi:I

    return-void
.end method

.method public setO3(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->o3:Ljava/lang/String;

    return-void
.end method

.method public setO3Aqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->o3Aqi:I

    return-void
.end method

.method public setO3c(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->o3c:Ljava/lang/String;

    return-void
.end method

.method public setPm10(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm10:Ljava/lang/String;

    return-void
.end method

.method public setPm10Aqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm10Aqi:I

    return-void
.end method

.method public setPm10c(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm10c:Ljava/lang/String;

    return-void
.end method

.method public setPm25(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm25:Ljava/lang/String;

    return-void
.end method

.method public setPm25Aqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm25Aqi:I

    return-void
.end method

.method public setPm25c(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pm25c:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryPollutant(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->primaryPollutant:Ljava/lang/String;

    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->pubTime:Ljava/lang/String;

    return-void
.end method

.method public setQualityLevel(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->qualityLevel:Ljava/lang/String;

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->rank:Ljava/lang/String;

    return-void
.end method

.method public setSo2(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->so2:Ljava/lang/String;

    return-void
.end method

.method public setSo2Aqi(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->so2Aqi:I

    return-void
.end method

.method public setSo2c(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->so2c:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherCard.Aqi(aqi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getAqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", co="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coAqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getCoAqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", no2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", no2Aqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getNo2Aqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", o3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", o3c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", o3Aqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getO3Aqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pm10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pm10c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pm10Aqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm10Aqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pm25="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pm25c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pm25Aqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPm25Aqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryPollutant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPrimaryPollutant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getQualityLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so2c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so2Aqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getSo2Aqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
