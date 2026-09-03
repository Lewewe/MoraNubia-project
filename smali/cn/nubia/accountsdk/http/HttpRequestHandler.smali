.class public Lcn/nubia/accountsdk/http/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/accountsdk/http/HttpRequestHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isNetWorkAvailable()Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/accountsdk/http/HttpRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/accountsdk/http/HttpAsyncRequest<",
            "*>;)Z"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->isNetWorkAvailable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 18
    new-array v1, p0, [Ljava/lang/Void;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Void;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p0

    :cond_0
    return v0
.end method
