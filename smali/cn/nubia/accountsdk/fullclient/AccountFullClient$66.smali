.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchSmsCodeByImg(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/accountsdk/http/HttpAsyncRequest<",
        "Lcn/nubia/accountsdk/http/model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$verifyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2179
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->val$phone:Ljava/lang/String;

    iput p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->val$type:I

    iput-object p5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->val$verifyCode:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 2

    .line 2182
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->val$phone:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->val$type:I

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->val$verifyCode:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->fetchSmsCodeByImg(Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 2179
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$66;->processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method
