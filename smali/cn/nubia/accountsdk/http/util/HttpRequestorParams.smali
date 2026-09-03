.class public Lcn/nubia/accountsdk/http/util/HttpRequestorParams;
.super Ljava/lang/Object;
.source "HttpRequestorParams.java"


# instance fields
.field private mConnectTimeout:I

.field private mReadTimeout:I

.field private mRetryTimes:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    iput v0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mConnectTimeout:I

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mReadTimeout:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mRetryTimes:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    iput v0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mConnectTimeout:I

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mReadTimeout:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mRetryTimes:I

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mConnectTimeout:I

    .line 16
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mReadTimeout:I

    .line 17
    iput p3, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mRetryTimes:I

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mConnectTimeout:I

    return p0
.end method

.method public getReadTimeout()I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mReadTimeout:I

    return p0
.end method

.method public getRetryTimes()I
    .locals 0

    .line 37
    iget p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mRetryTimes:I

    return p0
.end method

.method public setConnectTimeout(I)V
    .locals 3

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mConnectTimeout:I

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 3

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mReadTimeout:I

    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mRetryTimes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectTimeout:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | readTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | retryTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->mRetryTimes:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
