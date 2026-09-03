.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;
.super Ljava/lang/Object;
.source "AccountFullClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/ZteLoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/ZteLoginResponse;)V
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginOrCheckAccountFuse loginZteByPswd result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1$1;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->loginBindSignIn(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    goto :goto_0

    .line 307
    :cond_0
    new-instance p1, Lcn/nubia/accountsdk/http/model/SignResponse;

    const/4 v0, -0x2

    .line 308
    invoke-static {v0}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/accountsdk/http/model/SignResponse;-><init>(ILjava/lang/String;)V

    .line 309
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Lcn/nubia/accountsdk/http/model/SignResponse;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/accountsdk/http/model/SignResponse;-><init>(ILjava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 288
    check-cast p1, Lcn/nubia/accountsdk/http/model/ZteLoginResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->onResult(Lcn/nubia/accountsdk/http/model/ZteLoginResponse;)V

    return-void
.end method
