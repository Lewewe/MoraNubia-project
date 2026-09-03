.class Lcn/nubia/oauthsdk/OAuthManagerProxy$17;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

.field final synthetic val$webUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Ljava/lang/String;Landroid/app/Activity;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$webUrl:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$callBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 4

    .line 1067
    const-string v0, ""

    :try_start_0
    const-string/jumbo v1, "webUrl"

    iget-object v2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$webUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1068
    invoke-interface {p1, v1}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 1069
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 1070
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1071
    const-string/jumbo v2, "web_url"

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$webUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1073
    invoke-interface {p1, v1, v2}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->appWebSynlogin(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1075
    const-string p1, "syn_url"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1077
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    const-string v1, "error"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    :cond_0
    const-string v1, "synUrl"

    invoke-static {v1, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v1, "errerMg"

    invoke-static {v1, v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$17;->val$callBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    invoke-direct {v2, v3, p0, p1, v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
