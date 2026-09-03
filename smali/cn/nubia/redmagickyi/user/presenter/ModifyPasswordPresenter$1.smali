.class Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;
.super Ljava/lang/Object;
.source "ModifyPasswordPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->changePassWord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/accountsdk/http/NetResponseListener<",
        "Lcn/nubia/accountsdk/http/model/CommonResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

.field final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;Landroid/app/Activity;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->val$c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;->hideLoadingView()V

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->val$c:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->update_info_fail:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;->onFailture(Ljava/lang/String;)V

    .line 33
    const-string p0, "ModifyPasswordPresenter"

    const-string p1, "changeUserAvatar return null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 37
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/account/Account;->updateAccountInfo(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V

    .line 38
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->val$c:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/account/Account;->ClearAccountInfo(Landroid/content/Context;)V

    .line 39
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->val$c:Landroid/app/Activity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->val$c:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->change_password_success:I

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;->UpdatePasSuccess()V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/16 v2, 0x836

    if-ne v0, v2, :cond_2

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;->access$300(Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/ModifyPasswordView;->onTokenInvalidate()V

    goto :goto_0

    .line 45
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->val$c:Landroid/app/Activity;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
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
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPasswordPresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
