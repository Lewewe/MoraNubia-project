.class Lcn/nubia/oauthsdk/OAuthManagerProxy$3;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/oauthsdk/response/OAuthCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->getSsoauthCodeNubiaFuce(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
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

    .line 192
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$3;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$3;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSsoauthCodeNubiaFuce onError error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$3;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSsoauthCodeNubiaFuce onSuccess token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthResponseFuse;-><init>()V

    .line 203
    iput-object p1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    .line 204
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$3;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method

.method public onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    .locals 0

    return-void
.end method
