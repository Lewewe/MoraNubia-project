.class Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;
.super Ljava/lang/Object;
.source "ModifyPhoneNumberPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->changePhoneNum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

.field final synthetic val$c:Landroid/app/Activity;

.field final synthetic val$mPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$c:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;->hideLoadingView()V

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$c:Landroid/app/Activity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->update_info_fail:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;->onFailture(Ljava/lang/String;)V

    .line 37
    const-string p0, "ModifyPasswordPresenter"

    const-string p1, "modifyMobile return null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 41
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$c:Landroid/app/Activity;

    const-string v0, "def_show_phone"

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$mPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/account/Account;->setMobile(Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/account/Account;->getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$c:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->saveAccountInfo(Landroid/content/Context;)V

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$c:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->chagne_uesr_phone_success:I

    invoke-static {p0, p1, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    const/16 v2, 0x836

    if-ne v0, v2, :cond_2

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/ModifyPhoneNumberView;->onTokenInvalidate()V

    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->val$c:Landroid/app/Activity;

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

    .line 30
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/ModifyPhoneNumberPresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
