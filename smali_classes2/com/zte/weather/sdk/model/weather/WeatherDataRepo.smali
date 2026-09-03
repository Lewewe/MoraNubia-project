.class public Lcom/zte/weather/sdk/model/weather/WeatherDataRepo;
.super Ljava/lang/Object;
.source "WeatherDataRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;
    }
.end annotation


# static fields
.field private static final COLUMN_CITY_LOCATION_KEY_INDEX:I = 0x1

.field private static final COLUMN_WEATHER_DATA_INDEX:I = 0x1

.field private static final COLUMN_WEATHER_LAST_MODIFIED_INDEX:I = 0x3

.field private static final COLUMN_WEATHER_VERSION_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_CITY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WeatherDataRepo"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v3, "data"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "version"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v6, "last_modified"

    aput-object v6, v0, v3

    sput-object v0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo;->PROJECTION:[Ljava/lang/String;

    .line 19
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "location_key"

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo;->PROJECTION_CITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    const-string p1, "location_key=?"

    invoke-virtual {p0, v0, p1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isWeatherDataValid(Lcom/zte/weather/sdk/model/weather/Weathers;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getDataSavedFlag()I

    move-result p0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasNecessaryInfo(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWeatherDataValidForWidget(Lcom/zte/weather/sdk/model/weather/Weathers;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->getDataSavedFlag()I

    move-result p0

    invoke-static {p0}, Lcom/zte/weather/sdk/model/weather/Weathers;->hasNecessaryInfoForWidget(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseWeathers(Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;)Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getData()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/zte/weather/sdk/model/weather/Weathers;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/weather/Weathers;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static query(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;
    .locals 9

    const-string v0, "queryWeatherFromDB  weatherData="

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryWeatherFromDB locationKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherDataRepo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "location_key=?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    .line 33
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;

    invoke-direct {v1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;-><init>()V

    .line 39
    invoke-virtual {v1, p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->setLocationKey(Ljava/lang/String;)V

    .line 40
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->setData(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 42
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->setVersion(Ljava/lang/Integer;)V

    const/4 p1, 0x3

    .line 44
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->setLastModified(Ljava/lang/Long;)V

    .line 46
    sget-boolean p1, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    if-eqz p1, :cond_1

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v3, :cond_2

    .line 53
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    .line 34
    :cond_3
    :goto_0
    :try_start_2
    const-string p0, "weatherCursor is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 53
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_5
    throw p0
.end method

.method public static declared-synchronized save(Landroid/content/Context;Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;)Z
    .locals 10

    const-string v0, "updataWeatherToDB  updataResult="

    const-class v1, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo;

    monitor-enter v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 63
    monitor-exit v1

    return v2

    :cond_0
    if-nez p1, :cond_1

    .line 65
    :try_start_0
    const-string p0, "WeatherDataRepo"

    const-string p1, "save null weatherItem"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v1

    return v2

    .line 67
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getVersion()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    .line 69
    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getLocationKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const-string p0, "WeatherDataRepo"

    const-string p1, "save  weatherItem empty location key"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit v1

    return v2

    .line 73
    :cond_2
    :try_start_2
    const-string v3, "WeatherDataRepo"

    const-string v4, "save weatherItem"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v4, "data"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v4, "version"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getVersion()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v4, "last_modified"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getLastModified()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "location_key=?"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getLocationKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 79
    const-string v5, "WeatherDataRepo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    .line 81
    const-string v0, "WeatherDataRepo"

    const-string v4, "saveWeathersToDB insert it"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "location_key"

    invoke-virtual {p1}, Lcom/zte/weather/sdk/model/weather/WeatherDataRepo$WeatherItem;->getLocationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/zte/weather/sdk/model/city/CityContract$WeatherColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    move v2, v7

    .line 84
    :cond_3
    monitor-exit v1

    return v2

    :cond_4
    if-lt v4, v7, :cond_5

    .line 86
    :try_start_3
    const-string p0, "WeatherDataRepo"

    const-string p1, "updata success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    monitor-exit v1

    return v7

    .line 89
    :cond_5
    :try_start_4
    const-string p0, "WeatherDataRepo"

    const-string p1, "updata failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    monitor-exit v1

    return v2

    .line 68
    :cond_6
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply weather version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
