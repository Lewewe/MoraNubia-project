.class public Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;
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
    name = "CityColumns"
.end annotation


# static fields
.field public static final CITY_WEATHER_CONTENT_URI:Landroid/net/Uri;

.field public static final COLUMN_IS_DEFAULT:Ljava/lang/String; = "is_default"

.field public static final COLUMN_IS_LOCATION:Ljava/lang/String; = "is_location"

.field public static final COLUMN_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final COLUMN_LOCATION_KEY:Ljava/lang/String; = "location_key"

.field public static final COLUMN_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_ORDER:Ljava/lang/String; = "city_order"

.field public static final COLUMN_PINYIN_NAME:Ljava/lang/String; = "pinyin_name"

.field public static final COLUMN_POSTCODE:Ljava/lang/String; = "postcode"

.field public static final COLUMN_TIMEZONE_GMT_OFFSET:Ljava/lang/String; = "timezone_gmt_offset"

.field public static final COLUMN_TIMEZONE_IS_DAYLIGHT_SAVING:Ljava/lang/String; = "timezone_is_daylight_saving"

.field public static final COLUMN_TIMEZONE_NAME:Ljava/lang/String; = "timezone_name"

.field public static final CONCRETE_LOCATION_KEY:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ORDER:Ljava/lang/String; = "city_order ASC"

.field public static TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    sget-object v0, Lcom/zte/weather/sdk/model/city/CityContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "city"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 65
    const-string v2, "weather"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CITY_WEATHER_CONTENT_URI:Landroid/net/Uri;

    .line 66
    sput-object v1, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->TABLE_NAME:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".location_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CONCRETE_LOCATION_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
