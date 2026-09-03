.class public Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;
.super Ljava/lang/Object;
.source "WeatherCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AqiForecast"
.end annotation


# instance fields
.field public aqi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aqi"
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field public forecastTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forecast_time"
    .end annotation
.end field

.field public predictTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "predict_time"
    .end annotation
.end field

.field public pubTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pub_time"
    .end annotation
.end field

.field public publishTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publish_time"
    .end annotation
.end field

.field public qualityLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality_level"
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 64
    instance-of p0, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;

    invoke-virtual {p1, p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getAqi()I

    move-result v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getAqi()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getDate()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getForecastTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getForecastTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPredictTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPredictTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPubTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPublishTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPublishTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_4
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getQualityLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getQualityLevel()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_5
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_10

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    :goto_6
    return v2

    :cond_11
    return v0
.end method

.method public getAqi()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->aqi:I

    return p0
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getForecastTime()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->forecastTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPredictTime()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->predictTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPubTime()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->pubTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->publishTime:Ljava/lang/String;

    return-object p0
.end method

.method public getQualityLevel()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->qualityLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getAqi()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getDate()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getForecastTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPredictTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPubTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPublishTime()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getQualityLevel()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getValue()Ljava/lang/String;

    move-result-object p0

    mul-int/2addr v0, v1

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public setAqi(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->aqi:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->date:Ljava/lang/String;

    return-void
.end method

.method public setForecastTime(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->forecastTime:Ljava/lang/String;

    return-void
.end method

.method public setPredictTime(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->predictTime:Ljava/lang/String;

    return-void
.end method

.method public setPubTime(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->pubTime:Ljava/lang/String;

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setQualityLevel(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->qualityLevel:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherCard.AqiForecast(aqi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getAqi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forecastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getForecastTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", predictTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPredictTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPubTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getPublishTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getQualityLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/aimoe/model/completion/chat/event/wapper/VolcNetAgent/WeatherCard$AqiForecast;->getValue()Ljava/lang/String;

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
