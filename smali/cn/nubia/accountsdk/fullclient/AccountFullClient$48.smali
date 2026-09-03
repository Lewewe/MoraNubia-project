.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfoFuse(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field final synthetic val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1460
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1466
    :cond_0
    new-instance v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    invoke-direct {v0}, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;-><init>()V

    .line 1467
    iput-object p1, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    .line 1468
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    if-eqz p0, :cond_1

    .line 1469
    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V

    :cond_1
    return-void

    .line 1461
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 1462
    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V

    :cond_3
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1475
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$48;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    if-eqz p0, :cond_0

    .line 1476
    invoke-interface {p0, p1, p2}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
