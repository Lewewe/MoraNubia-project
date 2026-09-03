.class public abstract Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.super Landroid/os/AsyncTask;
.source "ServiceAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcn/nubia/binder/IBinderService;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, [Lcn/nubia/binder/IBinderService;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;->doInBackground([Lcn/nubia/binder/IBinderService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Lcn/nubia/binder/IBinderService;)Ljava/lang/Void;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    const-string v0, "ServiceAsyncRequest"

    const-string v1, "service api processing now!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 14
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;->processRequest(Lcn/nubia/binder/IBinderService;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract processRequest(Lcn/nubia/binder/IBinderService;)V
.end method
