.class Lcn/nubia/oauthsdk/OAuthManagerProxy$13;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->requestWebssOAuth(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 5

    .line 782
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v1

    .line 784
    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v2

    .line 785
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    .line 787
    :try_start_0
    invoke-interface {p1, v4}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 788
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 789
    invoke-interface {p1, v2, v3}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 790
    const-string p1, "oauth_access_token"

    const-string v2, ""

    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 792
    invoke-static {v0}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 793
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iget-object v2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$400(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V

    return-void

    .line 796
    :cond_0
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->val$context:Landroid/content/Context;

    invoke-static {p1, v3, v1, v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$800(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 798
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, " 2001"

    const-string v1, "exception"

    invoke-direct {p1, v0, v1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$13;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$600(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method
