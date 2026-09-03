.class Lcn/nubia/oauthsdk/OAuthManagerProxy$8;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->getOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$8;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 2

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthUserInfoFuse error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 464
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$8;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 469
    iget-object v0, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 471
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 472
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 473
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 474
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOAuthUserInfoFuse zteUid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 476
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$8;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$8;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    :goto_0
    return-void
.end method
