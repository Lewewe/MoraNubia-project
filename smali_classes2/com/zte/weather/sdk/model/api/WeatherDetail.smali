.class public Lcom/zte/weather/sdk/model/api/WeatherDetail;
.super Ljava/lang/Object;
.source "WeatherDetail.java"


# instance fields
.field private aqiLevel:Ljava/lang/String;

.field private aqiValue:Ljava/lang/String;

.field private currentTemp:Ljava/lang/Float;

.field private maxTemp:Ljava/lang/Float;

.field private minTemp:Ljava/lang/Float;

.field private timeMills:Ljava/lang/Long;

.field private updateTime:Ljava/lang/String;

.field private weatherDescription:Ljava/lang/String;

.field private weatherDescriptionNight:Ljava/lang/String;

.field private weatherType:I

.field private weatherTypeNight:I

.field private windDirection:Ljava/lang/String;

.field private windPower:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 6
    iput v0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherType:I

    .line 8
    iput v0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherTypeNight:I

    return-void
.end method


# virtual methods
.method public getAqiLevel()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->aqiLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getAqiValue()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->aqiValue:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTemp()Ljava/lang/Float;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->currentTemp:Ljava/lang/Float;

    return-object p0
.end method

.method public getMaxTemp()Ljava/lang/Float;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->maxTemp:Ljava/lang/Float;

    return-object p0
.end method

.method public getMinTemp()Ljava/lang/Float;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->minTemp:Ljava/lang/Float;

    return-object p0
.end method

.method public getTimeMills()Ljava/lang/Long;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->timeMills:Ljava/lang/Long;

    return-object p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherDescription()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherDescriptionNight()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherDescriptionNight:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherType()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherType:I

    return p0
.end method

.method public getWeatherTypeNight()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherTypeNight:I

    return p0
.end method

.method public getWindDirection()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->windDirection:Ljava/lang/String;

    return-object p0
.end method

.method public getWindPower()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->windPower:Ljava/lang/String;

    return-object p0
.end method

.method public setAqiLevel(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->aqiLevel:Ljava/lang/String;

    return-void
.end method

.method public setAqiValue(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->aqiValue:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTemp(Ljava/lang/Float;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->currentTemp:Ljava/lang/Float;

    return-void
.end method

.method public setMaxTemp(Ljava/lang/Float;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->maxTemp:Ljava/lang/Float;

    return-void
.end method

.method public setMinTemp(Ljava/lang/Float;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->minTemp:Ljava/lang/Float;

    return-void
.end method

.method public setTimeMills(Ljava/lang/Long;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->timeMills:Ljava/lang/Long;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setWeatherDescription(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherDescription:Ljava/lang/String;

    return-void
.end method

.method public setWeatherDescriptionNight(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherDescriptionNight:Ljava/lang/String;

    return-void
.end method

.method public setWeatherType(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherType:I

    return-void
.end method

.method public setWeatherTypeNight(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherTypeNight:I

    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->windDirection:Ljava/lang/String;

    return-void
.end method

.method public setWindPower(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->windPower:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherDetail{updateTime=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timeMills=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->timeMills:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', weatherType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherTypeNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherTypeNight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherDescriptionNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->weatherDescriptionNight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aqiValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->aqiValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', aqiLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->aqiLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', currentTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->currentTemp:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->maxTemp:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->minTemp:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windPower=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->windPower:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', windDirection=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherDetail;->windDirection:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
