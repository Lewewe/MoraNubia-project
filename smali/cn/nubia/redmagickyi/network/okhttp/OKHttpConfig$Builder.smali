.class public Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
.super Ljava/lang/Object;
.source "OKHttpConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lokhttp3/Cache;

.field private cacheTime:J

.field private connectTimeout:J

.field private hostNameWhiteList:[Ljava/lang/String;

.field private level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private readTimeout:J

.field private writeTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->connectTimeout:J

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->writeTimeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->readTimeout:J

    return-wide v0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->cacheTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)Lokhttp3/Cache;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->cache:Lokhttp3/Cache;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)[Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->hostNameWhiteList:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;
    .locals 2

    .line 137
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;-><init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$1;)V

    return-object v0
.end method

.method public getHostNameWhiteList()[Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->hostNameWhiteList:[Ljava/lang/String;

    return-object p0
.end method

.method public setCache(Lokhttp3/Cache;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->cache:Lokhttp3/Cache;

    return-object p0
.end method

.method public setCacheTime(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 103
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->cacheTime:J

    return-object p0
.end method

.method public setConnectTimeout(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 70
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->connectTimeout:J

    return-object p0
.end method

.method public setHostNameWhiteList([Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->hostNameWhiteList:[Ljava/lang/String;

    return-object p0
.end method

.method public setLogLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public setReadTimeout(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 81
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->readTimeout:J

    return-object p0
.end method

.method public setWriteTimeout(J)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    .locals 0

    .line 92
    iput-wide p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->writeTimeout:J

    return-object p0
.end method
