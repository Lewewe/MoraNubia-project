.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->bindThirdAccontWhenLoggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/nubia/accountsdk/http/NetResponseListener;)V
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

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$figure:Ljava/lang/String;

.field final synthetic val$thirdNickName:Ljava/lang/String;

.field final synthetic val$thirdType:I

.field final synthetic val$tokenId:Ljava/lang/String;

.field final synthetic val$unionId:Ljava/lang/String;

.field final synthetic val$wxOpenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$thirdNickName:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$figure:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$unionId:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$accessToken:Ljava/lang/String;

    iput-object p7, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$wxOpenId:Ljava/lang/String;

    iput-object p8, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$tokenId:Ljava/lang/String;

    iput p9, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$thirdType:I

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 7

    .line 1182
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$thirdNickName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$figure:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$unionId:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$accessToken:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$wxOpenId:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$tokenId:Ljava/lang/String;

    iget v6, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->val$thirdType:I

    invoke-static/range {v0 .. v6}, Lcn/nubia/accountsdk/http/util/HttpApis;->bindThirdAccontWhenLoggedIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 1179
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$36;->processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method
