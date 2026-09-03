.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->fetchImageCode(IILcn/nubia/accountsdk/http/NetResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/accountsdk/http/HttpAsyncRequest<",
        "Lcn/nubia/accountsdk/http/model/ImageCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;II)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;->val$width:I

    iput p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;->val$height:I

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/ImageCodeResponse;
    .locals 1

    .line 548
    iget v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;->val$width:I

    iget p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;->val$height:I

    invoke-static {v0, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->fetchImageCode(II)Lcn/nubia/accountsdk/http/model/ImageCodeResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 545
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$17;->processRequest()Lcn/nubia/accountsdk/http/model/ImageCodeResponse;

    move-result-object p0

    return-object p0
.end method
