.class Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;
.super Ljava/lang/Object;
.source "RegisterPresenter.java"

# interfaces
.implements Lcn/nubia/accountsdk/http/NetResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->isAccountExis(Landroid/content/Context;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;Landroid/content/Context;)V
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

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V
    .locals 4

    .line 30
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->access$000(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/RegisterView;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->hideLoadingView()V

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->access$100(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/view/RegisterView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->val$c:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->regist_fail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->onFailture(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROE CODE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/accountsdk/http/model/CommonResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is_exist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_exist"

    invoke-virtual {p1, v2}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegisterPresenter"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p1, v2}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->access$200(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/view/RegisterView;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->onAccountNotExist()V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->access$300(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/view/RegisterView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->val$c:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->user_name_register_already:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->onFailture(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->this$0:Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;->access$400(Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter;)Lcn/nubia/redmagickyi/user/base/BaseView;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/user/view/RegisterView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->val$c:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->regist_fail_title:I

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/user/account/AccountHelper;->getErrorMsgId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcn/nubia/redmagickyi/user/view/RegisterView;->onFailture(Ljava/lang/String;)V

    .line 45
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "UNI_CODE:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "unique_code"

    invoke-virtual {p1, v0}, Lcn/nubia/accountsdk/http/model/CommonResponse;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
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

    .line 27
    check-cast p1, Lcn/nubia/accountsdk/http/model/CommonResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/presenter/RegisterPresenter$1;->onResult(Lcn/nubia/accountsdk/http/model/CommonResponse;)V

    return-void
.end method
