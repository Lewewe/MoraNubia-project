.class public Lcom/zte/aigc/common/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"


# instance fields
.field private final mErrorCode:Lcom/zte/aigc/common/ErrorCode;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/zte/aigc/common/ErrorCode;->codeOf(I)Lcom/zte/aigc/common/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aigc/common/RequestException;->mErrorCode:Lcom/zte/aigc/common/ErrorCode;

    return-void
.end method

.method public constructor <init>(Lcom/zte/aigc/common/ErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/zte/aigc/common/ErrorCode;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/zte/aigc/common/RequestException;->mErrorCode:Lcom/zte/aigc/common/ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.volley.NoConnectionError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object p1, Lcom/zte/aigc/common/ErrorCode;->NETWORK_UNAVAILABLE:Lcom/zte/aigc/common/ErrorCode;

    iput-object p1, p0, Lcom/zte/aigc/common/RequestException;->mErrorCode:Lcom/zte/aigc/common/ErrorCode;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.volley.NetworkError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    sget-object p1, Lcom/zte/aigc/common/ErrorCode;->NETWORK_ERROR:Lcom/zte/aigc/common/ErrorCode;

    iput-object p1, p0, Lcom/zte/aigc/common/RequestException;->mErrorCode:Lcom/zte/aigc/common/ErrorCode;

    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lcom/zte/aigc/common/ErrorCode;->UNKNOWN_ERROR:Lcom/zte/aigc/common/ErrorCode;

    iput-object p1, p0, Lcom/zte/aigc/common/RequestException;->mErrorCode:Lcom/zte/aigc/common/ErrorCode;

    :goto_0
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/zte/aigc/common/ErrorCode;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/aigc/common/RequestException;->mErrorCode:Lcom/zte/aigc/common/ErrorCode;

    return-object p0
.end method
