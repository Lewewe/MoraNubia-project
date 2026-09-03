.class public Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;
.super Lcn/nubia/accountsdk/service/ServiceAsyncRequest;
.source "CheckPasswordAsyncRequest.java"


# instance fields
.field private mListener:Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

.field private final mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;-><init>()V

    .line 14
    iput-object p2, p0, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

    .line 15
    iput-object p1, p0, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;->mPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 9
    invoke-super {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->cancel()V

    return-void
.end method

.method public processRequest(Lcn/nubia/accountsdk/aidl/INBAccountService;)V
    .locals 1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;->mPassword:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

    invoke-interface {p1, v0, p0}, Lcn/nubia/accountsdk/aidl/INBAccountService;->checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/nubia/accountsdk/service/CheckPasswordAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

    return-void
.end method
