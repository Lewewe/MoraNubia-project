.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->requestWebssOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
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

    .line 731
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$300(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v1

    .line 735
    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v2

    .line 736
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    .line 739
    :try_start_0
    invoke-interface {p1, v4}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 740
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 741
    invoke-interface {p1, v2, v3}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 742
    const-string p1, "oauth_access_token"

    const-string v2, ""

    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 744
    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 745
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$400(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->val$context:Landroid/content/Context;

    invoke-static {p1, v3, v1, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$800(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 751
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 752
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, " 2001"

    const-string v1, "exception"

    invoke-direct {p1, v0, v1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$13;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$300(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-static {p0, v0, v1, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$600(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method
