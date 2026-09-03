.class Lcn/nubia/oauthsdk/OAuthManagerProxy$14;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;->handlerCallBacSuccessFuse(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

.field final synthetic val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

.field final synthetic val$oAuthToken:Lcn/nubia/oauthsdk/OAuthResponseFuse;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;->val$oAuthToken:Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 980
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;->val$oAuthCallBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$14;->val$oAuthToken:Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-interface {v0, p0}, Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;->onSuccess(Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    return-void
.end method
