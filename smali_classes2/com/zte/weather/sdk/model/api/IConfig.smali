.class public interface abstract Lcom/zte/weather/sdk/model/api/IConfig;
.super Ljava/lang/Object;
.source "IConfig.java"


# virtual methods
.method public abstract getAddressListEn()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAddressListZh()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract needToFetchWeatherData()Z
.end method
