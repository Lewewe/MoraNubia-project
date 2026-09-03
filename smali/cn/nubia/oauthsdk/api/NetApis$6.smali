.class Lcn/nubia/oauthsdk/api/NetApis$6;
.super Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;
.source "NetApis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/api/NetApis;->getUserProfile(Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask<",
        "Lcn/nubia/oauthsdk/api/NetResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/api/NetApis;

.field final synthetic val$paramMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;Ljava/util/Map;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetApis$6;->this$0:Lcn/nubia/oauthsdk/api/NetApis;

    iput-object p3, p0, Lcn/nubia/oauthsdk/api/NetApis$6;->val$paramMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;-><init>(Lcn/nubia/oauthsdk/api/NetApis;Lcn/nubia/oauthsdk/api/NetResponseListener;)V

    return-void
.end method


# virtual methods
.method public processRequest()Lcn/nubia/oauthsdk/api/NetResponse;
    .locals 1

    .line 159
    :try_start_0
    const-string v0, "/user/profile"

    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetApis$6;->val$paramMap:Ljava/util/Map;

    invoke-static {v0, p0}, Lcn/nubia/oauthsdk/api/HttpPostGet;->doGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {p0}, Lcn/nubia/oauthsdk/api/NetResponse;->parse(Ljava/lang/String;)Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic processRequest()Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/api/NetApis$6;->processRequest()Lcn/nubia/oauthsdk/api/NetResponse;

    move-result-object p0

    return-object p0
.end method
