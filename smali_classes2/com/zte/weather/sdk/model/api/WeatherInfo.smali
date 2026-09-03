.class public Lcom/zte/weather/sdk/model/api/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# instance fields
.field private city:Ljava/lang/String;

.field private cityId:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private current:Lcom/zte/weather/sdk/model/api/WeatherDetail;

.field private dayNightSaving:I

.field private daysForecast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/weather/sdk/model/api/WeatherDetail;",
            ">;"
        }
    .end annotation
.end field

.field private district:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->city:Ljava/lang/String;

    return-object p0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->cityId:Ljava/lang/String;

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->country:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrent()Lcom/zte/weather/sdk/model/api/WeatherDetail;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->current:Lcom/zte/weather/sdk/model/api/WeatherDetail;

    return-object p0
.end method

.method public getDayNightSaving()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->dayNightSaving:I

    return p0
.end method

.method public getDaysForecast()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/weather/sdk/model/api/WeatherDetail;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->daysForecast:Ljava/util/List;

    return-object p0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->district:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->province:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->timeZone:Ljava/lang/String;

    return-object p0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->cityId:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public setCurrent(Lcom/zte/weather/sdk/model/api/WeatherDetail;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->current:Lcom/zte/weather/sdk/model/api/WeatherDetail;

    return-void
.end method

.method public setDayNightSaving(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->dayNightSaving:I

    return-void
.end method

.method public setDaysForecast(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/weather/sdk/model/api/WeatherDetail;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->daysForecast:Ljava/util/List;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->district:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 23
    sget-boolean v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    const/16 v1, 0x7d

    const-string v2, ", daysForecast="

    const-string v3, "\', timeZone=\'"

    const-string v4, "WeatherInfo{cityId=\'"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\', district=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->district:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\', city=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\', province=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->province:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\', country=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\', dayNightSaving="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->dayNightSaving:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", latitude="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", longitude="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", current="

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\', current="

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->current:Lcom/zte/weather/sdk/model/api/WeatherDetail;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;->daysForecast:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
