.class Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;
.super Lcn/nubia/accountsdk/http/HttpAsyncRequest;
.source "AccountFullClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/fullclient/AccountFullClient;->changeAvatarByAccessToken(Ljava/lang/String;Ljava/io/File;Lcn/nubia/accountsdk/http/NetResponseListener;)V
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

.field final synthetic val$avatarFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Lcn/nubia/accountsdk/http/NetResponseListener;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1705
    iput-object p1, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;->this$0:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;->val$accessToken:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;->val$avatarFile:Ljava/io/File;

    invoke-direct {p0, p2}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;-><init>(Lcn/nubia/accountsdk/http/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;
    .locals 1

    .line 1708
    iget-object v0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;->val$accessToken:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;->val$avatarFile:Ljava/io/File;

    invoke-static {v0, p0}, Lcn/nubia/accountsdk/http/util/HttpApis;->updateUserAvatar(Ljava/lang/String;Ljava/io/File;)Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 1705
    invoke-virtual {p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient$52;->processRequest()Lcn/nubia/accountsdk/http/model/CommonResponse;

    move-result-object p0

    return-object p0
.end method
