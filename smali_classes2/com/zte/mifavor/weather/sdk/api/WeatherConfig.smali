.class public Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;
.super Ljava/lang/Object;
.source "WeatherConfig.java"

# interfaces
.implements Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;


# static fields
.field public static final ACTION_AUTO_UPDATE_COMPLETED:Ljava/lang/String; = "com.zte.mifavor.weather.action.AUTO_UPDATE_COMPLETED"

.field public static final ALIAS:Ljava/lang/String; = "alias"

.field public static final ALIAS_ALWAYS:Ljava/lang/String; = "always"

.field public static final DAILY_1:I = 0x1

.field public static final DAILY_5:I = 0x5

.field public static final DATA_FORMAT:Ljava/lang/String; = ".json"

.field public static final DETAILS:Ljava/lang/String; = "details"

.field public static final HOURLY_12:I = 0xc

.field public static final HOURLY_24:I = 0x18

.field private static final KEY_DEV:Ljava/lang/String; = "Q1drOFRrTTg="

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LANGUAGE_EN:Ljava/lang/String; = "en"

.field public static final LANGUAGE_VALUE_CN:Ljava/lang/String; = "cn"

.field public static final LANGUAGE_VALUE_EN:Ljava/lang/String; = "en"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final PARAM_CITY_KEYWORD:Ljava/lang/String; = "city"

.field public static final PARAM_CITY_NAME_COMPLETE:Ljava/lang/String; = "complete"

.field public static final PARAM_DOMESTIC:Ljava/lang/String; = "domestic"

.field public static final PARAM_IVSION:Ljava/lang/String; = "ivsion"

.field public static final PARAM_IVSION_VALUE:Ljava/lang/String; = "v1"

.field public static final PARAM_KEY:Ljava/lang/String; = "key"

.field public static final PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field public static final PARAM_LANGUAGE_INDEX:Ljava/lang/String; = "lang"

.field public static final PARAM_LATITUDE:Ljava/lang/String; = "lat"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_LONGITUDE:Ljava/lang/String; = "lng"

.field public static final PARAM_PAGE:Ljava/lang/String; = "page"

.field public static final PARAM_STATIONID:Ljava/lang/String; = "stationid"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final PARTNER_CODE:Ljava/lang/String; = "oem_zte2020"

.field private static final PARTNER_SUFFIX:Ljava/lang/String; = "&partner=oem_zte2020"

.field public static final REQUEST_CONDITION:Ljava/lang/String; = "q"

.field public static final STATIONID_KEY:Ljava/lang/String; = "stationid"

.field public static final TAG:Ljava/lang/String; = "WeatherConfig"

.field public static final TIMEOUT:I = 0x1f40

.field public static final TYPE_AIR:Ljava/lang/String; = "air"

.field public static final TYPE_ALERT:Ljava/lang/String; = "alert"

.field public static final TYPE_CURRENT:Ljava/lang/String; = "current"

.field public static final TYPE_CURRENT_ABROAD:Ljava/lang/String; = "afcurrent"

.field public static final TYPE_FETCH_ABROAD_CITY_BY_GEO:Ljava/lang/String; = "lonlatCity"

.field public static final TYPE_FORECAST15D_ABROAD:Ljava/lang/String; = "afforecast15d"

.field public static final TYPE_FORECAST24H:Ljava/lang/String; = "forecast24h"

.field public static final TYPE_FORECAST24H_ABROAD:Ljava/lang/String; = "afforecast24h"

.field public static final TYPE_FORECAST7D:Ljava/lang/String; = "forecast7d"

.field public static final TYPE_INDEX7ABROAD:Ljava/lang/String; = "index7Abroad"

.field public static final TYPE_INDEX9TYPE:Ljava/lang/String; = "index9type"

.field public static final TYPE_RISESET:Ljava/lang/String; = "riseset"

.field public static final TYPE_SEARCH_CITY:Ljava/lang/String; = "searchCity"

.field public static final TYPE_YESTERDAY:Ljava/lang/String; = "yesterday"

.field public static final UNIT_METRIC:Ljava/lang/String; = "metric"

.field private static final URL_DEV:Ljava/lang/String;

.field public static final WEATHER_TYPE_KEY:Ljava/lang/String; = "type"

.field public static final ZH_BEIJING:Ljava/lang/String; = "\u5317\u4eac"

.field public static final ZH_CHINA:Ljava/lang/String; = "\u4e2d\u56fd"

.field public static final ZH_CHONGQIN:Ljava/lang/String; = "\u91cd\u5e86"

.field public static final ZH_QU:Ljava/lang/String; = "\u533a"

.field public static final ZH_SHANGHAI:Ljava/lang/String; = "\u4e0a\u6d77"

.field public static final ZH_SHENG:Ljava/lang/String; = "\u7701"

.field public static final ZH_SHI:Ljava/lang/String; = "\u5e02"

.field public static final ZH_TIANJIN:Ljava/lang/String; = "\u5929\u6d25"

.field public static final ZH_XIAN:Ljava/lang/String; = "\u53bf"

.field private static sInstance:Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;


# instance fields
.field private mInitialized:Z

.field private myKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "687474703a2f2f7765626170692e776561746865726f6c2e6434a03a"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->URL_DEV:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->mInitialized:Z

    return-void
.end method

.method public static declared-synchronized self()Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;
    .locals 3

    const-class v0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->sInstance:Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 86
    monitor-exit v0

    return-object v1

    .line 88
    :cond_0
    :try_start_1
    const-class v1, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    :try_start_2
    sget-object v2, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->sInstance:Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    if-nez v2, :cond_1

    .line 90
    new-instance v2, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    invoke-direct {v2}, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;-><init>()V

    sput-object v2, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->sInstance:Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;

    .line 92
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    sget-object v1, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->sInstance:Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v2

    .line 92
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


# virtual methods
.method public appendPartnerCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&partner=oem_zte2020"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAccuEndpoint()Ljava/lang/String;
    .locals 0

    .line 131
    sget-object p0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->URL_DEV:Ljava/lang/String;

    return-object p0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->myKey:Ljava/lang/String;

    return-object p0
.end method

.method public getDailyForecastDay()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getHourlyForecastHour()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/zte/mifavor/weather/sdk/logger/LibLog;)V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->mInitialized:Z

    const-string v1, "WeatherConfig"

    if-eqz v0, :cond_0

    .line 103
    const-string p0, "already init"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_0
    const-string v0, "init"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->self()Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->init(Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;)V

    if-eqz p2, :cond_1

    .line 109
    :try_start_0
    invoke-static {p1, p2}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->attachSDK(Landroid/content/Context;Lcom/zte/mifavor/weather/sdk/logger/LibLog;)Lcom/zte/mifavor/weather/sdk/WeatherIWT;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_1
    new-instance p2, Lcom/zte/mifavor/weather/sdk/logger/DefaultLibLog;

    invoke-direct {p2}, Lcom/zte/mifavor/weather/sdk/logger/DefaultLibLog;-><init>()V

    invoke-static {p1, p2}, Lcom/zte/mifavor/weather/sdk/WeatherIWT;->attachSDK(Landroid/content/Context;Lcom/zte/mifavor/weather/sdk/logger/LibLog;)Lcom/zte/mifavor/weather/sdk/WeatherIWT;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_0
    const-string p1, "Q1drOFRrTTg="

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->myKey:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/zte/mifavor/weather/sdk/api/WeatherConfig;->mInitialized:Z

    :goto_1
    return-void
.end method
