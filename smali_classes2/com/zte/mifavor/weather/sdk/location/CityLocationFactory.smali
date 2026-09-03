.class public Lcom/zte/mifavor/weather/sdk/location/CityLocationFactory;
.super Ljava/lang/Object;
.source "CityLocationFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CityLocationFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCityLocation(Landroid/content/Context;)Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;
    .locals 2

    .line 13
    const-string v0, "CityLocationFactory"

    const-string v1, "Use Aosp location api"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/weather/sdk/location/AospCityLocation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
