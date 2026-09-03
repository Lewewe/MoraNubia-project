.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/controller/BaseDynamicListLoadController;
.source "BaseDynamicListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->getLoadController()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/controller/BaseDynamicListLoadController;-><init>()V

    return-void
.end method

.method private preloadThumbnail(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;",
            ">;)V"
        }
    .end annotation

    .line 73
    const-string v0, "begin preload thumbnail"

    const-string v1, "DynamicListLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 75
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;

    invoke-direct {v6, p0, p1, v3, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;Ljava/util/List;ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 108
    :goto_1
    const-string p0, "end preload thumbnail"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)Z

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

    const-string v1, "DynamicListLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)Z

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
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", category = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->getRequestCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DynamicListLoadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)Z

    move-result v0

    .line 38
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 39
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 41
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 43
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->preloadThumbnail(Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->updateWallPaperList(Ljava/util/List;)V

    .line 45
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 50
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_4

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager;->cancel()V

    :cond_4
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

    .line 33
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
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

    .line 33
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    return-void
.end method
