.class Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;
.super Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getOpenId(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

.field final synthetic val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V
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

    .line 371
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 2

    .line 374
    const-string v0, "getOpenId"

    const-string v1, "getOpenId error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    if-eqz p0, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->onException(Lcn/nubia/oauthsdk/OAuthError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    if-eqz p0, :cond_0

    .line 383
    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->onComplete(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 385
    :cond_0
    const-string p0, "getOpenId"

    const-string p1, "success !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V
    .locals 1

    .line 390
    invoke-super {p0, p1}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;->onUserInfo(Lcn/nubia/oauthsdk/UserInfo;)V

    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    invoke-virtual {p1}, Lcn/nubia/oauthsdk/UserInfo;->getOpenid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->openId:Ljava/lang/String;

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$7;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 395
    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->onComplete(Lcn/nubia/oauthsdk/OAuthToken;)V

    .line 397
    :cond_1
    const-string p0, "getOpenId"

    const-string p1, "onUserInfo !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
