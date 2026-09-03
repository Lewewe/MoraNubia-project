.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$2;
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
        "Lcn/nubia/accountsdk/http/model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$2;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 321
    new-instance v0, Lcn/nubia/accountsdk/http/model/SignResponse;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/accountsdk/http/model/SignResponse;-><init>(ILjava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string v1, "unique_code"

    invoke-virtual {p1, v1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 324
    invoke-virtual {v0, p1}, Lcn/nubia/accountsdk/http/model/SignResponse;->setUniqueCode(Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$2;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$2;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
