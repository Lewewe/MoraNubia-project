.class Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;
.super Lcn/nubia/oauthsdk/OAuthCallBackAdapter;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallBackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    .line 882
    invoke-direct {p0, p3}, Lcn/nubia/oauthsdk/OAuthCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    .line 886
    invoke-direct {p0, p2}, Lcn/nubia/oauthsdk/OAuthCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    return-void
.end method


# virtual methods
.method public onCode(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter$1;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 913
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    .line 892
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$1000(Lcn/nubia/oauthsdk/OAuthManagerProxy;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 898
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$1000(Lcn/nubia/oauthsdk/OAuthManagerProxy;)V

    return-void
.end method

.method public onToken(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 903
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$CallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    return-void
.end method
