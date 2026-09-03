.class Lcn/nubia/redmagickyi/network/NetworkUtils$5;
.super Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/NetworkUtils;->queryFriendliness(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)V
    .locals 0

    .line 319
    iput-object p2, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    const/4 p1, 0x0

    .line 358
    sput-object p1, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    .line 359
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;

    if-eqz p0, :cond_0

    .line 360
    invoke-interface {p0}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;)V
    .locals 4

    .line 322
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryFriendliness onSuccess, code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, ":"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 324
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 325
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0xbc5

    .line 326
    iput v2, v1, Landroid/os/Message;->what:I

    .line 327
    invoke-static {v1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    .line 328
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->val$onQueryCallback:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;

    if-eqz p0, :cond_1

    .line 329
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    move-result-object v1

    invoke-interface {p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;->onSuccess(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;)V

    .line 331
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryFriendliness:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->getFriendValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    :cond_2
    sput-object v2, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 334
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getCode()I

    move-result v1

    const/16 v2, 0xfa3

    if-ne v1, v2, :cond_3

    .line 336
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryFriendliness: invalide token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getData()Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance p1, Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils$5$1;-><init>(Lcn/nubia/redmagickyi/network/NetworkUtils$5;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    :cond_3
    :goto_1
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 319
    check-cast p1, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->onSuccess(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse;)V

    return-void
.end method
