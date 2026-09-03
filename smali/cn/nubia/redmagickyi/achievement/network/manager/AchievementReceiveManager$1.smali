.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;
.super Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;
.source "AchievementReceiveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive achievement onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AchievementReceiveManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
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

    .line 32
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 5

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive achievement onSuccess, response = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getCode()I

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

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z

    move-result v0

    .line 38
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getCode()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getCode()I

    move-result v2

    const/16 v3, 0x232b

    if-ne v2, v3, :cond_3

    .line 40
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryAchievement(I)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->queryTotalPoint()I

    move-result v1

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v3

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementPoint()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->updateTotalPoint(I)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setReceiveState(I)V

    .line 45
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 46
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    goto :goto_1

    .line 48
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 49
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 51
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 54
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z

    move-result p1

    if-eq v0, p1, :cond_5

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->cancel()V

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

    .line 32
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    return-void
.end method
