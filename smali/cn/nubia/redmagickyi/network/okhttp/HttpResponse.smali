.class public Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private body:Ljava/lang/String;

.field private bodyBytes:[B

.field private code:Ljava/lang/Integer;

.field private response:Lokhttp3/Response;

.field private serverTimeAtMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lokhttp3/Response;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->response:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->response:Lokhttp3/Response;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->body:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 29
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->body:Ljava/lang/String;

    .line 33
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 35
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->body:Ljava/lang/String;

    return-object p0
.end method

.method public getBodyBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->response:Lokhttp3/Response;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->bodyBytes:[B

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->bodyBytes:[B

    .line 44
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 46
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->bodyBytes:[B

    return-object p0
.end method

.method public getCode()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->code:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->code:Ljava/lang/Integer;

    .line 24
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->code:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getServerTimeAtMillis()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->response:Lokhttp3/Response;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->serverTimeAtMillis:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->serverTimeAtMillis:Ljava/lang/Long;

    .line 57
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->serverTimeAtMillis:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSuccessful()Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->response:Lokhttp3/Response;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
