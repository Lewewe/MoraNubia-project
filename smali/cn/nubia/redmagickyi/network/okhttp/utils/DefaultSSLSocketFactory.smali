.class public Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "DefaultSSLSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$TrustAllHostnameVerifier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSSLSocketFactory"

.field private static instance:Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;

.field private static trustStore:Ljava/security/KeyStore;


# instance fields
.field private sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->trustStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 45
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 36
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 69
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory$1;-><init>(Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;)V

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getSocketFactory()Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;
    .locals 2

    .line 52
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->instance:Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->instance:Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 56
    sget-object v1, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->instance:Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/DefaultSSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 150
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 155
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method
