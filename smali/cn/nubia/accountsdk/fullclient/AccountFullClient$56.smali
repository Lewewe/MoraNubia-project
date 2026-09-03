.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;
.super Ljava/lang/Object;
.source "AccountFullClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchSigninSmsCodeFuse(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field final synthetic val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 2

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchSigninSmsCodeFuse checkAccountChannel result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1796
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1798
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->val$phoneNumber:Ljava/lang/String;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$1;

    invoke-direct {v1, p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$1;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchSigninSmsCodeZte(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    goto :goto_0

    .line 1808
    :cond_0
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->val$phoneNumber:Ljava/lang/String;

    new-instance v1, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$2;

    invoke-direct {v1, p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$2;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchSigninSmsCode(Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    goto :goto_0

    .line 1819
    :cond_1
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    new-instance v0, Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1791
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
