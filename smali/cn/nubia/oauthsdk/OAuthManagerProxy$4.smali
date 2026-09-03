.class Lcn/nubia/oauthsdk/OAuthManagerProxy$4;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoBind getZteInfoNotBind oAuthResponseFuse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoBind getZteInfoNotBind onSuccess oAuthResponseFuse.zteSystemAccountInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 241
    iget-object p1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 243
    const-string/jumbo v1, "zapp_id"

    sget-object v2, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "social_access_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOAuthInfoBind loginBindSignIn mZteAppid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOAuthInfoBind loginBindSignIn zteToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "client_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object p1

    const-string v1, "scope"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-static {p1}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$200(Lcn/nubia/oauthsdk/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object p1

    new-instance v1, Lcn/nubia/oauthsdk/OAuthManagerProxy$4$1;

    invoke-direct {v1, p0}, Lcn/nubia/oauthsdk/OAuthManagerProxy$4$1;-><init>(Lcn/nubia/oauthsdk/OAuthManagerProxy$4;)V

    invoke-virtual {p1, v1, v0}, Lcn/nubia/oauthsdk/api/NetApis;->loginBindSignIn(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    return-void

    .line 237
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcn/nubia/oauthsdk/OAuthManagerProxy;->access$000(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method
