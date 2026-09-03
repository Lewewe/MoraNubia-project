.class public Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustAllHostnameVerifier"
.end annotation


# instance fields
.field private hostNameWhiteList:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;->hostNameWhiteList:[Ljava/lang/String;

    return-void
.end method

.method private hostnameMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 218
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 220
    :cond_2
    :goto_0
    const-string v0, "*."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 221
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_3

    const/4 p0, 0x1

    :cond_3
    return p0

    .line 224
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_5
    :goto_1
    return p0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;->hostNameWhiteList:[Ljava/lang/String;

    if-eqz p2, :cond_1

    move p2, v0

    .line 199
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;->hostNameWhiteList:[Ljava/lang/String;

    array-length v2, v1

    if-ge p2, v2, :cond_1

    .line 201
    aget-object v1, v1, p2

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;->hostnameMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Request Failed, Unknown Hostname: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
