.class Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseEmailBatchSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBatchSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)V

    return-void
.end method


# virtual methods
.method protected getMaxRetryTime()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->access$400(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getMaxRetryTime()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->access$400(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 5

    .line 44
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

    .line 45
    new-instance v1, Lcn/nubia/redmagickyi/network/bean/EmailListBean;

    iget-object v2, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->access$100(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    invoke-static {v3}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->access$200(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/network/bean/EmailListBean;-><init>(ILjava/util/List;)V

    .line 46
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/bean/EmailListBean;->listToString()Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/email/batch_report_user_operate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v3, "time"

    .line 48
    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    .line 49
    invoke-static {v2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->access$100(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v2, "email_id_list"

    .line 50
    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$StatusBatchSyncTask;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    .line 51
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->access$300(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "token_id"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method
