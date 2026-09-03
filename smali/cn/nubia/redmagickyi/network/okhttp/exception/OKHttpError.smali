.class public Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;
.super Ljava/lang/Exception;
.source "OKHttpError.java"


# static fields
.field public static final TYPE_CANCEL_BY_USER:I = 0x7

.field public static final TYPE_ERROR:I = 0x5

.field public static final TYPE_NO_CONNECTION:I = 0x1

.field public static final TYPE_NO_NETWORK:I = 0x6

.field public static final TYPE_PARSE:I = 0x4

.field public static final TYPE_TIMEOUT:I = 0x3

.field public static final TYPE_URL_UNREACHABLE:I = 0x2


# instance fields
.field public mErrorType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "cancel by user"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->initType()V

    return-void
.end method

.method private initType()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    goto :goto_0

    .line 38
    :cond_1
    instance-of v1, v0, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    goto :goto_0

    .line 40
    :cond_2
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    .line 41
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    goto :goto_0

    .line 42
    :cond_3
    instance-of v1, v0, Lcom/google/gson/JsonSyntaxException;

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    .line 43
    iput v2, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    goto :goto_0

    .line 44
    :cond_4
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 45
    iput v2, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    goto :goto_0

    .line 46
    :cond_5
    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 52
    iget p0, p0, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->mErrorType:I

    return p0
.end method
