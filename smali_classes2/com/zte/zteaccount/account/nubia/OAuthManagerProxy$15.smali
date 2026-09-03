.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->handlerCallBacErrorFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

.field final synthetic val$error:Lcn/nubia/oauthsdk/OAuthError;

.field final synthetic val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 841
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    iput-object p3, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$15;->val$error:Lcn/nubia/oauthsdk/OAuthError;

    invoke-interface {v0, p0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onError(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method
