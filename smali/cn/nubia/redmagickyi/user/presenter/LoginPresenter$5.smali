.class Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;
.super Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;
.source "LoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->GetAccessTokenByCode(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;Landroid/content/Context;)V
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

    .line 176
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/network/BaseGetTokenController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$1300(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$1400(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/LoginView;->onNetworkConnectFailed()V

    :cond_0
    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/user/model/HttpRespond;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$1000(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/LoginView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/LoginView;->hideLoadingView()V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "login by code accept\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/model/HttpRespond;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/model/HttpRespond;->getCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/model/HttpRespond;->getData()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/model/HttpRespond;->getData()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->val$c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveAccountInfo(Landroid/content/Context;)V

    .line 188
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/user/account/Account;->updateAccountInfo(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->val$c:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getToken_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$1200(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/LoginView;

    const-string p1, ""

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/user/view/LoginView;->LoginSuccess(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 182
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->this$0:Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;->access$1100(Lcn/nubia/redmagickyi/user/presenter/LoginPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/LoginView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->user_login_fail:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/LoginView;->onFailture(Ljava/lang/String;)V

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

    .line 176
    check-cast p1, Lcn/nubia/redmagickyi/user/model/HttpRespond;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/LoginPresenter$5;->onSuccessInMainThread(Lcn/nubia/redmagickyi/user/model/HttpRespond;)V

    return-void
.end method
