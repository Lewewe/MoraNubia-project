.class Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseAchievementReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/achievement/network/model/AchievementReportResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field private bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

.field private loginToken:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;-><init>(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;)V

    return-void
.end method


# virtual methods
.method protected getMaxRetryTime()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->access$100(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->getMaxRetryTime()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;->access$100(Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 6

    .line 39
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

    .line 40
    new-instance v2, Lcn/nubia/redmagickyi/network/okhttp/Url;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/achievement/hide_rule"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    const-string v3, "time"

    .line 41
    invoke-virtual {v2, v3, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    .line 42
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "task_id"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/network/okhttp/Url;->addPostParams(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object v0

    const-string v1, "token_id"

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->loginToken:Ljava/lang/String;

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

.method public setBean(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementLocaleBean$Item;

    return-object p0
.end method

.method public setLoginToken(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReportController$Task;->loginToken:Ljava/lang/String;

    return-object p0
.end method
