.class Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseSkinExchangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private loginToken:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->this$0:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;-><init>(Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;)V

    return-void
.end method


# virtual methods
.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 6

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/skin/redeem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v3, "time"

    .line 67
    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v2, "token_id"

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->loginToken:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "skin_id"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v1, "cd_key"

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->code:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method

.method public setCode(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->code:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;
    .locals 0

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController$ActivityTask;->loginToken:Ljava/lang/String;

    return-object p0
.end method
