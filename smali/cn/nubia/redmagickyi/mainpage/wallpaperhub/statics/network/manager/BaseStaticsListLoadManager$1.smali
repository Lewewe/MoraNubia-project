.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/controller/BaseStaticsListLoadController;
.source "BaseStaticsListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->getLoadController()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/controller/BaseStaticsListLoadController;-><init>()V

    return-void
.end method

.method private preloadThumbnail(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;)V"
        }
    .end annotation

    .line 71
    const-string v0, "begin preload thumbnail"

    const-string v1, "StaticsListLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 76
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1$1;

    invoke-direct {v6, p0, p1, v3, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;Ljava/util/List;ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
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

    .line 104
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 106
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

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z

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

    const-string v1, "StaticsListLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z

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

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->getRequestCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StaticsListLoadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z

    move-result v0

    .line 37
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 38
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 40
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->preloadThumbnail(Ljava/util/List;)V

    .line 43
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->updateWallPaperList(Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    goto :goto_1

    .line 46
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 47
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 49
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_4

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager;->cancel()V

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

    .line 32
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

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

    .line 32
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/manager/BaseStaticsListLoadManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    return-void
.end method
