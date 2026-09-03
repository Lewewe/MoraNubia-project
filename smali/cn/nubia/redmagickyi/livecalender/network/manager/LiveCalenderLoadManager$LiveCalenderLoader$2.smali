.class Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;
.super Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;
.source "LiveCalenderLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->loadAll(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$queryBeginTime:Ljava/util/Date;

.field final synthetic val$queryEndTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->val$nowDate:Ljava/util/Date;

    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->val$queryBeginTime:Ljava/util/Date;

    iput-object p4, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->val$queryEndTime:Ljava/util/Date;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAll onError, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2300(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

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

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2100(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
    .locals 8

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAll onSuccess, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1300(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

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
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1500(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_7

    .line 179
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->val$nowDate:Ljava/util/Date;

    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->val$queryBeginTime:Ljava/util/Date;

    iget-object v6, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->val$queryEndTime:Ljava/util/Date;

    invoke-virtual {v3, p1, v4, v5, v6}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->parseLiveCalendersResponse(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1602(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    .line 181
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getLiveActivities()Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_6

    .line 184
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 189
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 191
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 193
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v4, v4, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v4}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "begin download iconUrl and backgroundUrl  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "_gray"

    if-nez v4, :cond_4

    .line 195
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {v4, v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1800(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImagePath(Ljava/lang/String;)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImageGrayPath(Ljava/lang/String;)V

    .line 198
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 199
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1800(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImagePath(Ljava/lang/String;)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImageGrayPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1900(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)V

    goto :goto_3

    .line 185
    :cond_6
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-static {v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$1600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->updateLiveActivities(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)V

    .line 187
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    goto :goto_3

    .line 205
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2000(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1000(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 206
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2100(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 208
    :cond_8
    :goto_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$2200(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_9

    .line 210
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->cancel()V

    :cond_9
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

    .line 172
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
    .locals 0

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

    .line 172
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$2;->onSuccessInMainThread(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    return-void
.end method
