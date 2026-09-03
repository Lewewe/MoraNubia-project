.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;
.super Lcn/nubia/oauthsdk/OAuthCallBackAdapter;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserInfoCallBackAdapter"
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

    .line 1017
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    .line 1018
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

    .line 1021
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    .line 1022
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

    .line 1040
    const-string v0, "oauth_access_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    const-string v2, "userId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserInfoCallBackAdapter getSsoauthCodeNubia oauth_access_token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInfoCallBackAdapter getSsoauthCodeNubia userId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1044
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 1045
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 1046
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

    .line 1026
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    .line 1027
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

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

    .line 1031
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 1032
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

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

    .line 1036
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$UserInfoCallBackAdapter;->mOAuthBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    return-void
.end method
