.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->getZteInfoNotBind(Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Landroid/content/Context;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSystemAccountInfoNotBind onComplete accountInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    move-object v1, v0

    check-cast v1, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSystemAccountInfoNotBind onComplete accountInfo.zteSystemAccountInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 159
    iget-object v1, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    if-nez v1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    move-object v1, v0

    check-cast v1, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;

    invoke-direct {v0}, Lcn/nubia/oauthsdk/OAuthResponseFuse;-><init>()V

    .line 163
    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iput-object p1, v0, Lcn/nubia/oauthsdk/OAuthResponseFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    .line 164
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$000(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthResponseFuse;)V

    :goto_0
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2

    .line 171
    new-instance v0, Lcn/nubia/oauthsdk/OAuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcn/nubia/oauthsdk/OAuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getSystemAccountInfoNotBind onComplete onException:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$2;->val$callBack:Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;

    invoke-static {p1, p0, v0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$100(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Lcn/nubia/oauthsdk/response/OAuthFuseCallBack;Lcn/nubia/oauthsdk/OAuthError;)V

    return-void
.end method
