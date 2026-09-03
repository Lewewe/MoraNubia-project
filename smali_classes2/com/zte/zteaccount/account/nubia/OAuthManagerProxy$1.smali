.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;
.super Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
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

    .line 130
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 1

    .line 136
    new-instance v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthResponseFuse;-><init>()V

    .line 137
    iput-object p1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    .line 138
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method
