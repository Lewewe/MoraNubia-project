.class Lcn/nubia/oauthsdk/UserManagerProxy$2;
.super Ljava/lang/Object;
.source "UserManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/api/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/UserManagerProxy;->userInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/oauthsdk/api/NetResponseListener<",
        "Lcn/nubia/oauthsdk/api/NetResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/UserManagerProxy;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/UserManagerProxy;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserManagerProxy$2;->this$0:Lcn/nubia/oauthsdk/UserManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/UserManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/oauthsdk/api/NetResponse;)V
    .locals 2

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, "network_error"

    invoke-direct {p1, v0, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p0, v1}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 98
    :cond_1
    :try_start_0
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 99
    const-string v1, "openId"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 101
    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 103
    const-string v1, "avatar"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 105
    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 107
    const-string v1, "mobile"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcn/nubia/oauthsdk/UserManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, "json exception"

    invoke-direct {p1, v0, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcn/nubia/oauthsdk/api/NetResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/UserManagerProxy$2;->onResult(Lcn/nubia/oauthsdk/api/NetResponse;)V

    return-void
.end method
