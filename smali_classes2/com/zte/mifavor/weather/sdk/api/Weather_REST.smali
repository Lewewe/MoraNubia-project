.class public Lcom/zte/mifavor/weather/sdk/api/Weather_REST;
.super Lcom/zte/mifavor/weather/sdk/api/RestCore;
.source "Weather_REST.java"


# static fields
.field private static final DEFAULT_READ_TIMEOUT:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "Weather_REST"

.field private static sInstance:Lcom/zte/mifavor/weather/sdk/api/Weather_REST;


# instance fields
.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mWeatherConfig:Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/RestCore;-><init>()V

    .line 26
    const-string p0, "Weather_REST"

    const-string v0, "constructor"

    invoke-static {p0, v0}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static self()Lcom/zte/mifavor/weather/sdk/api/Weather_REST;
    .locals 2

    .line 16
    const-class v0, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->sInstance:Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    invoke-direct {v1}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;-><init>()V

    sput-object v1, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->sInstance:Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    .line 21
    :cond_0
    sget-object v1, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->sInstance:Lcom/zte/mifavor/weather/sdk/api/Weather_REST;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->mWeatherConfig:Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;

    invoke-interface {p0}, Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;->getAccuEndpoint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 35
    new-instance p0, Lcom/google/gson/GsonBuilder;

    invoke-direct {p0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v0, "yyyy\'-\'MM\'-\'dd\'T\'HH\':\'mm\':\'ss"

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getHttpClient()Lokhttp3/OkHttpClient;
    .locals 3

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    const/4 v2, 0x1

    .line 40
    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->createHttpClient(JZ)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->addLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->mOkHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;)V
    .locals 2

    .line 30
    const-string v0, "Weather_REST"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/Weather_REST;->mWeatherConfig:Lcom/zte/mifavor/weather/sdk/api/IWeatherConfig;

    return-void
.end method
