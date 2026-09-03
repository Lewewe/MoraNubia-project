.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;
.super Ljava/lang/Object;
.source "AchievementGetPointManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->isLoginTokenExpired(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateLoginToken onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AchievementReceiveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateLoginToken onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AchievementReceiveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1502(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    .line 137
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 142
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->cancel()V

    :cond_2
    return-void
.end method
