.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;
.super Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;
.source "AchievementGetPointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->getPoint(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

.field final synthetic val$loginToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->val$loginToken:Ljava/lang/String;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get achievement point onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AchievementReceiveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;)V
    .locals 0

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

    .line 78
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;)V
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get achievement point onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AchievementReceiveManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v0

    .line 84
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;->getCode()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->access$500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;->getData()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;->getData()Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;->getUser_achievement_point()I

    move-result p1

    .line 90
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->val$loginToken:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Ljava/lang/String;I)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 94
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 95
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 97
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Z

    move-result p1

    if-eq v0, p1, :cond_5

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->cancel()V

    :cond_5
    return-void
.end method

.method protected bridge synthetic onSuccessInMainThread(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 78
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementGetPointResponse;)V

    return-void
.end method
