.class Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "ZteAccountClient.java"


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
        "Lcn/nubia/accountsdk/http/HttpAsyncRequest<",
        "Lcn/nubia/accountsdk/http/model/ValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

.field final synthetic val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;Lcn/nubia/accountsdk/http/NetResponseListener;Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;->this$1:Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 0

    .line 134
    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;->val$systemAccountInfoFuse:Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;->zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;->token:Ljava/lang/String;

    invoke-static {p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->loginBindProfile(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/ZteAccountClient$1$2;->processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method
