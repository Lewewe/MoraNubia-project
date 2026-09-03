.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getOAuthInfoBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

.field final synthetic val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoBind getZteInfoNotBind oAuthResponseFuse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoBind getZteInfoNotBind onSuccess oAuthResponseFuse.zteSystemAccountInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 221
    iget-object p1, p1, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 223
    const-string v1, "zapp_id"

    sget-object v2, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "social_access_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOAuthInfoBind loginBindSignIn mZteAppid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/nubia/accountsdk/common/SDKConfiguration;->mZteAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOAuthInfoBind loginBindSignIn zteToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "client_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getScope()Ljava/lang/String;

    move-result-object p1

    const-string v1, "scope"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$200(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;)Lcn/nubia/oauthsdk/OAuthInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/OAuthInfo;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {}, Lcn/nubia/oauthsdk/api/NetApis;->getInstance()Lcn/nubia/oauthsdk/api/NetApis;

    move-result-object p1

    new-instance v1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;

    invoke-direct {v1, p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;-><init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;)V

    invoke-virtual {p1, v1, v0}, Lcn/nubia/oauthsdk/api/NetApis;->loginBindSignIn(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    :goto_0
    return-void
.end method
