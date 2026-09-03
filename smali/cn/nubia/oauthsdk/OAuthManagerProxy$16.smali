.class Lcn/nubia/oauthsdk/OAuthManagerProxy$16;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBack(Lcn/nubia/oauthsdk/response/OAuthCallBack;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$error:Lcn/nubia/oauthsdk/OAuthError;

.field final synthetic val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

.field final synthetic val$oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/OAuthToken;Lcn/nubia/oauthsdk/OAuthError;Lcn/nubia/oauthsdk/response/OAuthCallBack;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    iput-object p4, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSsoauthCodeNubiaFuce handlerCallBack oAuthToken:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSsoauthCodeNubiaFuce handlerCallBack error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    if-eqz v0, :cond_0

    .line 1004
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    if-eqz v0, :cond_1

    .line 1008
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$16;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthCallBack;

    invoke-interface {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    :cond_1
    return-void
.end method
