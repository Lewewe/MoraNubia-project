.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$2;
.super Ljava/lang/Object;
.source "AccountFullClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
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
.field final synthetic this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;)V
    .locals 0

    .line 1808
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$2;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchSigninSmsCodeFuse fetchSigninSmsCode result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 1812
    new-instance v0, Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;-><init>(ILjava/lang/String;)V

    .line 1813
    iput-object p1, v0, Lcn/nubia/accountsdk/http/model/FetchSmsFuseResponse;->commonResponse:Lcn/nubia/accountsdk/http/model/CommonResponse;

    .line 1814
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$2;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1808
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$56$2;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
