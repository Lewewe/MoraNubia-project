.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->checkAuthCode(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/accountsdk/http/NetResponseListener;)V
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

.field final synthetic val$activeCode:Ljava/lang/String;

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->val$phoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->val$activeCode:Ljava/lang/String;

    iput p5, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->val$type:I

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 2

    .line 608
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->val$phoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->val$activeCode:Ljava/lang/String;

    iget p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->val$type:I

    invoke-static {v0, v1, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->checkAuthCode(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 605
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$20;->processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method
