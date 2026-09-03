.class Lcn/nubia/oauthsdk/OAuthManagerProxy$10;
.super Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->ssOAuthZteUid(Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthZteCallBack;Landroid/content/Context;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/aidl/ServiceAsyncRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected processRequest(Lcn/nubia/binder/IBinderService;)V
    .locals 8

    .line 546
    const-string v0, ""

    .line 0
    const-string v1, "ssOAuthZteUid  zuid:"

    const-string v2, "ssOAuthZteUid getSsoauthCodeNubia code:"

    const-string v3, "ssOAuthZteUid getSsoauthCodeNubia userId:"

    const-string v4, "ssOAuthZteUid getSsoauthCodeNubia oauth_access_token:"

    .line 546
    const-string v5, "ssOAuthZteUid  requestOAuth processRequest:"

    invoke-static {v5}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 547
    iget-object v5, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v5}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v5

    .line 548
    iget-object v6, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v6}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$300(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/response/OAuthResponse;

    .line 549
    invoke-static {v5}, Lcn/nubia/oauthsdk/utils/BundleUtils;->genInBundleOAuthInfo(Lcn/nubia/oauthsdk/OAuthInfo;)Landroid/os/Bundle;

    move-result-object v5

    .line 550
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    .line 552
    :try_start_0
    invoke-interface {p1, v7}, Lcn/nubia/binder/IBinderService;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 553
    invoke-static {p1}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;

    move-result-object p1

    .line 554
    invoke-interface {p1, v5, v6}, Lcn/nubia/oauthsdk/aidl/IOAuthAccountService;->getCode(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 555
    const-string p1, "oauth_access_token"

    invoke-virtual {v6, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 556
    const-string v5, "userId"

    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const-string p1, "ssOAuthZteUid token null:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 561
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const-string v0, "-1"

    const-string v1, "nubia account not login"

    invoke-direct {p1, v0, v1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthZteCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 565
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 566
    const-string v3, "access_token"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string p1, "client_id"

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo p1, "zapp_id"

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getZteAppid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string p1, "pkg_name"

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string p1, "scope"

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string p1, "state"

    iget-object v3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {v3}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/api/NetApis;->getZteUid(Ljava/util/Map;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object p1

    if-nez p1, :cond_1

    .line 574
    const-string p1, "ssOAuthZteUid dataResponse null:"

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 575
    new-instance p1, Lcn/nubia/oauthsdk/OAuthError;

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "net error"

    invoke-direct {p1, v0, v1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthZteCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    .line 579
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getCode()I

    move-result v0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xbbe

    .line 581
    const-string v3, "ssOAuthZteUid getSsoauthCodeNubia getMessage:"

    if-ne v0, v2, :cond_2

    .line 582
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 583
    new-instance v1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

    invoke-interface {p0, v1}, Lcn/nubia/oauthsdk/response/OAuthZteCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 587
    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getResponse()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 593
    :cond_3
    const-string/jumbo v0, "zuid"

    invoke-virtual {p1, v0}, Lcn/nubia/oauthsdk/api/NetResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 595
    new-instance v0, Lcn/nubia/oauthsdk/OAuthZteUidInfo;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthZteUidInfo;-><init>()V

    .line 596
    invoke-virtual {v0, p1}, Lcn/nubia/oauthsdk/OAuthZteUidInfo;->setZuid(Ljava/lang/String;)V

    .line 597
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

    invoke-interface {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthZteCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthZteUidInfo;)V

    goto :goto_1

    .line 588
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 589
    new-instance v1, Lcn/nubia/oauthsdk/OAuthError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/api/NetResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$10;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthZteCallBack;

    invoke-interface {p0, v1}, Lcn/nubia/oauthsdk/response/OAuthZteCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 600
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
