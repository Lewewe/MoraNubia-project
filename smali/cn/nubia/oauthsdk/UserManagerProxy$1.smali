.class Lcn/nubia/oauthsdk/UserManagerProxy$1;
.super Ljava/lang/Object;
.source "UserManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/api/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/UserManagerProxy;->openInfo(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;)V
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

    .line 36
    iput-object p1, p0, Lcn/nubia/oauthsdk/UserManagerProxy$1;->this$0:Lcn/nubia/oauthsdk/UserManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/UserManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/oauthsdk/api/NetResponse;)V
    .locals 2

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, "network_error"

    invoke-direct {p1, v0, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p0, v1}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 54
    :cond_1
    :try_start_0
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 55
    const-string v1, "open_id"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 57
    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 59
    const-string v1, "avatar"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setAvatar(Ljava/lang/String;)V

    .line 61
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setGender(Ljava/lang/String;)V

    .line 63
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setLocation(Ljava/lang/String;)V

    .line 65
    const-string v1, "birthday"

    invoke-virtual {p1, v1}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcn/nubia/oauthsdk/UserManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, "json exception"

    invoke-direct {p1, v0, v0}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcn/nubia/oauthsdk/UserManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthUseInfoCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcn/nubia/oauthsdk/api/NetResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/UserManagerProxy$1;->onResult(Lcn/nubia/oauthsdk/api/NetResponse;)V

    return-void
.end method
