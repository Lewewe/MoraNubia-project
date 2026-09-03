.class abstract Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;
.super Landroid/os/AsyncTask;
.source "ZteServiceAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/zx/AuthComp/IMyService;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Lorg/zx/AuthComp/IMyService;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->doInBackground([Lorg/zx/AuthComp/IMyService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Lorg/zx/AuthComp/IMyService;)Ljava/lang/Void;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    :try_start_0
    const-string v0, "service api processing now!"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->processRequest(Lorg/zx/AuthComp/IMyService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract processRequest(Lorg/zx/AuthComp/IMyService;)V
.end method
