.class Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;
.super Ljava/lang/Object;
.source "ClientHttpRequestor.java"


# instance fields
.field private final mAuthId:Ljava/lang/String;

.field private final mAuthIv:Ljava/lang/String;

.field private final mAuthKey:Ljava/lang/String;

.field private final mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

.field private final mParams:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

.field private final mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;


# direct methods
.method private constructor <init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Lcn/nubia/accountsdk/http/util/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mParams:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    .line 38
    new-instance v0, Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-direct {v0, p1}, Lcn/nubia/accountsdk/http/util/HttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;)V

    iput-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    .line 39
    iput-object p3, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthId:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 47
    new-instance v2, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl;

    invoke-direct {v2}, Lcn/nubia/accountsdk/http/util/AesFormatDataImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Lcn/nubia/accountsdk/http/util/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/nubia/accountsdk/http/util/FormatData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p3

    .line 27
    invoke-direct/range {v0 .. v5}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Ljava/lang/String;Lcn/nubia/accountsdk/http/util/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcn/nubia/accountsdk/http/util/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 32
    new-instance v1, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-direct {v1}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Lcn/nubia/accountsdk/http/util/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;-><init>(Lcn/nubia/accountsdk/http/util/HttpRequestorParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getUrlWithZteHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 166
    invoke-static {}, Lcn/nubia/accountsdk/http/util/HttpApis;->getServerEnv()I

    move-result p0

    const-string v0, "https://acc-test.ztems.com"

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    const-string v1, "https://dc.ztems.com"

    if-eq p0, v0, :cond_0

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v1, v0, :cond_3

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private process(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/nubia/accountsdk/http/util/HttpRequestorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 190
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    goto :goto_0

    .line 193
    :cond_0
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 70
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 72
    :cond_0
    const-string v0, "auth_token_id"

    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2}, Lcn/nubia/accountsdk/http/util/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mParams:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-virtual {v1}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->getRetryTimes()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    iget-object p1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcn/nubia/accountsdk/http/util/FormatData;->decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retrytimes="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public doGetImage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 93
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 95
    :cond_0
    const-string v0, "auth_token_id"

    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2}, Lcn/nubia/accountsdk/http/util/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mParams:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->getRetryTimes()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doGetImage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    .line 99
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrytimes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    invoke-virtual {v1, p1, p2, p3}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->doGetImage(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)[B

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public doPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 114
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 120
    :cond_0
    const-string v0, "auth_token_id"

    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2}, Lcn/nubia/accountsdk/http/util/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->process(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mParams:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-virtual {v1}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->getRetryTimes()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    iget-object p1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcn/nubia/accountsdk/http/util/FormatData;->decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retrytimes="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->process(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public doZtePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->getUrlWithZteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->process(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mParams:Lcn/nubia/accountsdk/http/util/HttpRequestorParams;

    invoke-virtual {v1}, Lcn/nubia/accountsdk/http/util/HttpRequestorParams;->getRetryTimes()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/accountsdk/http/util/HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retrytimes="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->process(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcn/nubia/accountsdk/http/util/HttpRequestorResult;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public genGetParmUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 201
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 203
    :cond_0
    const-string v0, "auth_token_id"

    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->getAuthId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->getFormatData()Lcn/nubia/accountsdk/http/util/FormatData;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->getAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->getAuthIv()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lcn/nubia/accountsdk/http/util/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->getRequestor()Lcn/nubia/accountsdk/http/util/HttpRequestor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/accountsdk/http/util/HttpRequestor;->genGetParmUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getAuthId()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthId:Ljava/lang/String;

    return-object p0
.end method

.method getAuthIv()Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthIv:Ljava/lang/String;

    return-object p0
.end method

.method getAuthKey()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mAuthKey:Ljava/lang/String;

    return-object p0
.end method

.method getFormatData()Lcn/nubia/accountsdk/http/util/FormatData;
    .locals 0

    .line 225
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mFormatData:Lcn/nubia/accountsdk/http/util/FormatData;

    return-object p0
.end method

.method getRequestor()Lcn/nubia/accountsdk/http/util/HttpRequestor;
    .locals 0

    .line 221
    iget-object p0, p0, Lcn/nubia/accountsdk/http/util/ClientHttpRequestor;->mRequestor:Lcn/nubia/accountsdk/http/util/HttpRequestor;

    return-object p0
.end method
