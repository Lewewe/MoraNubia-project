.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->userCertificationWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
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

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$idCard:Ljava/lang/String;

.field final synthetic val$realName:Ljava/lang/String;

.field final synthetic val$tokenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1361
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$tokenId:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$realName:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$idCard:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$appId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 4

    .line 1364
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$tokenId:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$realName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$idCard:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->val$appId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->userCertification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 1361
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$44;->processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method
