.class Lcn/nubia/oauthsdk/api/NetApis$5;
.super Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;
.source "NetApis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/api/NetApis;->loginBindSignIn(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask<",
        "Lcn/nubia/accountsdk/http/model/ValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/api/NetApis;

.field final synthetic val$paramMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetApis$5;->this$0:Lcn/nubia/oauthsdk/api/NetApis;

    iput-object p3, p0, Lcn/nubia/oauthsdk/api/NetApis$5;->val$paramMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;
    .locals 1

    .line 133
    :try_start_0
    const-string v0, "/oauth2/bindsignin"

    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetApis$5;->val$paramMap:Ljava/util/Map;

    invoke-static {v0, p0}, Lcn/nubia/oauthsdk/api/HttpPostGet;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 137
    :goto_0
    invoke-static {p0}, Lcn/nubia/accountsdk/http/model/ValueResponse;->parse(Ljava/lang/String;)Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/api/NetApis$5;->processRequest()Lcn/nubia/accountsdk/http/model/ValueResponse;

    move-result-object p0

    return-object p0
.end method
