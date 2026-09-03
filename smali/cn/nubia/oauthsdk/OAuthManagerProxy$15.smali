.class Lcn/nubia/oauthsdk/OAuthManagerProxy$15;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$error:Lcn/nubia/oauthsdk/OAuthError;

.field final synthetic val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 991
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$15;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    invoke-interface {v0, p0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method
