.class abstract Lcn/nubia/accountsdk/service/ServiceAsyncRequest;
.super Landroid/os/AsyncTask;
.source "ServiceAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcn/nubia/accountsdk/aidl/INBAccountService;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, [Lcn/nubia/accountsdk/aidl/INBAccountService;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->doInBackground([Lcn/nubia/accountsdk/aidl/INBAccountService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Lcn/nubia/accountsdk/aidl/INBAccountService;)Ljava/lang/Void;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    :try_start_0
    const-string v0, "service api processing now!"

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->processRequest(Lcn/nubia/accountsdk/aidl/INBAccountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract processRequest(Lcn/nubia/accountsdk/aidl/INBAccountService;)V
.end method

.method protected abstract removeListener()V
.end method
