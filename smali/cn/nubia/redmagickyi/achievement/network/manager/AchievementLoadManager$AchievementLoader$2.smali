.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;
.super Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;
.source "AchievementLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->loadAll(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAll onError, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

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

    .line 193
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 9

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAll onSuccess, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getCode()I

    move-result v3

    invoke-static {v1, v3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_a

    .line 208
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->parseAchievementsResponse(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$1902(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    .line 210
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$1900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$1900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->getAchievements()Ljava/util/Vector;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_9

    .line 213
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 218
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 219
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getBackgroundCompleteUrl()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconUndoneUrl()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementIconCompleteUrl()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "iconUrl is Error"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_2

    .line 226
    :cond_5
    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v6, v6, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v6}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "begin download iconUrl and backgroundUrl  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementTaskId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 228
    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {v6, v3}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$2100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementBackgroundCompletePath(Ljava/lang/String;)V

    .line 230
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 231
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$2100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementIconUndonePath(Ljava/lang/String;)V

    .line 233
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 234
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {v3, v5}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$2100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->setAchievementIconCompletePath(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$2200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)V

    goto :goto_4

    .line 214
    :cond_9
    :goto_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->access$1900(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementOnlineDataManager;->updateAchievements(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)V

    .line 216
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    goto :goto_4

    .line 240
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 241
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 243
    :cond_b
    :goto_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_c

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->cancel()V

    :cond_c
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

    .line 193
    check-cast p1, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$2;->onSuccessInMainThread(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    return-void
.end method
