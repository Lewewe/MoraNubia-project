.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

.field final synthetic val$webUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Ljava/lang/String;Landroid/app/Activity;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 930
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$webUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$callBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 4

    .line 933
    const-string v0, ""

    :try_start_0
    const-string v1, "webUrl"

    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$webUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 934
    invoke-interface {p1, v1}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 935
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 936
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 937
    const-string v2, "web_url"

    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$webUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 939
    invoke-interface {p1, v1, v2}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->appWebSynlogin(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 940
    const-string p1, "syn_url"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 942
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const-string v1, "error"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    :cond_0
    const-string v1, "synUrl"

    invoke-static {v1, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v1, "errerMg"

    invoke-static {v1, v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$WebSynLoginRunable;

    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$17;->val$callBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    invoke-direct {v2, v3, p0, p1, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$WebSynLoginRunable;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 951
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
