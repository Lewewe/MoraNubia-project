.class public Lcn/nubia/accountsdk/service/JumpZteAccountDetailAsyncRequest;
.super Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;
.source "JumpZteAccountDetailAsyncRequest.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/accountsdk/service/JumpZteAccountDetailAsyncRequest;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcn/nubia/accountsdk/service/ZteServiceAsyncRequest;->cancel()V

    return-void
.end method

.method public processRequest(Lorg/zx/AuthComp/IMyService;)V
    .locals 2

    .line 28
    :try_start_0
    invoke-interface {p1}, Lorg/zx/AuthComp/IMyService;->startAccountManagerActivity()Landroid/os/Bundle;

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
    iget-object p0, p0, Lcn/nubia/accountsdk/service/JumpZteAccountDetailAsyncRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
