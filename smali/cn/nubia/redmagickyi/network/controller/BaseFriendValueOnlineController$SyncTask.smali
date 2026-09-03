.class Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseFriendValueOnlineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)V

    return-void
.end method


# virtual methods
.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user/friendliness_first_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v2, "time"

    .line 59
    invoke-virtual {v1, v2, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;

    .line 60
    invoke-static {v1}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->access$400(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "friendliness_value"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController$SyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;

    .line 61
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;->access$200(Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "token_id"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method
