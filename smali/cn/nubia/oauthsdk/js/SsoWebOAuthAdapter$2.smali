.class Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;
.super Ljava/lang/Object;
.source "SsoWebOAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->webViewLoadJsMethod(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    iput-object p2, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;->this$0:Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    iget-object v0, v0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    iget-object p0, p0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter$2;->val$s:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/nubia/oauthsdk/js/IJsProxy;->webViewLoadJsMethod(Ljava/lang/String;)V

    return-void
.end method
