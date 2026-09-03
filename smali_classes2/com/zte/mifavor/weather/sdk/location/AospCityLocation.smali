.class Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;
.super Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;
.source "AospCityLocation.java"


# static fields
.field private static final DBG_GPS_LOCATION:Z = false

.field private static final PROPER_ACCURACY:F = 20000.0f

.field private static final TAG:Ljava/lang/String; = "AospCityLocation"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;-><init>()V

    .line 16
    new-instance v0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;-><init>(Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;)V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationListener:Landroid/location/LocationListener;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private checkSelfPermission()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->hasLocationPermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private requestLocationUpdates(Ljava/lang/String;)V
    .locals 8

    .line 94
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->checkSelfPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationManager:Landroid/location/LocationManager;

    iget-object v6, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationListener:Landroid/location/LocationListener;

    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    const-wide/16 v3, 0x2710

    const/high16 v5, 0x41200000    # 10.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastKnownLocation()Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;
    .locals 5

    .line 78
    const-string v0, "AospCityLocation"

    const-string v1, "getLastKnownLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->checkSelfPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->INVALID:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const v2, 0x469c4000    # 20000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 86
    new-instance p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;-><init>(DD)V

    return-object p0

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->INVALID:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    return-object p0
.end method

.method public removeUpdates()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->checkSelfPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "AospCityLocation"

    const-string v1, "removeUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method protected startLocate()Z
    .locals 6

    .line 46
    const-string v0, "startLocate"

    const-string v1, "AospCityLocation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mGpsEnabled:Z

    .line 48
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mNetworkEnabled:Z

    .line 49
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->checkSelfPermission()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    invoke-interface {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onNoPermission()V

    .line 51
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    invoke-interface {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onFinish()V

    return v4

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "isGpsEnabled:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mGpsEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " isNetworkEnabled:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mNetworkEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mNetworkEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, v3}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->requestLocationUpdates(Ljava/lang/String;)V

    return v1

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mGpsEnabled:Z

    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0, v2}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->requestLocationUpdates(Ljava/lang/String;)V

    return v1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    invoke-interface {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onLocationDisabled()V

    .line 63
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    invoke-interface {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onFinish()V

    return v4
.end method
