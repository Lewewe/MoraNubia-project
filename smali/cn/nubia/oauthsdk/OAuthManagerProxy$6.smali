.class Lcn/nubia/oauthsdk/OAuthManagerProxy$6;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->ssOAuthUserInfo(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 7

    .line 378
    const-string v0, ""

    .line 0
    const-string v1, "ssOAuthUserInfo getSsoauthCodeNubia userId:"

    const-string v2, "ssOAuthUserInfo getSsoauthCodeNubia oauth_access_token:"

    .line 378
    const-string v3, "ssOAuthUserInfo  requestOAuth processRequest:"

    invoke-static {v3}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v3

    .line 380
    iget-object v4, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v4}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 381
    invoke-static {v3}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v4

    .line 382
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    .line 384
    :try_start_0
    invoke-interface {p1, v6}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 385
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 386
    invoke-interface {p1, v4, v5}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 387
    const-string p1, "oauth_access_token"

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    const-string v4, "userId"

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    invoke-static {v3}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 393
    const-string v0, "ssOAuthUserInfo startApkLogin:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$400(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void

    .line 397
    :cond_0
    new-instance p1, Lcn/nubia/oauthsdk/UserInfo;

    invoke-direct {p1}, Lcn/nubia/oauthsdk/UserInfo;-><init>()V

    .line 398
    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/UserInfo;->setOpenId(Ljava/lang/String;)V

    .line 399
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$6;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
