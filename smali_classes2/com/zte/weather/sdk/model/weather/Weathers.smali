.class public Lcom/zte/weather/sdk/model/weather/Weathers;
.super Ljava/lang/Object;
.source "Weathers.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zte/weather/sdk/model/weather/Weathers;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_TYPE_APP:I = 0x1

.field public static final QUERY_TYPE_DEFAULT:I = 0x1

.field public static final QUERY_TYPE_LAUNCHER_WIDGET:I = 0x2

.field public static final TYPE_ALERTS:I = 0x8

.field public static final TYPE_ALL:I = 0xff

.field public static final TYPE_AQI:I = 0x20

.field public static final TYPE_CURRENT_CONDITION:I = 0x1

.field public static final TYPE_DAILY_FORECASTS:I = 0x2

.field public static final TYPE_EXTERNAL:I = 0xa3

.field public static final TYPE_HOURLY_FORECASTS:I = 0x4

.field public static final TYPE_INDEX:I = 0x40

.field public static final TYPE_LAUNCHER_WIDGET:I = 0x27

.field public static final TYPE_SUN_RISE_SET:I = 0x10

.field public static final TYPE_YESTERDAY:I = 0x80


# instance fields
.field private alertInfo:Lcom/zte/weather/sdk/model/weather/AlertInfo;

.field private currentCondition:Lcom/zte/weather/sdk/model/weather/Weather;

.field private dataSavedFlag:I

.field private fiveDaysForecasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private lastModified:J

.field private lastQueryType:I

.field private locationKey:Ljava/lang/String;

.field private twentyFourHoursForecasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/zte/weather/sdk/model/weather/Weathers$1;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/weather/Weathers$1;-><init>()V

    sput-object v0, Lcom/zte/weather/sdk/model/weather/Weathers;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastQueryType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastQueryType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->locationKey:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastModified:J

    .line 116
    const-class v0, Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zte/weather/sdk/model/weather/Weather;

    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->currentCondition:Lcom/zte/weather/sdk/model/weather/Weather;

    return-void
.end method

.method public static hasAQI(I)Z
    .locals 1

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasAlerts(I)Z
    .locals 1

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasCurrentConditionType(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasDailyForecastsType(I)Z
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasHourlyForecastsType(I)Z
    .locals 1

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasIndexType(I)Z
    .locals 1

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasNecessaryInfo(I)Z
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasCurrentConditionType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasHourlyForecastsType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasDailyForecastsType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasIndexType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasNecessaryInfoForWidget(I)Z
    .locals 1

    .line 78
    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasCurrentConditionType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasHourlyForecastsType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasDailyForecastsType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasSunriseAndSunset(I)Z
    .locals 1

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasYesterday(I)Z
    .locals 1

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addDataSavedFlag(I)V
    .locals 1

    .line 82
    iget v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlertInfo()Lcom/zte/weather/sdk/model/weather/AlertInfo;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->alertInfo:Lcom/zte/weather/sdk/model/weather/AlertInfo;

    return-object p0
.end method

.method public getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->currentCondition:Lcom/zte/weather/sdk/model/weather/Weather;

    return-object p0
.end method

.method public getDataSavedFlag()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    return p0
.end method

.method public getFiveDaysForecasts()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->fiveDaysForecasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLastModified()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastModified:J

    return-wide v0
.end method

.method public getLastQueryType()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastQueryType:I

    return p0
.end method

.method public getLocationKey()Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->locationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTwentyFourHoursForecasts()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->twentyFourHoursForecasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasAlertsData()Z
    .locals 1

    .line 98
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasCurrentConditiondata()Z
    .locals 1

    .line 86
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDailyForecastsData()Z
    .locals 1

    .line 94
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasHourlyForecastsData()Z
    .locals 1

    .line 90
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasYesterdayData()Z
    .locals 1

    .line 102
    iget p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlertInfo(Lcom/zte/weather/sdk/model/weather/AlertInfo;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->alertInfo:Lcom/zte/weather/sdk/model/weather/AlertInfo;

    return-void
.end method

.method public setCurrentCondition(Lcom/zte/weather/sdk/model/weather/Weather;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->currentCondition:Lcom/zte/weather/sdk/model/weather/Weather;

    return-void
.end method

.method public setFiveDaysForecasts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->fiveDaysForecasts:Ljava/util/ArrayList;

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastModified:J

    return-void
.end method

.method public setLastQueryType(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastQueryType:I

    return-void
.end method

.method public setLocationKey(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->locationKey:Ljava/lang/String;

    return-void
.end method

.method public setTwentyFourHoursForecasts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/weather/Weather;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->twentyFourHoursForecasts:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    sget-boolean v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weathers{dataSavedFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CURRENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getCurrentCondition()Lcom/zte/weather/sdk/model/weather/Weather;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 24_HOURS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getTwentyFourHoursForecasts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 5_DAYS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getFiveDaysForecasts()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "WEATHERS"

    :goto_0
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->locationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->dataSavedFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-wide v0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->lastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object p0, p0, Lcom/zte/weather/sdk/model/weather/Weathers;->currentCondition:Lcom/zte/weather/sdk/model/weather/Weather;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
