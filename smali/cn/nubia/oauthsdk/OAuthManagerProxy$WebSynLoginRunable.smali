.class Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/oauthsdk/OAuthManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebSynLoginRunable"
.end annotation


# instance fields
.field private mCallBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

.field private mErrerMsg:Ljava/lang/String;

.field private mSynUrl:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;


# direct methods
.method public constructor <init>(Lcn/nubia/oauthsdk/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->this$0:Lcn/nubia/oauthsdk/OAuthManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    iput-object p3, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mSynUrl:Ljava/lang/String;

    .line 1098
    iput-object p4, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mErrerMsg:Ljava/lang/String;

    .line 1099
    iput-object p2, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mCallBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mSynUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mCallBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mErrerMsg:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mCallBack:Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;

    iget-object p0, p0, Lcn/nubia/oauthsdk/OAuthManagerProxy$WebSynLoginRunable;->mSynUrl:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/nubia/oauthsdk/response/WebSynLoginCallBack;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
