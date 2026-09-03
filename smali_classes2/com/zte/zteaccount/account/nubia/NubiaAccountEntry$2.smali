.class Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;
.super Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getOAuthToken(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)V
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

    .line 172
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    invoke-direct {p0}, Lcn/nubia/oauthsdk/response/OAuthTokenCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/oauthsdk/OAuthError;)V
    .locals 2

    .line 175
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oAuthManager onError"

    invoke-static {v1, v0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->onException(Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/oauthsdk/OAuthToken;)V
    .locals 2

    .line 182
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oAuthManager onSuccess"

    invoke-static {v1, v0}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$2;->val$listener:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    invoke-virtual {p0, p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->onComplete(Lcn/nubia/oauthsdk/OAuthToken;)V

    return-void
.end method
