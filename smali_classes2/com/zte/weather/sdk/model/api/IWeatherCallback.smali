.class public interface abstract Lcom/zte/weather/sdk/model/api/IWeatherCallback;
.super Ljava/lang/Object;
.source "IWeatherCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/api/IWeatherCallback$Stub;,
        Lcom/zte/weather/sdk/model/api/IWeatherCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.zte.weather.sdk.model.api.IWeatherCallback"


# virtual methods
.method public abstract onResult(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
