.class Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseSkinLoadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field private loginToken:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;->this$0:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;-><init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;)V

    return-void
.end method


# virtual methods
.method protected getMaxRetryTime()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;->this$0:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;->access$100(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getMaxRetryTime()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;->this$0:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;->access$100(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 5

    .line 36
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

    .line 39
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/skin/list_all"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v2, "time"

    .line 40
    invoke-virtual {v1, v2, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v1, "page_no"

    .line 41
    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v1, "page_size"

    .line 42
    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v1, "token_id"

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;->loginToken:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method

.method public setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController$Task;->loginToken:Ljava/lang/String;

    return-object p0
.end method
