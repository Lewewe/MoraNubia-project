.class Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;
.super Ljava/lang/Object;
.source "ZteAccountClient.java"

# interfaces
.implements Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

.field final synthetic val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    iput-object p2, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 88
    iget-object v0, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "zte GetZteAccountInfoAsyncRequest onComplete zteSystemAccountInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mZteToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    iget-object v0, v0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mZteToken:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v2, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 95
    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$000(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    iget-object v2, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 142
    invoke-static {v2}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$000(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v4, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    .line 143
    invoke-static {v2}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$100(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v6, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->nickname:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v7, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->mobile:Ljava/lang/String;

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v8, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->email:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    const-string v9, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v2, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->icon:Landroid/graphics/Bitmap;

    const-string v3, "key_nubia_account_head_image"

    invoke-virtual {v0, v3, v2}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    iget-object v2, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object v2, v2, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->mZteToken:Ljava/lang/String;

    .line 151
    iput-object v0, p1, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    .line 152
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V

    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->this$0:Lcn/nubia/accountsdk/fullclient/ZteAccountClient;

    invoke-static {v0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient;->access$200(Lcn/nubia/accountsdk/fullclient/ZteAccountClient;)Lcn/nubia/accountsdk/http/HttpRequestHandler;

    move-result-object v0

    new-instance v1, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;

    new-instance v2, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$1;-><init>(Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V

    invoke-direct {v1, p0, v2, p1}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;-><init>(Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;Lcn/nubia/accountsdk/http/NetResponseListener;Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V

    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/http/HttpRequestHandler;->sendRequest(Lcn/nubia/accountsdk/http/HttpAsyncRequest;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 138
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    const/4 p1, -0x1

    invoke-static {p1}, Lcn/nubia/accountsdk/http/util/NetErrorCode;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onException(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 89
    :cond_4
    :goto_2
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onComplete(Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;->val$listener:Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;

    invoke-interface {p0, p1, p2}, Lcn/nubia/accountsdk/fullclient/GetAccountInfoFuseListener;->onException(ILjava/lang/String;)V

    return-void
.end method
