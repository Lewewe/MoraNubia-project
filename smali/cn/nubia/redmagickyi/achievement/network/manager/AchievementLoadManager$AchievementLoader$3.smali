.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;
.super Ljava/lang/Object;
.source "AchievementLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->isLoginTokenExpired(I)Z
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

    .line 273
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateLoginToken onError, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$3100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

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

    .line 296
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateLoginToken onSuccess, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2700(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v0

    .line 278
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$2902(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    .line 282
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->load()V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$1200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 287
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->access$3000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 289
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader$3;->this$1:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$AchievementLoader;->cancel()V

    :cond_2
    return-void
.end method
