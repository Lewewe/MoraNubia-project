.class Lcn/nubia/oauthsdk/OAuthManagerProxy$7;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->ssOAuthZteUidWhenTokenValid(Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V
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

    .line 427
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 2

    .line 430
    const-string p1, "ssOAuthUserInfo  requestOAuth processRequest:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    .line 433
    :try_start_0
    invoke-static {p1}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 434
    const-string v0, "ssOAuthUserInfo startApkLogin:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$7;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$400(Lcn/nubia/oauthsdk/OAuthManagerProxy;Landroid/content/Context;Lcn/nubia/oauthsdk/response/OAuthResponse;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 437
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
