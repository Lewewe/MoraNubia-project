.class abstract Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;
.super Landroid/os/AsyncTask;
.source "NetApis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/api/NetApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HttpAsyncTask"
.end annotation

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

.field private final mResultListener:Lcn/nubia/oauthsdk/api/NetResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/oauthsdk/api/NetApis;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/oauthsdk/api/NetResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->this$0:Lcn/nubia/oauthsdk/api/NetApis;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 175
    iput-object p2, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->mResultListener:Lcn/nubia/oauthsdk/api/NetResponseListener;

    .line 176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->mCurLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->notifyListener(Ljava/lang/Object;)V

    return-void
.end method

.method private handResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->hasLooper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->mCurLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    new-instance v1, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;-><init>(Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private hasLooper()Z
    .locals 0

    .line 206
    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->mCurLooper:Landroid/os/Looper;

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

    .line 210
    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->mResultListener:Lcn/nubia/oauthsdk/api/NetResponseListener;

    if-eqz p0, :cond_0

    .line 211
    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/api/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->processRequest()Ljava/lang/Object;

    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->handResult(Ljava/lang/Object;)V

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
