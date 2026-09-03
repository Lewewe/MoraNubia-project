.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->oauthSocialSignin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/accountsdk/http/HttpAsyncRequest<",
        "Lcn/nubia/accountsdk/http/model/ValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field final synthetic val$scope:Ljava/lang/String;

.field final synthetic val$socialAccessToken:Ljava/lang/String;

.field final synthetic val$socialAccountType:I

.field final synthetic val$socialOpenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1896
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$socialAccessToken:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$socialOpenId:Ljava/lang/String;

    iput p5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$socialAccountType:I

    iput-object p6, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$scope:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 3

    .line 1899
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$socialAccessToken:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$socialOpenId:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$socialAccountType:I

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->val$scope:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->oauthSocialSignin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 1896
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$59;->processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method
