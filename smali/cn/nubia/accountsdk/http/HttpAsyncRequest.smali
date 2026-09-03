.class public abstract Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.super Landroid/os/AsyncTask;
.source "HttpAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurLooper:Landroid/os/Looper;

.field private final mListener:Lcn/nubia/accountsdk/http/NetResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/accountsdk/http/NetResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->mListener:Lcn/nubia/accountsdk/http/NetResponseListener;

    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->mCurLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/accountsdk/http/HttpAsyncRequest;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->notifyListener(Ljava/lang/Object;)V

    return-void
.end method

.method private deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->hasLooper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->mCurLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    new-instance v1, Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;-><init>(Lcn/nubia/accountsdk/http/HttpAsyncRequest;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->notifyListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private hasLooper()Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->mCurLooper:Landroid/os/Looper;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyListener(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->mListener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->processRequest()Ljava/lang/Object;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract processRequest()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
