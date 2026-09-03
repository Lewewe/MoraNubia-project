.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1$1;
.super Ljava/lang/Object;
.source "AccountFullClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->onResult(Lcn/nubia/accountsdk/http/model/ZteLoginResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/ValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1$1;->this$2:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V
    .locals 3

    .line 298
    new-instance v0, Lcn/nubia/accountsdk/http/model/SignResponse;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/accountsdk/http/model/SignResponse;-><init>(ILjava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {v0, p1}, Lcn/nubia/accountsdk/http/model/SignResponse;->setUniqueCode(Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1$1;->this$2:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;->this$1:Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-interface {p0, v0}, Lcn/nubia/accountsdk/http/NetResponseListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 295
    check-cast p1, Lcn/nubia/accountsdk/http/model/ValueResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1$1;->onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V

    return-void
.end method
