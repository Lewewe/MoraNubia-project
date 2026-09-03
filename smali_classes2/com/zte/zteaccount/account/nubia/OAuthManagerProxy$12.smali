.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->requestOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;)V
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

    .line 688
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 6

    const-string v0, "ssOAuthCodeFuse  requestOAuth processRequest oauth_access_token:"

    .line 690
    const-string v1, "ssOAuthCodeFuse  requestOAuth processRequest:"

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v1

    .line 692
    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$300(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v2

    .line 693
    invoke-static {v1}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 694
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    .line 697
    :try_start_0
    invoke-interface {p1, v5}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 698
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 699
    invoke-interface {p1, v3, v4}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 700
    const-string p1, "oauth_access_token"

    const-string v3, ""

    invoke-virtual {v4, p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 703
    invoke-static {v1}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 704
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->val$context:Landroid/content/Context;

    invoke-static {v0, v3, v2, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$400(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    .line 705
    const-string p1, "ssOAuthCodeFuse  requestOAuth processRequest startApkLogin:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    return-void

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->val$context:Landroid/content/Context;

    invoke-static {p1, v4, v2, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$800(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$12;->val$context:Landroid/content/Context;

    invoke-static {p1, p0, v1, v2}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$900(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/OAuthInfo;Lcn/nubia/oauthsdk/response/OAuthResponse;)V

    :goto_0
    return-void
.end method
