.class public Lcom/zte/weather/sdk/model/api/GetWeatherWorker;
.super Ljava/lang/Object;
.source "GetWeatherWorker.java"

# interfaces
.implements Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;
    }
.end annotation


# static fields
.field private static final LOCATED_INTERVAL_MILLS:J

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "mifavor_weather_settings"

.field private static final PREF_LAST_FETCHED_WEATHER_DATA:Ljava/lang/String; = "last_fetched_weather_data"

.field private static final TAG:Ljava/lang/String; = "GetWeatherWorker"

.field private static sInstance:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;


# instance fields
.field private mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

.field private mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private mInitialized:Z

.field private mLastLocatedTimeMills:J

.field private mLastWeatherInfoString:Ljava/lang/String;

.field private mLocateInterval:J

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

.field private mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 257
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->LOCATED_INTERVAL_MILLS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mInitialized:Z

    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    return-void
.end method

.method static synthetic access$202(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastLocatedTimeMills:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;)Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/weather/sdk/model/api/WeatherInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->saveCurrentResult(Lcom/zte/weather/sdk/model/api/WeatherInfo;)V

    return-void
.end method

.method private detectLocation(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V
    .locals 2

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$2;-><init>(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 203
    invoke-interface {p1, p2, p3}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;->onResult(ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    :cond_0
    return-void
.end method

.method private saveCurrentResult(Lcom/zte/weather/sdk/model/api/WeatherInfo;)V
    .locals 3

    .line 229
    invoke-direct {p0, p1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->toWeatherInfoString(Lcom/zte/weather/sdk/model/api/WeatherInfo;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetched_weather_data"

    invoke-direct {p0, p1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->toWeatherInfoString(Lcom/zte/weather/sdk/model/api/WeatherInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    :cond_0
    iput-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastWeatherInfoString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static declared-synchronized self()Lcom/zte/weather/sdk/model/api/GetWeatherWorker;
    .locals 3

    const-class v0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->sInstance:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 40
    monitor-exit v0

    return-object v1

    .line 42
    :cond_0
    :try_start_1
    const-class v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    sget-object v2, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->sInstance:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    if-nez v2, :cond_1

    .line 44
    new-instance v2, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    invoke-direct {v2}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;-><init>()V

    sput-object v2, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->sInstance:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;

    .line 46
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    sget-object v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->sInstance:Lcom/zte/weather/sdk/model/api/GetWeatherWorker;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v2

    .line 46
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private toWeatherInfoObject(Ljava/lang/String;)Lcom/zte/weather/sdk/model/api/WeatherInfo;
    .locals 1

    .line 242
    :try_start_0
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mGson:Lcom/google/gson/Gson;

    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastWeatherInfoString:Ljava/lang/String;

    const-class v0, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/weather/sdk/model/api/WeatherInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private toWeatherInfoString(Lcom/zte/weather/sdk/model/api/WeatherInfo;)Ljava/lang/String;
    .locals 0

    .line 250
    :try_start_0
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 252
    :catch_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public fetchCurrentLocatedCityWeather(JLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I
    .locals 4

    .line 88
    const-string v0, "start f"

    const-string v1, "GetWeatherWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mInitialized:Z

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    .line 93
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/helpers/NetworkUtils;->isDataAccessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 98
    :cond_1
    iput-object p3, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    .line 99
    iput-wide p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLocateInterval:J

    .line 100
    sget-wide v2, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->LOCATED_INTERVAL_MILLS:J

    cmp-long p3, p1, v2

    if-gtz p3, :cond_2

    .line 101
    iput-wide v2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLocateInterval:J

    .line 104
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "locateInterval="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " final interval="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLocateInterval:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastLocatedTimeMills:J

    sub-long/2addr p1, v2

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "duration="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-wide v2, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLocateInterval:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_4

    .line 108
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastWeatherInfoString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0xb

    if-nez p1, :cond_3

    .line 109
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    iget-object p3, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastWeatherInfoString:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->toWeatherInfoObject(Ljava/lang/String;)Lcom/zte/weather/sdk/model/api/WeatherInfo;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    :cond_3
    return p2

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    if-eqz p1, :cond_5

    .line 114
    const-string p1, "start f II"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->startLocate(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$CityLocationListener;)V

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0

    .line 92
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "null callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No init invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fetchWeatherByLatitudeAndLongitude(Ljava/lang/String;Ljava/lang/String;Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I
    .locals 7

    const/4 v4, 0x0

    .line 124
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->fetchWeatherByLatitudeAndLongitude(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I

    move-result p0

    return p0
.end method

.method public fetchWeatherByLatitudeAndLongitude(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;Z",
            "Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;",
            ")I"
        }
    .end annotation

    move-object v1, p0

    .line 128
    const-string v0, "GetWeatherWorker"

    const-string v2, "fetchWeatherByLatitudeAndLongitude"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-boolean v0, v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mInitialized:Z

    if-eqz v0, :cond_3

    if-eqz p6, :cond_2

    .line 133
    iget-object v0, v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    iget-object v0, v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/helpers/NetworkUtils;->isDataAccessEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 138
    :cond_1
    iget-object v8, v1, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker$1;-><init>(Lcom/zte/weather/sdk/model/api/GetWeatherWorker;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    return v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No init invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 9

    if-nez p1, :cond_0

    .line 60
    const-string p0, "GetWeatherWorker"

    const-string p1, "init failed null context"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x400

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/zte/mifavor/weather/sdk/helpers/NameThreadFactory;

    invoke-direct {v7}, Lcom/zte/mifavor/weather/sdk/helpers/NameThreadFactory;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x5

    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/location/CityLocationFactory;->getCityLocation(Landroid/content/Context;)Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    .line 65
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/zte/mifavor/weather/sdk/logger/LibLog;

    invoke-virtual {p1, v0, v1}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->init(Landroid/content/Context;Lcom/zte/mifavor/weather/sdk/logger/LibLog;)V

    .line 66
    iget-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mContext:Landroid/content/Context;

    const-string v0, "mifavor_weather_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    const-string v0, "last_fetched_weather_data"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mLastWeatherInfoString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mInitialized:Z

    :goto_0
    return-void
.end method

.method public isInitialized()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mInitialized:Z

    return p0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V
    .locals 3

    .line 166
    invoke-virtual {p1}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->getLastKnownLocation()Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;->getStatus()I

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0, v0}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->detectLocation(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V

    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    invoke-direct {p0, v0, p1, v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0, p1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->detectLocation(Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation$LocationState;)V

    :goto_0
    return-void
.end method

.method public onLocationDisabled()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    return-void
.end method

.method public onNoPermission()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mWeatherDataCallback:Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/zte/weather/sdk/model/api/WeatherInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->notifyLocationResult(Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;ILcom/zte/weather/sdk/model/api/WeatherInfo;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 73
    const-string v0, "GetWeatherWorker"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mInitialized:Z

    .line 75
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->cancelTimeout()V

    .line 77
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->removeUpdates()V

    .line 78
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mCityLocation:Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;

    invoke-virtual {v0}, Lcom/zte/mifavor/weather/sdk/location/AbstractCityLocation;->quitSafely()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object p0, p0, Lcom/zte/weather/sdk/model/api/GetWeatherWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method
