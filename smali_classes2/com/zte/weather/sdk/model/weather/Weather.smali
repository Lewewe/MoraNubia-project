.class public Lcom/zte/weather/sdk/model/weather/Weather;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private airCondition:Lcom/zte/weather/sdk/model/weather/AirCondition;

.field private apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

.field private epochDate:Ljava/lang/Long;

.field private humidity:Ljava/lang/Integer;

.field private indexInfos:Lcom/zte/weather/sdk/model/weather/IndexInfoList;

.field private indexInfosEn:Lcom/zte/weather/sdk/model/weather/IndexInfoList;

.field private isDayTime:Ljava/lang/Boolean;

.field private localDate:Ljava/lang/String;

.field private maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

.field private minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

.field private mobileLink:Ljava/lang/String;

.field private sunRise:Ljava/lang/String;

.field private sunSet:Ljava/lang/String;

.field private temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

.field private visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

.field private weatherDescription:Ljava/lang/String;

.field private weatherTypeIcon:Ljava/lang/Integer;

.field private weatherTypeIconNight:Ljava/lang/Integer;

.field private windInfo:Lcom/zte/weather/sdk/model/weather/WindInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weather$1;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weather$1;-><init>()V

    sput-object v0, Lcom/zte/weather/sdk/model/weather/Weather;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/zte/weather/sdk/model/weather/Measurement;Lcom/zte/weather/sdk/model/weather/Measurement;Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 42
    iput-object p2, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 44
    iput-object p4, p0, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 45
    iput-object p5, p0, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Lcom/zte/weather/sdk/model/weather/Measurement;Lcom/zte/weather/sdk/model/weather/Measurement;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->epochDate:Ljava/lang/Long;

    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 57
    iput-object p4, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 59
    iput-object p6, p0, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 60
    iput-object p7, p0, Lcom/zte/weather/sdk/model/weather/Weather;->mobileLink:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->localDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zte/weather/sdk/model/weather/Measurement;Ljava/lang/Integer;Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 49
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 50
    iput-object p2, p0, Lcom/zte/weather/sdk/model/weather/Weather;->humidity:Ljava/lang/Integer;

    .line 51
    iput-object p3, p0, Lcom/zte/weather/sdk/model/weather/Weather;->visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public constructor <init>(Lcom/zte/weather/sdk/model/weather/Weather;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 64
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weather;->copyFrom(Lcom/zte/weather/sdk/model/weather/Weather;)Lcom/zte/weather/sdk/model/weather/Weather;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->epochDate:Ljava/lang/Long;

    .line 87
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 88
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 90
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 91
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->humidity:Ljava/lang/Integer;

    .line 92
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 93
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 94
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 95
    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->mobileLink:Ljava/lang/String;

    return-void
.end method

.method public copyFrom(Lcom/zte/weather/sdk/model/weather/Weather;)Lcom/zte/weather/sdk/model/weather/Weather;
    .locals 1

    .line 68
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->epochDate:Ljava/lang/Long;

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->epochDate:Ljava/lang/Long;

    .line 69
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    .line 70
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/weather/Measurement;->newMeasurement(Lcom/zte/weather/sdk/model/weather/Measurement;)Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 72
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/weather/Measurement;->newMeasurement(Lcom/zte/weather/sdk/model/weather/Measurement;)Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 73
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->humidity:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->humidity:Ljava/lang/Integer;

    .line 74
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/weather/Measurement;->newMeasurement(Lcom/zte/weather/sdk/model/weather/Measurement;)Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 75
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/weather/Measurement;->newMeasurement(Lcom/zte/weather/sdk/model/weather/Measurement;)Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 76
    iget-object v0, p1, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/weather/Measurement;->newMeasurement(Lcom/zte/weather/sdk/model/weather/Measurement;)Lcom/zte/weather/sdk/model/weather/Measurement;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    .line 77
    iget-object p1, p1, Lcom/zte/weather/sdk/model/weather/Weather;->mobileLink:Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->mobileLink:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAirCondition()Lcom/zte/weather/sdk/model/weather/AirCondition;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->airCondition:Lcom/zte/weather/sdk/model/weather/AirCondition;

    return-object p0
.end method

.method public getApparentTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-object p0
.end method

.method public getEpochDate()Ljava/lang/Long;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->epochDate:Ljava/lang/Long;

    return-object p0
.end method

.method public getHumidity()Ljava/lang/Integer;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->humidity:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIndexInfos()Lcom/zte/weather/sdk/model/weather/IndexInfoList;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->indexInfos:Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    return-object p0
.end method

.method public getIndexInfosEn()Lcom/zte/weather/sdk/model/weather/IndexInfoList;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->indexInfosEn:Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    return-object p0
.end method

.method public getIsDayTime()Ljava/lang/Boolean;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->isDayTime:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getLocalDate()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->localDate:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-object p0
.end method

.method public getMinTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-object p0
.end method

.method public getMobileLink()Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->mobileLink:Ljava/lang/String;

    return-object p0
.end method

.method public getSunRise()Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->sunRise:Ljava/lang/String;

    return-object p0
.end method

.method public getSunSet()Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->sunSet:Ljava/lang/String;

    return-object p0
.end method

.method public getTemperature()Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-object p0
.end method

.method public getVisibility()Lcom/zte/weather/sdk/model/weather/Measurement;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-object p0
.end method

.method public getWeatherDescription()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getWeatherIcon()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWeatherTypeIcon()Ljava/lang/Integer;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public getWeatherTypeIconNight()Ljava/lang/Integer;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIconNight:Ljava/lang/Integer;

    return-object p0
.end method

.method public getWindInfo()Lcom/zte/weather/sdk/model/weather/WindInfo;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->windInfo:Lcom/zte/weather/sdk/model/weather/WindInfo;

    return-object p0
.end method

.method public setAirCondition(Lcom/zte/weather/sdk/model/weather/AirCondition;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->airCondition:Lcom/zte/weather/sdk/model/weather/AirCondition;

    return-void
.end method

.method public setApparentTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->apparentTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public setEpochDate(Ljava/lang/Long;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->epochDate:Ljava/lang/Long;

    return-void
.end method

.method public setHumidity(Ljava/lang/Integer;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->humidity:Ljava/lang/Integer;

    return-void
.end method

.method public setIndexInfos(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->indexInfos:Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    return-void
.end method

.method public setIndexInfosEn(Lcom/zte/weather/sdk/model/weather/IndexInfoList;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->indexInfosEn:Lcom/zte/weather/sdk/model/weather/IndexInfoList;

    return-void
.end method

.method public setIsDayTime(Ljava/lang/Boolean;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->isDayTime:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocalDate(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->localDate:Ljava/lang/String;

    return-void
.end method

.method public setMaxTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->maxTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public setMinTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->minTemperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public setMobileLink(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->mobileLink:Ljava/lang/String;

    return-void
.end method

.method public setSunRise(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->sunRise:Ljava/lang/String;

    return-void
.end method

.method public setSunSet(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->sunSet:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public setVisibility(Lcom/zte/weather/sdk/model/weather/Measurement;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->visibility:Lcom/zte/weather/sdk/model/weather/Measurement;

    return-void
.end method

.method public setWeatherDescription(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    return-void
.end method

.method public setWeatherTypeIcon(Ljava/lang/Integer;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    return-void
.end method

.method public setWeatherTypeIconNight(Ljava/lang/Integer;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIconNight:Ljava/lang/Integer;

    return-void
.end method

.method public setWindInfo(Lcom/zte/weather/sdk/model/weather/WindInfo;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->windInfo:Lcom/zte/weather/sdk/model/weather/WindInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    sget-boolean v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weather{localDate=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->localDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', weatherTypeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weatherDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->temperature:Lcom/zte/weather/sdk/model/weather/Measurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunRise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/weather/Weather;->sunRise:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->sunSet:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "WEATHER"

    :goto_0
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    iget-object p2, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherTypeIcon:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object p2, p0, Lcom/zte/weather/sdk/model/weather/Weather;->weatherDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weather;->localDate:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
