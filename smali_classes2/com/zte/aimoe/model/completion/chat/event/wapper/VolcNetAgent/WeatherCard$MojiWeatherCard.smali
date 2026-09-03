.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;
.super Ljava/lang/Object;
.source "WeatherCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MojiWeatherCard"
.end annotation


# instance fields
.field public aqi:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aqi"
    .end annotation
.end field

.field public aqiForecast:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aqi_forecast"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;",
            ">;"
        }
    .end annotation
.end field

.field public city:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field public condition:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "condition"
    .end annotation
.end field

.field public sevenForecastData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seven_forecast_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqi()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqi()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqiForecast()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqiForecast()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCondition()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCondition()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getSevenForecastData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getSevenForecastData()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCity()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCity()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;

    move-result-object p1

    if-nez p0, :cond_b

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_4
    return v2

    :cond_c
    return v0
.end method

.method public getAqi()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->aqi:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    return-object p0
.end method

.method public getAqiForecast()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->aqiForecast:Ljava/util/List;

    return-object p0
.end method

.method public getCity()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->city:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;

    return-object p0
.end method

.method public getCondition()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->condition:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    return-object p0
.end method

.method public getSevenForecastData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->sevenForecastData:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqi()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqiForecast()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCondition()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getSevenForecastData()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCity()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;

    move-result-object p0

    mul-int/2addr v0, v2

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setAqi(Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->aqi:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    return-void
.end method

.method public setAqiForecast(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->aqiForecast:Ljava/util/List;

    return-void
.end method

.method public setCity(Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->city:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;

    return-void
.end method

.method public setCondition(Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->condition:Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    return-void
.end method

.method public setSevenForecastData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$SevenForecast;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->sevenForecastData:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherCard.MojiWeatherCard(aqi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqi()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Aqi;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aqiForecast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getAqiForecast()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCondition()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$Condition;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sevenForecastData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getSevenForecastData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$MojiWeatherCard;->getCity()Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$City;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
