.class Lcn/nubia/redmagickyi/network/NetworkUtils$3;
.super Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/NetworkUtils;->fetchEmail(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;Ljava/lang/String;I)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;

.field final synthetic val$emailId:I


# direct methods
.method constructor <init>(ILcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;)V
    .locals 0

    .line 201
    iput p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$emailId:I

    iput-object p2, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 244
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

    .line 233
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 234
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "onSuccessInMainThread: batch error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$emailId:I

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;->emailFetchCallback(IILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;)V
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

    .line 201
    check-cast p1, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->onSuccess(Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;)V
    .locals 12

    .line 204
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->onSuccessInMainThread(Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccessInMainThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->getData()Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getId()I

    move-result v1

    .line 209
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy\u5e74MM\u6708dd\u65e5 HH\u65f6mm\u5206"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getPublish_time()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getAttachment_file_md5()Ljava/lang/String;

    move-result-object v8

    .line 215
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getAttachment_url()Ljava/lang/String;

    move-result-object v9

    .line 216
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse$Data;->getAttachment_file_size()J

    move-result-wide v10

    .line 219
    new-instance p1, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    const/4 v6, 0x1

    const-string v7, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcn/nubia/redmagickyi/network/bean/EmailBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 221
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    iget v1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$emailId:I

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/database/EmailManager;->updateEmail(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;

    const/4 v1, 0x0

    iget p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$emailId:I

    invoke-interface {v0, v1, p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;->emailFetchCallback(IILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$callback:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;

    iget p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->val$emailId:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v1, p0, v0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;->emailFetchCallback(IILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    :goto_0
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

    .line 201
    check-cast p1, Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->onSuccessInMainThread(Lcn/nubia/redmagickyi/network/model/EmailFetchResponse;)V

    return-void
.end method
