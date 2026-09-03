.class public Lcn/nubia/accountsdk/service/LoginOrRegisterZteAsyncRequest;
.super Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;
.source "LoginOrRegisterZteAsyncRequest.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/accountsdk/service/LoginOrRegisterZteAsyncRequest;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->cancel()V

    return-void
.end method

.method public processRequest(Lorg/zx/AuthComp/IMyService;)V
    .locals 2

    .line 28
    :try_start_0
    invoke-interface {p1}, Lorg/zx/AuthComp/IMyService;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object p1

    .line 29
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 30
    const-string v0, "invoker"

    sget-object v1, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object p0, p0, Lcn/nubia/accountsdk/service/LoginOrRegisterZteAsyncRequest;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
