.class public Lcom/zte/mifavor/weather/sdk/api/RestCore;
.super Ljava/lang/Object;
.source "RestCore.java"


# static fields
.field protected static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yyyy\'-\'MM\'-\'dd\'T\'HH\':\'mm\':\'ss"

.field protected static final DEFAULT_TIMEOUT:J = 0x3a98L

.field public static final INVALID_APPLICATION_CODE:I = -0x1

.field public static final INVALID_HTTP_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .line 33
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;-><init>()V

    .line 34
    sget-object v1, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;->BODY:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->setLevel(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Level;)Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;

    .line 35
    new-instance v1, Lcom/zte/mifavor/weather/sdk/api/RestCore$1;

    invoke-direct {v1}, Lcom/zte/mifavor/weather/sdk/api/RestCore$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;->addLogger(Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;)Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;

    .line 43
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method protected static createHttpClient(JZ)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 20
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 21
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v1, 0xa

    .line 22
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 23
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 24
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 25
    sget-boolean p0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->DEBUG_STATS:Z

    if-eqz p0, :cond_0

    .line 26
    sget-object p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->FACTORY:Lokhttp3/EventListener$Factory;

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    return-object v0
.end method
