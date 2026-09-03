.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/controller/BaseInspiredListLoadController;
.source "BaseInspiredListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->getLoadController()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/controller/BaseWallPaperListLoadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/controller/BaseInspiredListLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)Z

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

    const-string v1, "InspiredListLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
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

    .line 26
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAll onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)Z

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

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->getRequestCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InspiredListLoadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)Z

    move-result v0

    .line 36
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 37
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 39
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->getOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;->updateWallPaperList(Ljava/util/List;)V

    .line 42
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    goto :goto_1

    .line 44
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 47
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_4

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager;->cancel()V

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

    .line 26
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/BaseInspiredListLoadManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)V

    return-void
.end method
