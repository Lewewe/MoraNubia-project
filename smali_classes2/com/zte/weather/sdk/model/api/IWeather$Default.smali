.class public Lcom/zte/weather/sdk/model/api/IWeather$Default;
.super Ljava/lang/Object;
.source "IWeather.java"

# interfaces
.implements Lcom/zte/weather/sdk/model/api/IWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/api/IWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
