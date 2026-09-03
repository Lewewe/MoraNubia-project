.class public abstract Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;
.super Ljava/lang/Object;
.source "AbstractCityLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;,
        Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field protected INVALID:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

.field private LOCATION_DEBUG:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

.field private LOCATION_TIMEOUT:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

.field private mCancelRunnable:Ljava/lang/Runnable;

.field protected mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

.field protected mGpsEnabled:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mNetworkEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mGpsEnabled:Z

    .line 12
    iput-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mNetworkEnabled:Z

    .line 13
    new-instance v1, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-direct {v1, v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;-><init>(I)V

    iput-object v1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->INVALID:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    .line 14
    new-instance v0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    const-wide v1, 0x405d1a0c49ba5e35L    # 116.407

    const-wide v3, 0x4043f5604189374cL    # 39.917

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;-><init>(DD)V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->LOCATION_DEBUG:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    .line 15
    new-instance v0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;-><init>(I)V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->LOCATION_TIMEOUT:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    .line 17
    new-instance v0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$$ExternalSyntheticLambda0;-><init>(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;)V

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mCancelRunnable:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CityLocation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static hasBackgroundLocationPermission(Landroid/content/Context;)Z
    .locals 1

    .line 63
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    .line 59
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startTimeout()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelTimeout()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract getLastKnownLocation()Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;
.end method

.method protected isGpsEnabled()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mGpsEnabled:Z

    return p0
.end method

.method synthetic lambda$new$0$com-zte-mifavor-weather-sdk-location-AbstractCityLocation()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    iget-object v1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->LOCATION_TIMEOUT:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-interface {v0, v1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onLocationChanged(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V

    .line 19
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->removeUpdates()V

    return-void
.end method

.method public quitSafely()V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public abstract removeUpdates()V
.end method

.method public startLocate(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    .line 30
    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->startLocate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->startTimeout()V

    :cond_0
    return-void
.end method

.method protected abstract startLocate()Z
.end method
