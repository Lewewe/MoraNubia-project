.class public Lcn/nubia/redmagickyi/network/okhttp/Url;
.super Ljava/lang/Object;
.source "Url.java"


# static fields
.field public static final METHOD_GET:I = 0x1

.field public static final METHOD_POST:I = 0x2


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:I

.field private methodGetParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private methodPostJson:Ljava/lang/String;

.field private methodPostParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addGetParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodGetParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodGetParams:Ljava/util/Map;

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodGetParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->headers:Ljava/util/Map;

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addPostJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodPostJson:Ljava/lang/String;

    return-object p0
.end method

.method public addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodPostParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodPostParams:Ljava/util/Map;

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodPostParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public get()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->method:I

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getMethod()I
    .locals 0

    .line 96
    iget p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->method:I

    return p0
.end method

.method public getMethodGetParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodGetParams:Ljava/util/Map;

    return-object p0
.end method

.method public getMethodPostJson()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodPostJson:Ljava/lang/String;

    return-object p0
.end method

.method public getMethodPostParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->methodPostParams:Ljava/util/Map;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string p0, ""

    return-object p0

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->url:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->query:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->query:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public post()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 1

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->method:I

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/Url;->query:Ljava/lang/String;

    return-object p0
.end method
