.class Lcn/nubia/oauthsdk/OAuthManagerProxy$1;
.super Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;
.source "OAuthManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->ssOAuthCodeFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/app/Activity;)V
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

    .line 130
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$1;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 1

    .line 138
    new-instance v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthResponseFuse;-><init>()V

    .line 139
    iput-object p1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->oAuthToken:Lcn/nubia/oauthsdk/OAuthToken;

    .line 140
    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$1;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-interface {p0, v0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method
