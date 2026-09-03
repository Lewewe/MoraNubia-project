.class public Lcom/zte/weather/sdk/model/city/CityDataRepo;
.super Ljava/lang/Object;
.source "CityDataRepo.java"


# static fields
.field private static final DEFAULT_CITY_ID:Ljava/lang/String; = "default_city_id"

.field private static final DEFAULT_CITY_SELECTION:Ljava/lang/String; = "is_default=?"

.field private static final DEFAULT_CITY_SELECTION_BY_ORDER:Ljava/lang/String; = "city_order=?"

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_DEFAULT:I = 0x6

.field private static final INDEX_IS_LOCATION:I = 0x7

.field private static final INDEX_LATITUDE:I = 0x5

.field private static final INDEX_LOCATION_KEY:I = 0x2

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_ORDER:I = 0x8

.field private static final INDEX_PINGYIN_NAME:I = 0xf

.field private static final INDEX_POSTCODE:I = 0x3

.field private static final INDEX_TIMEZONE_GMT_OFFSET:I = 0xa

.field private static final INDEX_TIMEZONE_IS_DAYLIGHT_SAVING:I = 0xb

.field private static final INDEX_TIMEZONE_NAME:I = 0x9

.field private static final INDEX_WEATHER_DATA:I = 0xc

.field private static final INDEX_WEATHER_LAST_MODIFIED:I = 0xe

.field private static final INDEX_WEATHER_VERSION:I = 0xd

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CityDataRepo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "location_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "postcode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_default"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "city_order"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timezone_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "timezone_gmt_offset"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "timezone_is_daylight_saving"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pinyin_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/weather/sdk/model/city/CityDataRepo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendExtraCityInfo(Lcom/zte/weather/sdk/model/city/City;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 317
    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->parseCityInfoItem(Ljava/lang/String;)Lcom/zte/weather/sdk/model/city/CityInfoItem;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setName(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getNameEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setNameEn(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setCityName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getCityNameEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setCityNameEn(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setProvince(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getProvinceEn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setProvinceEn(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/weather/sdk/model/city/City;->setCountry(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->getCountryEn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/city/City;->setCountryEn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getCityNameString(Lcom/zte/weather/sdk/model/city/City;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 245
    const-string p0, ""

    return-object p0

    .line 247
    :cond_0
    new-instance v0, Lcom/zte/weather/sdk/model/city/CityInfoItem;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/city/CityInfoItem;-><init>()V

    .line 248
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setName(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getNameEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setNameEn(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setCityName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getCityNameEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setCityNameEn(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setProvince(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getProvinceEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setProvinceEn(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setCountry(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/city/City;->getCountryEn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zte/weather/sdk/model/city/CityInfoItem;->setCountryEn(Ljava/lang/String;)V

    .line 256
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 257
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultCityId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_city_id"

    invoke-static {p0, v0}, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->readParameter(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasDefaultCity(Landroid/content/Context;)Z
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->getDefaultCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static hasLocatedCity(Landroid/content/Context;)Z
    .locals 0

    .line 120
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->queryLocatedCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseCityFromCursor(Landroid/database/Cursor;)Lcom/zte/weather/sdk/model/city/City;
    .locals 4

    if-eqz p0, :cond_2

    .line 263
    new-instance v0, Lcom/zte/weather/sdk/model/city/City;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    const/4 v1, 0x0

    .line 264
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zte/weather/sdk/model/city/City;->setId(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 265
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v0, v3}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->appendExtraCityInfo(Lcom/zte/weather/sdk/model/city/City;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 267
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setLocationKey(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 268
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setPostCode(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 269
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setLongitude(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 270
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setLatitude(Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 271
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setIsDefault(I)V

    const/4 v3, 0x7

    .line 272
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setIsLocation(I)V

    const/16 v3, 0x8

    .line 273
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setOrder(I)V

    const/16 v3, 0x9

    .line 274
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zte/weather/sdk/model/city/City;->setTimezoneName(Ljava/lang/String;)V

    const/16 v3, 0xb

    .line 275
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setTimezoneIsDayNightSaving(Ljava/lang/Boolean;)V

    const/16 v1, 0xc

    .line 276
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->parseWeathers(Ljava/lang/String;)Lcom/zte/weather/sdk/model/weather/Weathers;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/weather/sdk/model/weather/Weathers;->setLocationKey(Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 280
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 281
    invoke-virtual {v1, v2, v3}, Lcom/zte/weather/sdk/model/weather/Weathers;->setLastModified(J)V

    .line 282
    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setWeathers(Lcom/zte/weather/sdk/model/weather/Weathers;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseCityInfoItem(Ljava/lang/String;)Lcom/zte/weather/sdk/model/city/CityInfoItem;
    .locals 3

    .line 301
    new-instance v0, Lcom/zte/weather/sdk/model/city/CityInfoItem;

    invoke-direct {v0}, Lcom/zte/weather/sdk/model/city/CityInfoItem;-><init>()V

    .line 304
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 306
    const-class v2, Lcom/zte/weather/sdk/model/city/CityInfoItem;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/city/CityInfoItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method private static parseWeathers(Ljava/lang/String;)Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 2

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 294
    const-class v1, Lcom/zte/weather/sdk/model/weather/Weathers;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/weather/Weathers;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static queryAllCities(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;"
        }
    .end annotation

    .line 150
    const-string v0, "CityDataRepo"

    const-string v1, "queryCities"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CITY_WEATHER_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/zte/weather/sdk/model/city/CityDataRepo;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object p0, v5

    check-cast p0, Ljava/lang/String;

    const/4 v6, 0x0

    move-object p0, v6

    check-cast p0, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object p0, v7

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    .line 157
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    .line 158
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->parseCityFromCursor(Landroid/database/Cursor;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_5
    throw v0
.end method

.method public static queryCity(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/weather/sdk/model/city/City;
    .locals 9

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "query city locationKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CityDataRepo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 45
    const-string p0, "query empty locationKey"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CITY_WEATHER_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zte/weather/sdk/model/city/CityDataRepo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "location_key=?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v7, p0

    const/4 v8, 0x0

    move-object p0, v8

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    .line 53
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 55
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->parseCityFromCursor(Landroid/database/Cursor;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 62
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_4
    throw p1
.end method

.method public static queryDefaultCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;
    .locals 9

    .line 88
    const-string v0, "CityDataRepo"

    const-string v1, "queryDefaultCity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->getDefaultCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 94
    :cond_0
    const-string v6, "location_key=?"

    const/4 v1, 0x1

    .line 95
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CITY_WEATHER_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zte/weather/sdk/model/city/CityDataRepo;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object p0, v8

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 100
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 104
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->parseCityFromCursor(Landroid/database/Cursor;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    .line 110
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v2

    .line 106
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    .line 110
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_6
    throw v0
.end method

.method public static queryLocatedCity(Landroid/content/Context;)Lcom/zte/weather/sdk/model/city/City;
    .locals 9

    .line 125
    const-string v0, "CityDataRepo"

    const-string v1, "queryLocatedCity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v5, "is_location=1"

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CITY_WEATHER_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/zte/weather/sdk/model/city/CityDataRepo;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object p0, v6

    check-cast p0, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object p0, v7

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 131
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    invoke-static {p0}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->parseCityFromCursor(Landroid/database/Cursor;)Lcom/zte/weather/sdk/model/city/City;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 138
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_4

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_5
    throw v0
.end method

.method public static declared-synchronized saveCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;)Z
    .locals 2

    const-class v0, Lcom/zte/weather/sdk/model/city/CityDataRepo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 177
    :try_start_0
    invoke-static {p0, p1, v1, v1}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->saveCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;ZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;ZZ)Z
    .locals 10

    const-string v0, "updataCityToDB  updataResult="

    const-class v1, Lcom/zte/weather/sdk/model/city/CityDataRepo;

    monitor-enter v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 190
    monitor-exit v1

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 192
    :try_start_0
    const-string p0, "CityDataRepo"

    const-string p1, "save null city"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v1

    return v2

    .line 194
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    const-string p0, "CityDataRepo"

    const-string p1, "save empty location key"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    monitor-exit v1

    return v2

    .line 198
    :cond_2
    :try_start_2
    const-string v3, "CityDataRepo"

    const-string v4, "save city"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v3, "location_key=?"

    const/4 v4, 0x1

    .line 200
    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz p3, :cond_3

    .line 202
    const-string v3, "CityDataRepo"

    const-string v5, "addOrUpdateLocatedCity"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v3, "is_location=1"

    const/4 v5, 0x0

    .line 207
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 208
    const-string v7, "location_key"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getNameEn()Ljava/lang/String;

    move-result-object v7

    .line 210
    const-string v8, "name"

    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->getCityNameString(Lcom/zte/weather/sdk/model/city/City;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v8, "postcode"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getPostCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v8, "pinyin_name"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v7, "timezone_name"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneIsDayNightSaving()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 215
    const-string v7, "timezone_is_daylight_saving"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getTimezoneIsDayNightSaving()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 219
    const-string p1, "is_location"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    if-eqz p2, :cond_7

    .line 223
    const-string p1, "CityDataRepo"

    const-string p2, "allowedSameLocationKey"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_6

    move v2, v4

    .line 225
    :cond_6
    monitor-exit v1

    return v2

    .line 227
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v6, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 228
    const-string p2, "CityDataRepo"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_9

    .line 230
    const-string p1, "CityDataRepo"

    const-string p2, "saveWeathersToDB insert it"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_8

    move v2, v4

    .line 232
    :cond_8
    monitor-exit v1

    return v2

    :cond_9
    if-lt p1, v4, :cond_a

    .line 234
    :try_start_4
    const-string p0, "CityDataRepo"

    const-string p1, "update success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    monitor-exit v1

    return v4

    .line 237
    :cond_a
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized saveCityAllowedSameLocationKey(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;)Z
    .locals 3

    const-class v0, Lcom/zte/weather/sdk/model/city/CityDataRepo;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->saveCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;ZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized saveLocatedCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;)Z
    .locals 3

    const-class v0, Lcom/zte/weather/sdk/model/city/CityDataRepo;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 181
    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/zte/weather/sdk/model/city/CityDataRepo;->saveCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;ZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setDefaultCityId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 77
    const-string p1, ""

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_city_id"

    invoke-static {p0, v0, p1}, Lcom/zte/weather/sdk/model/provider/settings/WeatherSettingsContract;->writeParameter(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateDefaultCity(Landroid/content/Context;Lcom/zte/weather/sdk/model/city/City;I)V
    .locals 4

    if-eqz p0, :cond_2

    .line 332
    const-string v0, "CityDataRepo"

    if-nez p1, :cond_0

    .line 333
    const-string p0, "save null city"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_0
    sget-object v1, Lcom/zte/weather/sdk/model/city/CityContract;->ID_EMPTY_CITY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string p0, "invalid city id -1"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 338
    const-string v2, "is_default"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/zte/weather/sdk/model/city/CityContract$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/city/City;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "_id=?"

    invoke-virtual {p0, p2, v1, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "update default city"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
