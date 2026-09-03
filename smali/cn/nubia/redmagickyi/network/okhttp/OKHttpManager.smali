.class public final Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;
.super Ljava/lang/Object;
.source "OKHttpManager.java"


# static fields
.field public static final DEFAULT_SECONDS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "OKHttpManager"

.field public static enableHttpConnection:Z = true

.field private static mInstance:Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;


# instance fields
.field private mBuilder:Lokhttp3/OkHttpClient$Builder;

.field private mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

.field private mContext:Landroid/content/Context;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->buildInfo()V

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null okhttp config, did you forget initialize the OKHttpManager?"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    return-object p0
.end method

.method private buildInfo()V
    .locals 10

    .line 51
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getConnectTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0xa

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getConnectTimeout()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 53
    :goto_0
    iget-object v6, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getReadTimeout()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    iget-object v6, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getReadTimeout()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v4

    .line 54
    :goto_1
    iget-object v8, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getWriteTimeout()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_2

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getWriteTimeout()J

    move-result-wide v4

    .line 56
    :cond_2
    iget-object v8, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v9}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->getSocketFactory()Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;

    move-result-object v1

    new-instance v4, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$1;-><init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;)V

    invoke-virtual {v0, v1, v4}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;

    iget-object v4, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getHostNameWhiteList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getCacheTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$2;-><init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 90
    :cond_3
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 91
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getLogLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getLogLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 92
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getCache()Lokhttp3/Cache;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getCache()Lokhttp3/Cache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 98
    :cond_5
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    .line 99
    invoke-virtual {v0}, Lokhttp3/Dispatcher;->getMaxRequests()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 100
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getConfig()Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;
    .locals 1

    .line 144
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mConfig:Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    return-object v0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;
    .locals 1

    .line 106
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mInstance:Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    return-object v0
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 148
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static init(Landroid/content/Context;ZZ[Ljava/lang/String;)V
    .locals 3

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "http_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    new-instance p0, Lokhttp3/Cache;

    const-wide/32 v1, 0x6400000

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 131
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 132
    sget-object p2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    :cond_0
    sget-object p2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_0
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setLogLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p2

    const-wide/16 v0, 0xa

    .line 133
    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setConnectTimeout(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p2

    .line 134
    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setReadTimeout(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setWriteTimeout(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p2

    const-wide/16 v0, 0x0

    .line 136
    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setCacheTime(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p2

    .line 137
    invoke-virtual {p2, p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setCache(Lokhttp3/Cache;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p0

    .line 138
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->setHostNameWhiteList([Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->build()Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    move-result-object p0

    .line 140
    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->init(ZLcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;)V

    return-void
.end method

.method public static init(ZLcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;)V
    .locals 1

    .line 115
    sput-boolean p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->enableHttpConnection:Z

    .line 116
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;-><init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;)V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mInstance:Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    if-eqz p0, :cond_0

    .line 117
    const-string p0, "success"

    goto :goto_0

    :cond_0
    const-string p0, "failed"

    :goto_0
    const-string p1, "init okhttp envirement "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OKHttpManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearCached()V
    .locals 0

    .line 153
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Cache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
