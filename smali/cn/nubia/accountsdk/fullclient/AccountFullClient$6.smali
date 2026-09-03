.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;
.super Ljava/lang/Object;
.source "AccountFullClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->loginOrCheckAccountFuse(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
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

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$listener:Lcn/nubia/accountsdk/http/NetResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginOrCheckAccountFuse checkAccountChannel result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginOrCheckAccountFuse checkAccountChannel channel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 288
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$userName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$password:Ljava/lang/String;

    new-instance v2, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;

    invoke-direct {v2, p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$1;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->loginZteByPswd(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$userName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->val$password:Ljava/lang/String;

    new-instance v2, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$2;

    invoke-direct {v2, p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6$2;-><init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->loginOrCheckAccount(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$6;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
