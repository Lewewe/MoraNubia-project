.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
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

    .line 285
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 7

    .line 287
    const-string v0, ""

    .line 0
    const-string v1, "getOAuthUserInfo getSsoauthCodeNubia userId:"

    const-string v2, "getOAuthUserInfo getSsoauthCodeNubia oauth_access_token:"

    .line 287
    const-string v3, "getOAuthUserInfo getSsoauthCodeNubia processRequest:"

    invoke-static {v3}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v3}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v3

    .line 289
    iget-object v4, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v4}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$300(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 290
    invoke-static {v3}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 291
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 294
    :try_start_0
    invoke-interface {p1, v5}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 296
    invoke-interface {p1, v3, v4}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 297
    const-string p1, "oauth_access_token"

    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    const-string v3, "userId"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, "-1"

    const-string v1, "not login"

    invoke-direct {p1, v0, v1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    move-object v0, v6

    check-cast v0, Lcn/nubia/oauthsdk/UserInfo;

    invoke-interface {p1, v6}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    return-void

    .line 307
    :cond_0
    new-instance p1, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 308
    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {v0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthUserInfo errror:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 314
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$5;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    move-object p1, v6

    check-cast p1, Lcn/nubia/oauthsdk/UserInfo;

    invoke-interface {p0, v6}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    :goto_0
    return-void
.end method
