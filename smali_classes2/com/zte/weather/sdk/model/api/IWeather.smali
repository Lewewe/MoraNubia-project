.class public interface abstract Lcom/zte/weather/sdk/model/api/IWeather;
.super Ljava/lang/Object;
.source "IWeather.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/api/IWeather$_Parcel;,
        Lcom/zte/weather/sdk/model/api/IWeather$Stub;,
        Lcom/zte/weather/sdk/model/api/IWeather$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.weather.sdk.model.api.IWeather"


# virtual methods
.method public abstract request(ILandroid/os/Bundle;Lcom/zte/weather/sdk/model/api/IWeatherCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
