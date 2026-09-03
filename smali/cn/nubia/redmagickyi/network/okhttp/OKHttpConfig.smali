.class public Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;
.super Ljava/lang/Object;
.source "OKHttpConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;
    }
.end annotation


# instance fields
.field private hostNameWhiteList:[Ljava/lang/String;

.field private mCache:Lokhttp3/Cache;

.field private mCacheTime:J

.field private mConnectTimeout:J

.field private mLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private mReadTimeout:J

.field private mWriteTimeout:J


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$000(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mConnectTimeout:J

    .line 18
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$100(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mWriteTimeout:J

    .line 19
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$200(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mReadTimeout:J

    .line 20
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$300(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mCacheTime:J

    .line 21
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$400(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)Lokhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mCache:Lokhttp3/Cache;

    .line 22
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$500(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 23
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;->access$600(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->hostNameWhiteList:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;-><init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getCache()Lokhttp3/Cache;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mCache:Lokhttp3/Cache;

    return-object p0
.end method

.method public getCacheTime()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mCacheTime:J

    return-wide v0
.end method

.method public getConnectTimeout()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mConnectTimeout:J

    return-wide v0
.end method

.method public getHostNameWhiteList()[Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->hostNameWhiteList:[Ljava/lang/String;

    return-object p0
.end method

.method public getLogLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mLogLevel:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public getReadTimeout()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mReadTimeout:J

    return-wide v0
.end method

.method public getWriteTimeout()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->mWriteTimeout:J

    return-wide v0
.end method
