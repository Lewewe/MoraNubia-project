.class public Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;
.super Ljava/lang/Object;
.source "AqiYesterdayResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AqiYesterdayBean"
.end annotation


# instance fields
.field private aqiMax:Ljava/lang/String;

.field private aqiMin:Ljava/lang/String;

.field private forecasttime:Ljava/lang/String;

.field private stationid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqiMax()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->aqiMax:Ljava/lang/String;

    return-object p0
.end method

.method public getAqiMin()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->aqiMin:Ljava/lang/String;

    return-object p0
.end method

.method public getForecasttime()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->forecasttime:Ljava/lang/String;

    return-object p0
.end method

.method public getStationid()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->stationid:Ljava/lang/String;

    return-object p0
.end method

.method public setAqiMax(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->aqiMax:Ljava/lang/String;

    return-void
.end method

.method public setAqiMin(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->aqiMin:Ljava/lang/String;

    return-void
.end method

.method public setForecasttime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->forecasttime:Ljava/lang/String;

    return-void
.end method

.method public setStationid(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/AqiYesterdayResponse$AqiYesterdayBean;->stationid:Ljava/lang/String;

    return-void
.end method
