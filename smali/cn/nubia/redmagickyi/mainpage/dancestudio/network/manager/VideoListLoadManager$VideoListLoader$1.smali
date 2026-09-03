.class Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;
.super Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;
.source "VideoListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->loadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$1200(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Z

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

    const-string v1, "VideoListLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;)V
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

    .line 96
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->onSuccess(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;)V
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Z

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
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pageNo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoListLoadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Z

    move-result v0

    .line 107
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->parseVideoListResponse(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 110
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->updateVideoList(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean;)V

    .line 113
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$900(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_4

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->cancel()V

    :cond_4
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

    .line 96
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;)V

    return-void
.end method
