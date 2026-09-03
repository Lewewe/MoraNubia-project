.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->ssOAuthUserInfoFuse(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ssOAuthUserInfoFuse error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$500(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->loginOrRegister(Landroid/app/Activity;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 3

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ssOAuthUserInfoFuse oAuthResponseFuse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 475
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 476
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 477
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 478
    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssOAuthUserInfoFuse zuid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$300(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthResponse;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$500(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->loginOrRegister(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
