.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;
.super Lcn/nubia/oauthsdk/OAuthCallBackAdapter;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallBackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;


# direct methods
.method public constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 982
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    .line 983
    invoke-direct {p0, p3}, Lcn/nubia/oauthsdk/OAuthCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 986
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    .line 987
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

    .line 1005
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1009
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

    .line 991
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    .line 992
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$1000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 997
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$1000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)V

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

    .line 1001
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    return-void
.end method
