.class public Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;
.super Ljava/lang/Object;
.source "CityContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/city/CityContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherColumns"
.end annotation


# static fields
.field public static final COLUMN_LOCATION_KEY:Ljava/lang/String; = "location_key"

.field public static final COLUMN_WEATHER_DATA:Ljava/lang/String; = "data"

.field public static final COLUMN_WEATHER_LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final COLUMN_WEATHER_VERSION:Ljava/lang/String; = "version"

.field public static final CONCRETE_LOCATION_KEY:Ljava/lang/String;

.field public static final CONCRETE_WEATHER_DATA:Ljava/lang/String;

.field public static final CONCRETE_WEATHER_LAST_MODIFIED:Ljava/lang/String;

.field public static final CONCRETE_WEATHER_VERSION:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget-object v0, Lcom/zte/weather/sdk/model/city/CityContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "weather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    sput-object v1, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->TABLE_NAME:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".location_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONCRETE_LOCATION_KEY:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONCRETE_WEATHER_VERSION:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONCRETE_WEATHER_DATA:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".last_modified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONCRETE_WEATHER_LAST_MODIFIED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
