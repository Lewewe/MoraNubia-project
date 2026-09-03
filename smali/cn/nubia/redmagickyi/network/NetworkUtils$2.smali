.class Lcn/nubia/redmagickyi/network/NetworkUtils$2;
.super Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/NetworkUtils;->emailSyncStatus(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/util/List;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;

    iput p2, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$status:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 195
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 177
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "onSuccessInMainThread: batch error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;->statusSyncCallback(I)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;)V
    .locals 3

    .line 184
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    iget v0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$status:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$list:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/database/EmailManager;->syncStatus(ILjava/util/List;)V

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;->statusSyncCallback(I)V

    goto :goto_0

    .line 189
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;->statusSyncCallback(I)V

    :goto_0
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

    .line 167
    check-cast p1, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->onSuccess(Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->onSuccessInMainThread(Ljava/lang/Object;)V

    .line 171
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccessInMainThread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 167
    check-cast p1, Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->onSuccessInMainThread(Lcn/nubia/redmagickyi/network/model/EmailBatchSyncResponse;)V

    return-void
.end method
