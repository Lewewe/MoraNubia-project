.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/api/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/oauthsdk/api/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/ValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOAuthInfoBind loginBindSignIn result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 235
    const-string v1, "code"

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance p1, Lcn/nubia/oauthsdk/OAuthToken;

    invoke-direct {p1, v0}, Lcn/nubia/oauthsdk/OAuthToken;-><init>(Ljava/util/Map;)V

    .line 237
    new-instance v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthResponseFuse;-><init>()V

    .line 238
    iget-object v1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iput-object v1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    .line 239
    iput-object p1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    .line 240
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;

    iget-object p1, p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Lcn/nubia/oauthsdk/OAuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;

    iget-object p1, p1, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$100(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 230
    check-cast p1, Lcn/nubia/accountsdk/http/model/ValueResponse;

    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$4$1;->onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V

    return-void
.end method
