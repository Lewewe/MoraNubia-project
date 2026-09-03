.class public interface abstract Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;
.super Ljava/lang/Object;
.source "AbstractCityLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CityLocationListener"
.end annotation


# virtual methods
.method public abstract onFinish()V
.end method

.method public abstract onLocationChanged(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V
.end method

.method public abstract onLocationDisabled()V
.end method

.method public abstract onNoPermission()V
.end method
