.class Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/NetworkUtils$5;->onSuccess(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/NetworkUtils$5;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/NetworkUtils$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;->this$0:Lcn/nubia/redmagickyi/network/NetworkUtils$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 348
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;->this$0:Lcn/nubia/redmagickyi/network/NetworkUtils$5;

    iget-object p1, p1, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;

    if-eqz p1, :cond_0

    .line 349
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;->this$0:Lcn/nubia/redmagickyi/network/NetworkUtils$5;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 3

    .line 340
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: updateLoginToken getToken_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;->this$0:Lcn/nubia/redmagickyi/network/NetworkUtils$5;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->queryFriendliness(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    :cond_0
    return-void
.end method
