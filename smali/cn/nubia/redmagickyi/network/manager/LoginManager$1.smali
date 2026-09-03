.class Lcn/nubia/redmagickyi/network/manager/LoginManager$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseLoginController;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/LoginManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/LoginManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateLoginToken onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
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

    .line 28
    check-cast p1, Lcn/nubia/redmagickyi/network/model/LoginResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 3

    .line 35
    const-string v0, "LoginManager"

    const-string v1, "updateLoginToken onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/network/manager/LoginManager;->isCanceled:Z

    .line 37
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    iget-boolean v1, v1, Lcn/nubia/redmagickyi/network/manager/LoginManager;->isCanceled:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 40
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    iget-boolean v1, v1, Lcn/nubia/redmagickyi/network/manager/LoginManager;->isCanceled:Z

    const/16 v2, 0x1006

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getCode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 44
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getCode()I

    move-result p1

    invoke-direct {v2, p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    iget-boolean v1, v1, Lcn/nubia/redmagickyi/network/manager/LoginManager;->isCanceled:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getCode()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 49
    sget-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->acct_expired:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 51
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/network/manager/LoginManager;->isCanceled:Z

    if-eq v0, p1, :cond_4

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->cancel()V

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

    .line 28
    check-cast p1, Lcn/nubia/redmagickyi/network/model/LoginResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V

    return-void
.end method
