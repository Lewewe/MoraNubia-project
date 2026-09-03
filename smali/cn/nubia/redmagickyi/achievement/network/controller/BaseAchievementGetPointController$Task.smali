.class Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseAchievementGetPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field private loginToken:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;-><init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;)V

    return-void
.end method


# virtual methods
.method protected getMaxRetryTime()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;->access$100(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getMaxRetryTime()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;->access$100(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 5

    .line 37
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

    .line 38
    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/achievement/get_point"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v2, "time"

    .line 39
    invoke-virtual {v1, v2, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v1, "token_id"

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;->loginToken:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->getMethodPostParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->post()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method

.method public setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController$Task;->loginToken:Ljava/lang/String;

    return-object p0
.end method
