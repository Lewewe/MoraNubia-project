.class Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;
    }
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private responseBody:Lokhttp3/ResponseBody;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/ResponseBody;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->url:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 24
    sget-object p2, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressInterceptor;->LISTENER_MAP:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 15
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->listeners:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody$ProgressSource;-><init>(Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 43
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/progress/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object p0
.end method
