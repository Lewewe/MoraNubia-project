.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->oauthSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
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

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1839
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$code:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$scope:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 3

    .line 1842
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$account:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$password:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$code:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->val$scope:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->oauthSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 1839
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$57;->processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method
