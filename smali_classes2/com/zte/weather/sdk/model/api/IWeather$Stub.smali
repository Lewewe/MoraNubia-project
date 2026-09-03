.class public abstract Lcom/zte/weather/sdk/model/api/IWeather$Stub;
.super Landroid/os/Binder;
.source "IWeather.java"

# interfaces
.implements Lcom/zte/weather/sdk/model/api/IWeather;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/api/IWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/api/IWeather$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_request:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.zte.weather.sdk.model.api.IWeather"

    invoke-virtual {p0, p0, v0}, Lcom/zte/weather/sdk/model/api/IWeather$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/weather/sdk/model/api/IWeather;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    const-string v0, "com.zte.weather.sdk.model.api.IWeather"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    instance-of v1, v0, Lcom/zte/weather/sdk/model/api/IWeather;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/zte/weather/sdk/model/api/IWeather;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/zte/weather/sdk/model/api/IWeather$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/weather/sdk/model/api/IWeather$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-string v0, "com.zte.weather.sdk.model.api.IWeather"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 67
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/zte/weather/sdk/model/api/IWeather$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zte/weather/sdk/model/api/IWeatherCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/weather/sdk/model/api/IWeatherCallback;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p1, p4, p2}, Lcom/zte/weather/sdk/model/api/IWeather$Stub;->request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I

    move-result p0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 56
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
