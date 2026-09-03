.class Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;
.super Lcn/nubia/oauthsdk/OAuthCallBackAdapter;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserInfoCallBackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    .line 833
    invoke-direct {p0, p3}, Lcn/nubia/oauthsdk/OAuthCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    .line 837
    invoke-direct {p0, p2}, Lcn/nubia/oauthsdk/OAuthCallBackAdapter;-><init>(Lcn/nubia/oauthsdk/response/OAuthCallBack;)V

    return-void
.end method


# virtual methods
.method public onCode(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    const-string v0, "oauth_access_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    const-string v2, "userId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserInfoCallBackAdapter getSsoauthCodeNubia oauth_access_token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInfoCallBackAdapter getSsoauthCodeNubia userId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 863
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 864
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 865
    new-instance p1, Lcn/nubia/oauthsdk/response/OAuthResponse;

    invoke-direct {p1, p0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    return-void
.end method

.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    .line 843
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

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

    .line 848
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 849
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

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

    .line 854
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$UserInfoCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    return-void
.end method
