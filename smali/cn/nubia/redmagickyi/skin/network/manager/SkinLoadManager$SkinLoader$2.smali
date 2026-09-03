.class Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;
.super Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;
.source "SkinLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->loadSkins(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

.field final synthetic val$totalAchievementPoint:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;I)V
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

    .line 125
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iput p2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->val$totalAchievementPoint:I

    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

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

    const-string v1, "SkinLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V
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

    .line 125
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V
    .locals 6

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$600(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

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
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SkinLoadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$700(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result v0

    .line 136
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object v3, v3, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$800(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_6

    .line 137
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v4

    iget v5, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->val$totalAchievementPoint:I

    invoke-virtual {v4, p1, v5}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->parseSkinsResponse(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$902(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    .line 139
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$900(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$900(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->getSkins()Ljava/util/Vector;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 147
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 148
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    const-string v3, "thumbnailUrl is Error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object v3, v3, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_2

    .line 153
    :cond_3
    const-string v5, "begin download thumbnailUrl"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v5, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$1000(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setThumbnailPath(Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$1100(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)V

    goto :goto_4

    .line 143
    :cond_5
    :goto_3
    const-string p1, "empty list"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$900(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->updateSkins(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;)V

    .line 145
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_4

    .line 159
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1200(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1300(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 160
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 162
    :cond_7
    :goto_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$1400(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_8

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->cancel()V

    :cond_8
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

    .line 125
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$2;->onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V

    return-void
.end method
