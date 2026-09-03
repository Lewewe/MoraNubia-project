.class Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;
.super Ljava/lang/Object;
.source "ZteAccountClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
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
.field final synthetic this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

.field final synthetic val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iput-object p2, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V
    .locals 13

    .line 99
    const-string v0, "token_key"

    const-string v1, "token_id"

    .line 0
    const-string/jumbo v2, "zte GetZteAccountInfoAsyncRequest onComplete zteSystemAccountInfo:"

    .line 99
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 100
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 102
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$002(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$102(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    :cond_1
    new-instance p1, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 112
    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$000(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v5, v0, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->username:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 113
    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$100(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v7, v0, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->nickname:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v8, v0, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->mobile:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v9, v0, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->email:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "key_nubia_account_head_image"

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v1, v1, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mZteToken:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iput-object p1, v0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    .line 122
    iget-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object p1, p1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    invoke-interface {p1, v0}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    const/4 p1, -0x2

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onException(ILjava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/ValueResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Lcn/nubia/accountsdk/http/model/ValueResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;->onResult(Lcn/nubia/accountsdk/http/model/ValueResponse;)V

    return-void
.end method
