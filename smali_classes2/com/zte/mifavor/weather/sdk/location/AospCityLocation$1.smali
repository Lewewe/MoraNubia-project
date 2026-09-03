.class Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;
.super Ljava/lang/Object;
.source "AospCityLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .line 18
    const-string v0, "AospCityLocation"

    const-string v1, "onLocationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    iget-object v0, v0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    new-instance v1, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;-><init>(DD)V

    invoke-interface {v0, v1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onLocationChanged(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    iget-object p1, p1, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    iget-object v0, v0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->INVALID:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    invoke-interface {p1, v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onLocationChanged(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    iget-object p1, p1, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->mCityLocationListener:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;

    invoke-interface {p1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;->onFinish()V

    .line 26
    iget-object p1, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    invoke-virtual {p1}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->cancelTimeout()V

    .line 27
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation$1;->this$0:Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    invoke-virtual {p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;->removeUpdates()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
