.class Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$2;
.super Ljava/lang/Object;
.source "OKHttpManager.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->buildInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$2;->this$0:Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Pragma"

    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager$2;->this$0:Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;->access$000(Lcn/nubia/redmagickyi/network/okhttp/OKHttpManager;)Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/OKHttpConfig;->getCacheTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "max-age=%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0, p0}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
