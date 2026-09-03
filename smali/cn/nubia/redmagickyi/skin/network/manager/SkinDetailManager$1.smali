.class Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;
.super Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;
.source "SkinDetailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinDetailController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadDetail onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$800(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z

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

    const-string v1, "SkinDetailManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;)V
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

    .line 44
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;)V
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadDetail onSuccess, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$000(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z

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
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SkinDetailManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$100(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z

    move-result v0

    .line 54
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$200(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;->getData()Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->parseSkinResponse(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    goto :goto_1

    .line 59
    :cond_1
    const-string p1, "empty detail"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 62
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$600(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 63
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 65
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->access$700(Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Z

    move-result p1

    if-eq v0, p1, :cond_4

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->cancel()V

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

    .line 44
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;)V

    return-void
.end method
